const Lich = require('../models/lich');

const lichController = {
  list: (req, res) => {
    Lich.getAll((err, results) => {
      if (err) {
        console.error('Lỗi khi lấy danh sách sự kiện: ', err);
        res.status(500).send('Đã xảy ra lỗi khi lấy danh sách sự kiện.');
        return;
      }
      res.render('lich', { lich: results });
    });
  },

  addlich: (req, res) => {
    const { thu, cong_viec, gio, ngay, ghi_chu } = req.body;
    const newEvent = new Lich(thu, cong_viec, gio, ngay, ghi_chu);

    Lich.create(newEvent, (err, result) => {
      if (err) {
        console.error('Lỗi khi thêm sự kiện: ', err);
        res.status(500).send('Đã xảy ra lỗi khi thêm sự kiện.');
      } else {
        res.redirect('/lich');
      }
    });
  },
deleteAll: (req, res) => {
  Lich.deleteAll((err, result) => {
    if (err) {
      console.error('Lỗi khi xóa tất cả sự kiện: ', err);
      res.status(500).send('Đã xảy ra lỗi khi xóa tất cả sự kiện.');
    } else {
      res.redirect('/lich');
    }
  });
},

};

module.exports = lichController;
