var page = require('webpage').create();
page.open('https://login.tmall.com', function(status) {
  console.log("Status: " + status);
  if(status === "success") {
    page.render('example.png');
  }
  phantom.exit();
});