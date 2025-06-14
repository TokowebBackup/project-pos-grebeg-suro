const express = require('express')
const db = require('./config/database')
const moment = require('moment');
const bodyParser = require('body-parser');
const session = require('express-session');
const SequelizeStore = require('connect-session-sequelize')(session.Store);
const fileUpload = require('express-fileupload');
const cookieParser = require('cookie-parser');
const authRoutes = require('./routes/authRoutes')
const barangRoutes = require('./routes/barangRoutes')
const cabangRoutes = require('./routes/cabangRoutes')
const kategoriRoutes = require('./routes/kategoriRoutes')
const transaksiRoutes = require('./routes/transaksiRoutes')
const customerRoutes = require('./routes/customerRoutes')
const userRoutes = require('./routes/userRoutes')
const laporan = require('./routes/laporanRoutes')
const uploadRoutes = require('./routes/uploadRoutes')
const TIMEZONE = "Asia/Jakarta";
const cors = require('cors');
const path = require('path');
const { setupAssociations } = require('./models/associations');


setupAssociations();
const app = express()

const SESS_SECRET = "qwertysaqdunasndjwnqnkndklawkdwk";
const isProduction = process.env.NODE_ENV === 'production';

const store = new SequelizeStore({
    db: db
});

(async () => {
    await db.sync();
})();
// app.use(cors({
//     origin: true,//'http://localhost:3000',
//     methods: ['GET', 'POST', 'PUT', 'DELETE'],
//     allowedHeaders: ['Content-Type', 'Authorization'],
//     credentials: true
// }));

// app.use(cors());

const allowedOrigins = [
    'http://localhost:3000',
    'https://kasir-grebegsuro.mindsparks.id',
    'https://kasir.grebegsuro.id',
];

app.use(cors({
    origin: function (origin, callback) {
        if (!origin || allowedOrigins.includes(origin)) {
            callback(null, true);
        } else {
            callback(new Error('Not allowed by CORS'));
        }
    },
    credentials: true,
}));

// app.use(cors({
//     origin: (origin, callback) => {
//         if (!origin || allowedOrigins.includes(origin)) {
//             callback(null, true);
//         } else {
//             callback(new Error('Not allowed by CORS'));
//         }
//     },
//     methods: ['GET', 'POST', 'PUT', 'DELETE'],
//     allowedHeaders: ['Content-Type', 'Authorization'],
//     credentials: true
// }));


app.use(fileUpload());


app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));
app.use(cookieParser());

app.use((req, res, next) => {
    res.setHeader('Date', moment().tz(TIMEZONE).format('ddd, DD MMM YYYY HH:mm:ss [GMT+0700]'));
    next();
});
app.set('trust proxy', 1);
app.use(session({
    secret: SESS_SECRET,
    resave: true,
    saveUninitialized: false,
    store: store,
    cookie: {
        secure: isProduction,    // true hanya kalau production / HTTPS
        httpOnly: true,
        sameSite: isProduction ? 'None' : 'Lax',
        domain: isProduction ? '.grebegsuro.id' : undefined,
        // sameSite: 'None',
        // domain: '.grebegsuro.id',
        maxAge: 1000 * 60 * 60,
    }
}));
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));
app.use('/uploads', express.static('public/uploads'));

app.use(authRoutes)
app.use(barangRoutes)
app.use(cabangRoutes)
app.use(kategoriRoutes)
app.use(transaksiRoutes)
app.use(customerRoutes);
app.use(userRoutes)
app.use(laporan)
app.use(uploadRoutes)

app.get('/', (req, res) => {
    res.json({
        message: "Pos Api v1 - Grebeg Suro"
    }, 200);
});

store.sync();

const port = 5001

app.listen(port, () => { console.log('server') })