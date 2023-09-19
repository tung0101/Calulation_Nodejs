// Trong tệp models/Banggia.js

const db = require('./db');

class Banggia {
  constructor(loai_hang, ten_san_pham, gia) {
    this.loai_hang = loai_hang;
    this.ten_san_pham = ten_san_pham;
    this.gia = gia;
  }

  static create(newPrice, result) {
    db.query(
      'INSERT INTO gia (loai_hang, ten_san_pham, gia) VALUES (?, ?, ?)',
      [newPrice.loai_hang, newPrice.ten_san_pham, newPrice.gia],
      (error, results) => {
        if (error) {
          console.error('Lỗi khi thêm giá sản phẩm: ', error);
          result(error, null);
          return;
        }
        console.log('Thêm giá sản phẩm thành công:', { id: results.insertId, ...newPrice });
        result(null, { id: results.insertId, ...newPrice });
      }
    );
  }

  static getAll(result) {
    db.query('SELECT * FROM gia', (error, results) => {
      if (error) {
        console.error('Lỗi khi lấy danh sách giá: ', error);
        result(error, null);
        return;
      }
      result(null, results);
    });
  }
}

module.exports = Banggia;
