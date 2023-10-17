// Trong tệp controllers/BanggiaController.js

const coc = require('../models/coc');

const cocController = {
  list: (req, res) => {
    coc.getAll((err, results) => {
      if (err) {
        console.error('Lỗi khi lấy danh sách giá: ', err);
        // Xử lý lỗi và trả về thông báo lỗi nếu cần
        res.status(500).send('Đã xảy ra lỗi khi lấy danh sách giá.');
        return;
      }
      res.render('coc', { coc: results });
    });
  },

  addcoc: (req, res) => {
    // Lấy dữ liệu từ request body
    const { nguoi, ngay_thanh_toan, so_tien } = req.body;

    // Tạo một đối tượng giá mới từ dữ liệu
    const newPrice = new coc(nguoi, ngay_thanh_toan, so_tien);

    // Gọi phương thức create từ model để thêm giá vào cơ sở dữ liệu
    coc.create(newPrice, (err, result) => {
      if (err) {
        console.error('Lỗi khi thêm giá sản phẩm: ', err);
        // Xử lý lỗi và trả về thông báo lỗi nếu cần
        res.status(500).send('Đã xảy ra lỗi khi thêm giá sản phẩm.');
      } else {
        // Nếu thêm thành công, chuyển hướng hoặc trả về thông báo thành công
        res.redirect('/depositList'); // Chuyển hướng người dùng đến trang danh sách giá
      }
    });
  },
  editcoc: (req, res) => {
    // Lấy id cọc cần sửa từ request params
    const id = req.params.id;
  
    // Lấy dữ liệu cọc từ request body
    const { nguoi, ngay_thanh_toan, so_tien } = req.body;
  
    // Tạo một đối tượng cọc được cập nhật từ dữ liệu
    const updatedCoc = new coc(nguoi, ngay_thanh_toan, so_tien);
  
    // Gọi phương thức update từ model để sửa cọc theo id
    coc.update(id, updatedCoc, (err, result) => {
      if (err) {
        console.error('Lỗi khi cập nhật cọc: ', err);
        // Xử lý lỗi và trả về thông báo lỗi nếu cần
        res.status(500).send('Đã xảy ra lỗi khi cập nhật cọc.');
      } else {
        // Nếu cập nhật thành công, chuyển hướng hoặc trả về thông báo thành công
        res.redirect('/depositList'); // Chuyển hướng người dùng đến trang danh sách giá
      }
    });
  },
  
  deletecoc: (req, res) => {
    // Lấy id cọc cần xóa từ request params
    const id = req.params.id;
  
    // Gọi phương thức remove từ model để xóa cọc theo id
    coc.remove(id, (err, result) => {
      if (err) {
        console.error('Lỗi khi xóa cọc: ', err);
        // Xử lý lỗi và trả về thông báo lỗi nếu cần
        res.status(500).send('Đã xảy ra lỗi khi xóa cọc.');
      } else {
        // Nếu xóa thành công, chuyển hướng hoặc trả về thông báo thành công
        res.redirect('/depositList'); // Chuyển hướng người dùng đến trang danh sách giá
      }
    });
  },
  
};

module.exports = cocController;
