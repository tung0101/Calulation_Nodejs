const DonHang = require('../models/donHang');

const donHangController = {
  list: (req, res) => {
    DonHang.getAll((err, results) => {
      if (err) {
        console.error('Lỗi khi lấy danh sách đơn hàng: ', err);
        res.status(500).send('Đã xảy ra lỗi khi lấy danh sách đơn hàng.');
        return;
      }
      res.render('donHang', { donhang: results });
    });
  },

  addList: (req, res) => {
    const { nguoi_dat, loai_hang, loai_sp, gia, ngay, tinh_trang, so_luong } = req.body;
    const newOrder = new DonHang(nguoi_dat, loai_hang, loai_sp, so_luong, gia, ngay, tinh_trang);

    DonHang.create(newOrder, (err, result) => {
      if (err) {
        console.error('Lỗi khi thêm đơn hàng: ', err);
        res.status(500).send('Đã xảy ra lỗi khi thêm đơn hàng.');
      } else {
        res.redirect('/orderList');
      }
    });
  },
};

module.exports = donHangController;
