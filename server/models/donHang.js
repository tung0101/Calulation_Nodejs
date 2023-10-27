const db = require('./db');

class DonHang {
  constructor(nguoi_dat, loai_hang, loai_sp, so_luong, gia, ngay, tinh_trang) {
    this.nguoi_dat = nguoi_dat;
    this.loai_hang = loai_hang;
    this.loai_sp = loai_sp;
    this.so_luong = isNaN(so_luong) ? 0 : so_luong;
    this.gia = isNaN(gia) ? 0 : gia;
    this.ngay = ngay;
    this.tinh_trang = tinh_trang;
    this.thanh_tien = this.gia * this.so_luong;
  }

  static create(newOrder, result) {
    db.query(
      'INSERT INTO don_hang (nguoi_dat, loai_hang, loai_sp, so_luong, gia, ngay, tinh_trang, thanh_tien) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
      [newOrder.nguoi_dat, newOrder.loai_hang, newOrder.loai_sp, newOrder.so_luong, newOrder.gia, newOrder.ngay, newOrder.tinh_trang, newOrder.thanh_tien],
      (error, results) => {
        if (error) {
          console.error('Lỗi khi thêm đơn hàng: ', error);
          result(error, null);
          return;
        }
        console.log('Thêm đơn hàng thành công:', { id: results.insertId, ...newOrder });
        result(null, { id: results.insertId, ...newOrder });
      }
    );
  }

  static getAll(result) {
    db.query('SELECT * FROM don_hang ORDER BY ngay DESC', (error, results) => {
      if (error) {
        console.error('Lỗi khi lấy danh sách đơn hàng: ', error);
        result(error, null);
        return;
      }
      result(null, results);
    });
  }  
}

module.exports = DonHang;
