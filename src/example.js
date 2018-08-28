var Casper = require('casper');
var Client = require("./client.js");
Client.install(Casper);

const client = new Client();
client.login();
client.scan();




/*

var casper = require('casper').create({
	logLevel: 'info',
    onError: function(self, msg) {
        this.capture('asserts/error.png');
        console.log('error: ' + msg);
        self.exit();
    },
    pageSettings: {
        loadImages: true, // 不加载图片，为了速度更快
        loadPlugins: true,
        userAgent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36"
    },
    verbose: true

});
function capture(filename){
	return function(){
		this.capture(filename+".png");
	}
}

function login(){

	casper.start('https://login.tmall.com/', function() {
	  this.echo(this.getTitle());
	});

	casper.then(function() {
	  this.switchToFrame(0);

	  this.capture('asserts/tmall-1.png'); //  生成一个png图片

	});
	casper.waitForSelector("a.J_Quick2Static", function(){
	  
	  this.click('a.J_Quick2Static');
	  this.capture('asserts/tmall-2.png'); //  生成一个png图片

	})

	casper.then(function() {
	   this.fill('form[id="J_Form"]', { TPL_username: '13674260981', TPL_password: '****' }, true);//填入form，进行搜索
	});
	casper.wait(3000);
	casper.then(function() {
	   this.capture('asserts/tmall-3.png');
	});


	casper.run();
};

function scan(){
	casper
		.start("http://www.tmall.com")
		.then(capture("scan-1"));
}
*/


