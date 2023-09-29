// currency.js
document.addEventListener("DOMContentLoaded", function() {
    var elements = document.querySelectorAll(".format-currency");
    for (var i = 0; i < elements.length; i++) {
      var element = elements[i];
      var originalValue = parseFloat(element.textContent);
      
      // Định dạng số tiền thành định dạng tiền tệ
      var formattedValue = new Intl.NumberFormat("vi-VN", {
        style: "currency",
        currency: "VND" // Thay đổi thành mã tiền tệ mong muốn (ví dụ: "USD" cho đô la Mỹ)
      }).format(originalValue);
  
      element.textContent = formattedValue;
    }
  });
  