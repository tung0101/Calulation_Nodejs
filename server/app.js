const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const donHang = require('./controllers/donHang'); 
const coc = require ('./controllers/coc');
const lich = require ('./controllers/lich');
const Banggia = require ('./controllers/Banggia');
const questionRoutes = require('./routes/questionRoutes');
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
app.post('/editdeposit/:id', coc.editcoc);
app.post('/deletedeposit/:id', coc.deletecoc);
app.get('/priceList', Banggia.list);
app.post('/addPrice', Banggia.addPrice);
app.get('/lich',lich.list);
app.post('/addEvent', lich.addlich);
app.post('/deleteAll',lich.deleteAll);
app.use('/api/questions', questionRoutes);
// Khởi động máy chủ trên cổng 3000
app.listen(8000, () => {
  console.log('Server is running on port 8000');
});
