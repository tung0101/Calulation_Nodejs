// Trong tệp controllers/BanggiaController.js

const Banggia = require('../models/Banggia');

const BanggiaController = {
  list: (req, res) => {
    Banggia.getAll((err, results) => {
      if (err) {
        console.error('Lỗi khi lấy danh sách giá: ', err);
        // Xử lý lỗi và trả về thông báo lỗi nếu cần
        res.status(500).send('Đã xảy ra lỗi khi lấy danh sách giá.');
        return;
      }
      res.render('price', { price: results });
    });
  },

  addPrice: (req, res) => {
    // Lấy dữ liệu từ request body
    const { loai_hang, ten_san_pham, gia } = req.body;

    // Tạo một đối tượng giá mới từ dữ liệu
    const newPrice = new Banggia(loai_hang, ten_san_pham, gia);

    // Gọi phương thức create từ model để thêm giá vào cơ sở dữ liệu
    Banggia.create(newPrice, (err, result) => {
      if (err) {
        console.error('Lỗi khi thêm giá sản phẩm: ', err);
        // Xử lý lỗi và trả về thông báo lỗi nếu cần
        res.status(500).send('Đã xảy ra lỗi khi thêm giá sản phẩm.');
      } else {
        // Nếu thêm thành công, chuyển hướng hoặc trả về thông báo thành công
        res.redirect('/priceList'); // Chuyển hướng người dùng đến trang danh sách giá
      }
    });
  },
};

module.exports = BanggiaController;
