const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const donHang = require('./controllers/donHang'); 
const coc = require ('./controllers/coc');
const Banggia = require ('./controllers/Banggia');
const app = express();
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.get('/home', (req, res) => {
  res.render('index');
});
app.get('/orderList', donHang.list);
app.post('/addorderList', donHang.addList);
app.get('/depositList', coc.list);
app.post('/adddepositList', coc.addcoc);
app.get('/priceList', Banggia.list);
app.post('/addPrice', Banggia.addPrice);
// Khởi động máy chủ trên cổng 3000
app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
