document.addEventListener("DOMContentLoaded", function() {
    var elements = document.querySelectorAll(".format-time");
    
    for (var i = 0; i < elements.length; i++) {
      var element = elements[i];
      var originalValue = element.textContent;
    
      // Chuyển giá trị thời gian thành đối tượng Moment
      var momentObj = moment(originalValue, "HH:mm:ss");
  
      // Định dạng giờ theo định dạng của Việt Nam với AM/PM
      var formattedValue = momentObj.format("hh:mm:ss A");
  
      element.textContent = formattedValue;
    }
  });