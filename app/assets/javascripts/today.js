function startTime() {
  var today = new Date();
  var dayOfWeek = today.getDay();
  if (dayOfWeek == 0) {
    document.getElementById("sun").className = "today";
  } else if (dayOfWeek == 2) {
    document.getElementById("tue").className = "today";
  } else if (dayOfWeek == 3) {
    document.getElementById("wed").className = "today";
  } else if (dayOfWeek == 4) {
    document.getElementById("thur").className = "today";
  } else if (dayOfWeek == 5) {
    document.getElementById("fri").className = "today";
  } else if (dayOfWeek == 6) {
    document.getElementById("sat").className = "today";
  } else {}
}

startTime();