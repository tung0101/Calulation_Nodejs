// date.js
document.addEventListener("DOMContentLoaded", function() {
    var elements = document.querySelectorAll(".format-date");
    for (var i = 0; i < elements.length; i++) {
      var element = elements[i];
      var originalDate = element.textContent;
      var formattedDate = moment(originalDate).format("DD/MM/YYYY");
      element.textContent = formattedDate;
    }
  });
  