const db = require('./db');

class coc {
  constructor(nguoi, ngay_thanh_toan, so_tien) {
    this.nguoi = nguoi;
    this.ngay_thanh_toan = ngay_thanh_toan;
    this.so_tien = so_tien;
  }

  static create(newPrice, result) {
    db.query(
      'INSERT INTO coc (nguoi, ngay_thanh_toan, so_tien) VALUES (?, ?, ?)',
      [newPrice.nguoi, newPrice.ngay_thanh_toan, newPrice.so_tien],
      (error, results) => {
        if (error) {
          console.error('Lỗi khi thêm cọc: ', error);
          result(error, null);
          return;
        }
        console.log('Thêm cọc thành công:', { id: results.insertId, ...newPrice });
        result(null, { id: results.insertId, ...newPrice });
      }
    );
  }

  static getAll(result) {
    db.query('SELECT * FROM coc', (error, results) => {
      if (error) {
        console.error('Lỗi khi lấy danh sách cọc: ', error);
        result(error, null);
        return;
      }
      result(null, results);
    });
  }
}

module.exports = coc;

