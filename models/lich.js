const db = require('./db'); // Kết nối đến cơ sở dữ liệu

class Lich {
  constructor(thu, cong_viec, gio, ngay, ghi_chu) {
    this.thu = thu;
    this.cong_viec = cong_viec;
    this.gio = gio;
    this.ngay = ngay;
    this.ghi_chu = ghi_chu;
  }

  static create(newEvent, result) {
    db.query(
      'INSERT INTO lich (thu, cong_viec, gio, ngay, ghi_chu) VALUES (?, ?, ?, ?, ?)',
      [newEvent.thu, newEvent.cong_viec, newEvent.gio, newEvent.ngay, newEvent.ghi_chu],
      (error, results) => {
        if (error) {
          console.error('Lỗi khi thêm sự kiện vào lịch: ', error);
          result(error, null);
          return;
        }
        console.log('Thêm sự kiện vào lịch thành công:', { id: results.insertId, ...newEvent });
        result(null, { id: results.insertId, ...newEvent });
      }
    );
  }

  static getAll(result) {
    db.query('SELECT * FROM lich', (error, results) => {
      if (error) {
        console.error('Lỗi khi lấy danh sách sự kiện từ lịch: ', error);
        result(error, null);
        return;
      }
      result(null, results);
    });
  }
  static deleteAll(result) {
    db.query('DELETE FROM lich', (error, results) => {
      if (error) {
        console.error('Lỗi khi xóa tất cả sự kiện trong lịch: ', error);
        result(error, null);
        return;
      }
      console.log('Đã xóa tất cả sự kiện trong lịch.');
      result(null, results);
    });
  }
}

module.exports = Lich;
