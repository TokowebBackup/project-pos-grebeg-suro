import React from 'react';
import { createRoot } from 'react-dom/client';
import { Provider } from 'react-redux';
import axios from 'axios';
import { store } from "./app/store.js"
import App from './App';
import { createTheme, ThemeProvider, CssBaseline } from '@mui/material';

axios.defaults.withCredentials = true;


const theme = createTheme({
  typography: {
    fontFamily: 'Plus Jakarta Sans, sans-serif', // ganti sesuai font yg kamu pakai
  },
});
const container = document.getElementById('root');
const root = createRoot(container);

root.render(
  <React.StrictMode>
    <Provider store={store}>
      <ThemeProvider theme={theme}>
        <CssBaseline />
        <App />
      </ThemeProvider>
    </Provider>
  </React.StrictMode>
);
