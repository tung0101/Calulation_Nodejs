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
    db.query('SELECT * FROM coc ORDER BY ngay_thanh_toan DESC', (error, results) => {
      if (error) {
        console.error('Lỗi khi lấy danh sách cọc: ', error);
        result(error, null);
        return;
      }
      result(null, results);
    });
  }
  static update(id, updatedPrice, result) {
    db.query(
      'UPDATE coc SET nguoi = ?, ngay_thanh_toan = ?, so_tien = ? WHERE id = ?',
      [updatedPrice.nguoi, updatedPrice.ngay_thanh_toan, updatedPrice.so_tien, id],
      (error, results) => {
        if (error) {
          console.error('Lỗi khi cập nhật cọc: ', error);
          result(error, null);
          return;
        }
        if (results.affectedRows === 0) {
          // Không tìm thấy cọc với id cụ thể
          result({ kind: 'not_found' }, null);
          return;
        }
        console.log('Cập nhật cọc thành công: id ' + id);
        result(null, { id, ...updatedPrice });
      }
    );
  }
  static remove(id, result) {
    db.query('DELETE FROM coc WHERE id = ?', id, (error, results) => {
      if (error) {
        console.error('Lỗi khi xóa cọc: ', error);
        result(error, null);
        return;
      }
      if (results.affectedRows === 0) {
        // Không tìm thấy cọc với id cụ thể
        result({ kind: 'not_found' }, null);
        return;
      }
      console.log('Xóa cọc thành công: id ' + id);
      result(null, results);
    });
  }
  
  
}

module.exports = coc;

