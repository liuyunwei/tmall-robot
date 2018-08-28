var fs = require('fs');
var Casper = null;

function capture(filename){
	return function(){
		this.capture("./asserts/"+filename+".png",{height: 500,width:1300, left:0, top:0});
	}
}

function Client(){

};
Client.prototype.create = function(){
	this.casper = Casper.create({
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

	})
}

Client.prototype.login = function(){
	this.create();
	this.casper.start('https://login.tmall.com/', function() {
	  this.echo(this.getTitle());
	});

	this.casper.then(function() {
	  

	  this.capture('asserts/tmall-1.png'); //  生成一个png图片

	});
	this.casper.then(function(){
		this.switchToFrame(0);
	  
	  if(this.exists('a.J_Quick2Static') && !(this.getElementBounds("#J_StaticForm").height>0) ){
	  	console.log("exists");
	  	try{
		  	this.click('a.J_Quick2Static');
		 }catch(e){}

	  }
	  this.capture('asserts/tmall-2.png'); //  生成一个png图片

	})

	this.casper.then(function() {
	   this.fill('form[id="J_Form"]', { TPL_username: '13674260981', TPL_password: '****' }, true);//填入form，进行搜索
	   this.capture('asserts/form-filled.png');
	});
	this.casper.wait(3000);
	this.casper.then(function() {
	   this.capture('asserts/tmall-3.png');
	   var cookiestr = JSON.stringify(this.page.cookies, null, '\t');
	   fs.write("cookie.json", cookiestr);
	});


	//this.casper.run();
};
Client.prototype.scan = function(){
	var data = fs.read("cookie.json");
	var cookies = JSON.parse(data);
	console.log(cookies);
	phantom.cookies = cookies;
	var cookiestr = cookies.reduce(function(str,cookie){ str+= [cookie.name, "=", cookie.value, ";"].join("");return str;} ,"");
	cookiestr = 'cna=6F3IEAJ8UlsCAQHKTI9Q+U65; l=Aj8/x02gFx79413HUE8TeAGkTxjIr5MS; _med=dw:1280&dh:800&pw:2560&ph:1600&ist:0; cq=ccp%3D0; _m_h5_tk=e202061dc08a077b4b2ff0ffbc41dc8b_1509444524986; _m_h5_tk_enc=7c6c815689ae493a9e6cf9dc6a464a5f; sm4=110102; hng=; uc1=cookie14=UoTcBryl%2F9okUw%3D%3D&lng=zh_CN&cookie16=V32FPkk%2FxXMk5UvIbNtImtMfJQ%3D%3D&existShop=false&cookie21=WqG3DMC9FxUx&tag=8&cookie15=WqG3DMC9VAQiUQ%3D%3D&pas=0; uc3=sg2=U7ARaO22mUINOr9qdhMrG%2FstjOQ6GvEtzT2MJO5DD2I%3D&nk2=2%2FxoXkhSNAlNsQ%3D%3D&id2=UNk0xFxRCGAN&vt3=F8dBzLKHf1gB4l%2F3YcU%3D&lg2=WqG3DMC9VAQiUQ%3D%3D; tracknick=%5Cu9AD8%5Cu5C1A%5Cu7684%5Cu4E0A%5Cu5C09; _l_g_=Ug%3D%3D; ck1=; unb=393642850; lgc=%5Cu9AD8%5Cu5C1A%5Cu7684%5Cu4E0A%5Cu5C09; cookie1=BdTu3BGttWwWZf2iiNhpeLUfdKViHIbj1GERF%2BGU4VY%3D; login=true; cookie17=UNk0xFxRCGAN; cookie2=60670cd08a3be42cb95485225db4592f; _nk_=%5Cu9AD8%5Cu5C1A%5Cu7684%5Cu4E0A%5Cu5C09; t=a989b53980d41b72e26cbe99aa14bd98; uss=WqIpmEMPKecqEL03jYgiKehCPRcjF32LWTzCExcxtiK6Qvw%2BS6F6YXfiag%3D%3D; skt=df58be35bf27f6d7; _tb_token_=571573739b43b; isg=AhgYt0l79QPDm9mHEjz9FIf46UBqqXVlgaKFLFIJadMG7bjX-hFMGy6PQxOm';
	console.log(cookiestr);
	//this.create();
	console.log("start scan");
	this.casper.thenOpen("http://www.tmall.com", {headers:{
		Cookie:cookiestr
	}},function(){
		this.echo(this.getTitle());
	});
	console.log("capture");
	this.casper.wait(3000);
	this.casper.then(capture("scan-1"));
	this.casper.thenOpen("https://chaoshi.detail.tmall.com/item.htm?spm=a3204.7508091.item-18.3.qR6lHD&id=41872849213", function(){
	});
	this.casper.then(capture("detail-1"));
	this.casper.wait(3000);
	
	this.casper.then(function(){
		this.click("#J_LinkBasket");
	});
	this.casper.then(capture("detail-2"))


	this.casper.run();
};


Client.install = function(ClassRef){
	Casper = ClassRef;
}
module.exports = Client;
