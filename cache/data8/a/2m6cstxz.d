   �         Chttps://g.alicdn.com/vip/login/0.5.60/js/login/nlogin.js?t=20151220     %���{3 �       ����               �      
     O K      Server   Tengine   Content-Type   application/javascript   Date   Tue, 31 Oct 2017 09:04:34 GMT   Vary   Accept-Encoding   x-oss-request-id   59F83CA2A6CF131473C3452A   x-oss-object-type   Normal   x-oss-hash-crc64ecma   12585651764511379155   x-oss-storage-class   Standard   Content-MD5   i3uofiRXYSkawRqEcFi0Bg==   x-oss-server-time   2   Cache-Control   max-age=2592000,s-maxage=3600   Access-Control-Allow-Origin   *   X-Source-Scheme   https   Content-Encoding   gzip   Via   \cache16.l2cn859[0,200-0,H], cache12.l2cn859[0,0], cache7.cn490[0,200-0,H], cache6.cn490[0,0]   Age   881   X-Cache   "HIT TCP_MEM_HIT dirn:-2:-2 mlen:-1   X-Swift-SaveTime   Tue, 31 Oct 2017 09:04:34 GMT   X-Swift-CacheTime   3600   Timing-Allow-Origin   *   EagleId   7b7d124615094415559633385e !function(){var a="file:"===window.location.protocol||window.location.href.indexOf("local=1")>=0,b=window.location.href.indexOf("daily.taobao.net")>0;window.location.protocol;KISSY.config({combine:!a&&!b,packages:[{name:"kg",tag:"1358514278",path:"//g.alicdn.com/",charset:"gbk"}]})}(),KISSY.add("login/placeholder",function(a){var b=function(c){return this instanceof b?(c=c||{},this.label=c.label?a.one(c.label):null,this.wrap=this.label?this.label.parent():null,this.input=(c.input?a.one(c.input):null)||(this.wrap?this.wrap.one("input"):null),void this._init()):new b(c)};return a.augment(b,{_init:function(){this.input&&this.label&&(this._bind(),a.later(function(){this.input.fire("valuechange")},50,!1,this))},_bind:function(){this.label.on("click",function(a){this.input[0].focus()},this),this.input.on("blur",function(a){this.input.val()?this._hide():this._show(),this._focusing=!1},this).on("focus",function(a){this.input.val()?this._hide():this._focus(),this._focusing=!0},this).on("valuechange",function(a){this.input.val()?this._hide():this._focusing?this._focus():this._show()},this)},_show:function(){this.wrap.removeClass("ph-focus").removeClass("ph-hide")},_hide:function(){this.wrap.removeClass("ph-focus").addClass("ph-hide")},_focus:function(){this.wrap.removeClass("ph-hide").addClass("ph-focus")}}),b},{requires:["node"]}),KISSY.add("login/validator",function(a){var b=a.all,c=(a.one,window.TRLang||{}),d=function(b){return this instanceof d?(b=b||{},this.message=b.message,this.type=a.isString(b.type)?b.type:"",this.checkcode=b.checkcode||"",this.password=b.password,this.elUserName=b.elUserName,void this._init()):new d(b)},e={on:function(a){b(a).addClass("highlight")},off:function(a){b(a).removeClass("highlight")}};return a.augment(d,{_init:function(){!this.message||!this.type},check:function(){var a="";return"static"===this.type&&(a=this._checkStaticForm()),a?(this.message&&this.message.show(a),!1):!0},_checkStaticForm:function(){var b="",d=this.elUserName?a.trim(this.elUserName.val()):"",f=this.checkcode?a.trim(this.checkcode.val()):"",g=this.password?this.password.val():"";return this.elUserName&&!d?(b=c.ERROR_NICK_BLANK||"\u8bf7\u8f93\u5165\u8d26\u6237\u540d",this.elUserName&&e.on(this.elUserName)):this.elUserName&&e.off(this.elUserName),g?this.password&&e.off(this.password.input):(b?b=c.ERROR_NICK_PASSWORD_BLANK||"\u8bf7\u8f93\u5165\u8d26\u6237\u540d\u548c\u5bc6\u7801":(b=c.ERROR_PASSWORD_BLANK||"\u8bf7\u8f93\u5165\u5bc6\u7801",this.password&&this.password.focus()),this.password&&e.on(this.password.input)),this.checkcode&&this.checkcode.on&&!f&&(b?e.off(this.checkcode.input):(b=c.ERROR_CHECKCODE_BLANK||"\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801",this.checkcode.focus(),e.on(this.checkcode.input))),b?b:""}}),d}),KISSY.add("login/um",function(a){return{ready:function(b){if(a.isFunction(b)){var c,d=a.one("#um_to"),e=window.um,f=1500,g=200,h=0;return d?void(e&&e.getStatus?c=a.later(function(){h+=g,(e.getStatus()||h>=f)&&(d.val(window.parseInt(d.val(),10)+h),c.cancel(),b())},g,!0):b()):void b()}}}}),KISSY.add("login/message",function(a){var b=function(c){return this instanceof b?(c=c||{},this.wrap=a.one("#J_Message"),this.content=this.wrap.one("p"),this.code=null,void this._init()):new b(c)};return a.augment(b,{_init:function(){return this.wrap&&this.content?this:void 0},show:function(a,b,c){this.wrap.removeClass("error"),this.wrap.addClass(b||"error"),this.content.html(a).attr("class",b||"error"),this.wrap[0].style.display="block",this.code=c},hide:function(){this.wrap[0].style.display="none",this.code=null},reset:function(){this.hide(),this.content.html("")}}),b},{requires:["node"]}),KISSY.add("login/switcher",function(a){var b=a.Event,c="sso",d="static",e="module-quick",f="module-static",g=function(a){return this instanceof g?(this.cfg=a||{},this.elLoginBox=a.elLoginBox,this.defaultView=a.defaultView,this.elStaticForm=a.elStaticForm,void this._init()):new g(a)};return a.augment(g,b.Target,{_init:function(){var b=this;a.all("#J_Quick2Static").on("click",function(a){a.halt(),b.switchTo(d),b.cfg.elUserName[0].focus()}),a.all(".J_Quick2Static").on("click",function(a){a.halt(),b.switchTo(d),b.cfg.elUserName[0].focus()}),a.all("#J_Static2Quick").on("click",function(a){a.halt(),b.switchTo(c),b.elStaticForm.one(".login-tip")&&b.elStaticForm.one(".login-tip").hide()}),this.defaultView&&(this.cfg.disableQuickLogin?(this.switchTo(this.defaultView),this.ssoTimeout=!0):a.later(function(){this.elLoginBox.hasClass("loading")&&(this.switchTo(this.defaultView),this.ssoTimeout=!0,window._submit_t_&&window._lgst_&&(window._submit_t_.loading=a.now()))},2e3,!1,this))},switchTo:function(a){switch(this.elLoginBox.removeClass("loading"),a){case d:this.elLoginBox.addClass(f).removeClass(e),this.fire("switch",{module:d});break;case c:this.elLoginBox.addClass(e).removeClass(f),this.fire("switch",{module:c})}}}),g},{requires:["node","event"]}),KISSY.add("login/submitbutton",function(a){var b=function(c){return this instanceof b?(c=c||{},this.el=a.one(c.el),void this._init()):new b(c)};return a.augment(b,{_init:function(){return this.el?(this.text=this.el.text(),this):void 0},ing:function(a){return this.el.text(a),this},reset:function(){return this.el.prop("disabled",!1),this.el.text(this.text),this},t:function(){return this.el&&this.el.attr("data-ing")}}),b}),KISSY.add("login/miser/index",function(a,b,c,d,e,f,g){function h(b){return this instanceof h?(this.cfg=b||{},this.el=b.elMiserBox||i("#J_MiserLogin"),this.ul=this.el.one(".ww-userlist"),this.form=this.el.one("form"),this.token=this.el.one("#x_token").val(),this.elButton=a.one("#J_SubmitMiser"),this.hardinfoToken=i("#M_hard_info"),this.isSupported=!1,void this._init()):new h(b)}var i=a.all,j="https://localhost:6689",k=j+"/getLoginedAccounts",l=j+"/queryLoginUrl";return a.augment(h,c.Target,{_init:function(){var a=this;this.getMiserUser(function(){"block"===i("#J_Message").css("display")?a.fire("miserError"):a._ui(),a.isSupported&&g(a.cfg)})},_ui:function(){this.usersize=this.userList?this.userList.length:0,this.usersize&&(this.usersize>1&&(this.ul.addClass("userlists"),this.usersize<4&&this.ul.addClass("userlists-2")),this.el.show(),this.fire("miserReady"),this._renderMiserUi(),this.usersize>3&&(this._initSlideUI(),this._initSlide()),this._bindEvent(),this._initSelect())},getMiserUser:function(b){var c=this;a.IO({url:k,timeout:5,dataType:"jsonp",data:{x_token:c.token},scriptCharset:"utf-8",success:function(a){a.accounts?c.userList=a.accounts:c.fire("miserError"),a.hardinfo_token&&c.hardinfoToken.val(a.hardinfo_token),c.isSupported=!0,b()},error:function(){c.userList=[],b(),c.fire("miserError")}})},_doMiserLogin:function(){var b=this;this.form.on("submit",function(c){c.halt(),!b.button&&b.elButton&&(b.button=f({el:b.elButton})),b.button&&b.button.ing("\u6b63\u5728\u767b\u5f55...");var d=i("#J_Mdelete")[0].checked;a.io({url:l,dataType:"jsonp",data:{x_token:b.token,havana_id:b.hid,remove:d,target:i("#J_TPL_redirect_url").val(),full_redirect:i("#J_full_redirect").val()},success:function(a){return 0!==a.error?void b.fire("miserError"):void(a.url&&("true"===b.cfg.fullRedirect?(parent.postMessage({redirectURL:a.url},"*"),top.postMessage({redirectURL:a.url},"*"),top.location.href=a.url):window.location.assign(a.url)))},error:function(){b.fire("miserError")}})})},_bindEvent:function(){var b=this;c.delegate(this.ul,"click",".item-sso-user",function(c){var d=a.one(c.currentTarget),e=a.all("input",d);e[0].checked=!0,b.userNick=e.val(),b.hid=e.attr("data-hid"),b.ul.all(".current").removeClass("current"),d.addClass("current")}),this._doMiserLogin()},_initSlideUI:function(){var a='<ul class="ww-trigger"></ul> <div class="trigger-bar"> <a href="javascript:void(0);" title="\u4e0b\u7ffb" class="next iconfont">&#xe612;</a> <a href="javascript:void(0);" title="\u4e0a\u7ffb" class="prev iconfont"> &#xe60c</a> </div>';this.el.one(".trigger").append(a),this.el.addClass(".ww-slide")},_initSlide:function(){this.wwSlide=new e("J_MiserLogin",{eventType:"click",navClass:"ww-trigger",contentClass:"ww-userlist",pannelClass:"ww-tab ",selectedClass:"current",effect:"hSlide",carousel:!1}),this._bindSlideEvent()},_bindSlideEvent:function(){var a=this;this.el.one(".next").on("click",function(){a.wwSlide.next()}),this.el.one(".prev").on("click",function(){a.wwSlide.previous()})},_renderMiserUi:function(){if(this.userList&&this.userList.length){var b=this,c=this.userList.length>1?60:80,d='<div class="item-sso-user {cls}"><div class="user-pic"><img src="//wwc.alicdn.com/avatar/getAvatar.do?userNick={nick}&width=80&height=80&type=sns&_input_charset=UTF-8" width="'+c+'" height="'+c+'"/></div><div class="user-name" title="{nick}">{nick}</div><input data-hid="{hid}" data-type="ww" id="ra-{index}" class="r-sso-user r-wwuser " name="user" value="{fullNick}" type="radio" {checked} />  <i class="iconfont icon-ok">&#xe60e;</i></div>',e='<div class="ww-tab">';a.each(this.userList,function(c,f){var g={nick:c.nick,fullNick:c.nick,hid:c.havana_id,index:f};f>0&&f%3===0?e=e+'</div><div class="ww-tab">'+a.substitute(d,g):f===b.userList.length-1?e=e+a.substitute(d,g)+"</div>":e+=a.substitute(d,g)}),this.ul.append(e)}},_initSelect:function(){this.userList&&this.userList.length&&this.ul.all(".item-sso-user")[0].click()}}),h},{requires:["node","event","ajax","kg/slide/2.0.2/","login/submitbutton","login/miser/trust"]}),KISSY.add("login/miser/trust",function(a,b,c,d){function e(a){return this instanceof e?(this.el=a.elMiserBox,this.token=this.el.one("#x_token").val(),this.nickEl=a.elUserName,this.pswEl=a.elPassword,this.message=a.message,this.hardinfoToken=f("#M_hard_info"),this.hardinfoTokenVal=this.hardinfoToken.val(),this.CACHE={},void this._init()):new e(a)}var f=a.all,g=window.TRLang||{},h="https://localhost:6689",i=h+"/isTrustedAccount";return a.augment(e,{_init:function(){this._creatDom(),this._bindEvent(),""!==this.nickEl.val()&&this.nickEl[0].focus()},_creatDom:function(){var a=g.TIPS_REMEMBER_PASSWORD||"\u8bb0\u4f4f\u5bc6\u7801",b='<div class="miser-trust-warp hidden"><input type="checkbox">'+a+"</div>";this.pswEl.parent().append(b),this.trustWarp=f(".miser-trust-warp"),this.trustCheckbox=this.trustWarp.one("input")},hasChecked:function(a){return this.CACHE.hasOwnProperty(a)},_showTrustInput:function(a){var b=g.TIPS_NOT_REMEMBER_PSW_ON_PUBLIC||"\u4e0d\u8981\u5728\u516c\u5171\u8ba1\u7b97\u673a\u8bb0\u4f4f\u5bc6\u7801\uff0c\u9632\u6b62\u8d26\u6237\u88ab\u76d7";a?(this.trustWarp.show(),this.message.show(b,"warning")):(this.trustWarp.hide(),this.message.hide())},_checkTrust:function(b){var c=this;return this.hasChecked(b)?void this._showTrustInput(this.CACHE[b].trusted):void a.io({url:i,dataType:"jsonp",scriptCharset:"utf-8",data:{x_token:c.token,account:b},success:function(a){c.CACHE[b]=a,c._showTrustInput(a.trusted)},error:function(a){}})},_bindEvent:function(){var a=this;this.nickEl.on("blur",function(b){a._checkTrust(b.target.value)}),a.hardinfoToken.val(""),this.trustCheckbox.on("click",function(b){var c=b.target.checked;c?a.hardinfoToken.val(a.hardinfoTokenVal):a.hardinfoToken.val("")})}}),e},{requires:["node","event","ajax"]}),KISSY.add("login/tracknick",function(a){var b=function(a){return this instanceof b?(a=a||{},this.cookiename=a.bCBU?"lid":"tracknick",void this._init()):new b(a)};return a.augment(b,{_init:function(){},get:function(){var b=a.Cookie.get(this.cookiename);return b=b?window.unescape(b.replace(/(?:#88)$/,"").replace(/\\u/g,"%u")):""}}),b},{requires:["cookie"]}),KISSY.add("login/static/username/index",function(a,b,c,d,e,f,g){var h=function(a){return this instanceof h?(this.cfg=a||{},this.input=a.elUserName,this.checkURL=a.checkURL,this.bCBU=a.bCBU,this.url=a.checkUserNameURL,this.message=a.message,this.unit=f(a),this.verify=!!a.verify,this.checkcode=a.checkcode,this.CACHE={},this.img=a.elCheckCodeImg,void this._init()):new h(a)};return a.augment(h,{_init:function(){if(this.input&&!this.verify){var c=d({bCBU:this.bCBU}).get();c&&!this.input.val()&&this.input.val(c),e({input:this.input});var f=this;this.input.on("blur",function(){f._check()});try{b.ipad&&window.self!==window.top&&(this.input.parent().append('<div id="J_UnPad" style="position:absolute;left:0;top:0;width:100%;height:100%;"></div>'),a.one("#J_UnPad").on("click",function(b){f.input[0].focus(),a.one(b.currentTarget).remove()}))}catch(g){}}},_checkCode:function(b){b&&this.checkcode&&(this.checkcode.isShow()?this.checkcode.refresh():this.checkcode.show()),b&&window.__nc&&(window.__nc.is_show?window.__nc.reload():(window.__nc.show(),a.one("#J_NcoShow")&&a.one("#J_NcoShow").val("true")))},_check:function(){var b=a.trim(this.input.val()),c=window.encodeURIComponent(b);if(this.hasChecked(c)&&window.__nc&&!window.__nc.is_show)return void this._checkCode(this.CACHE[c].needcode);if(!this._checking){this._checking=!0;var d=this;a.io({type:"post",url:this.url,cache:!1,dataType:"json",data:{username:b,ua:UA_Opt?window[UA_Opt.LogVal]:""},success:function(a){d.CACHE[c]=a,window.__nc&&!window.__nc.is_show?d._checkCode(a.needcode):(a.url&&d.img.attr("data-src",a.url),d.checkcode.wrap.hasClass("hidden")&&d._checkCode(a.needcode)),d.unit.init({loginName:b,unit:a.unt&&2===a.unt.split("#").length?a.unt.split("#")[1]:""}),d._checking=!1},error:function(){d._checking=!1}})}},hasChecked:function(b){return this.CACHE.hasOwnProperty(b)&&!a.isUndefined(this.CACHE[b].needcode)}}),h},{requires:["ua","ajax","login/tracknick","login/inputclear","login/unit","login/miser/trust"]}),KISSY.add("login/inputclear",function(a){var b=function(c){return this instanceof b?(this.input=a.one(c.input),this.uid=a.now(),this.el=null,this.force=!!c.force,void this._init()):new b(c)};return a.augment(b,{_init:function(){!this.input||!this.force&&this.nativeSupport()||(this.wrap=this.input.parent(),this.input.on("valuechange",function(){this.input.val().length?this.show():this.hide()},this),this.input.fire("valuechange"))},_create:function(){var b=a.DOM.create("<span>",{id:"J_NickX"+this.uid,"class":"nickx",href:"javascript:void(0)"});a.one(b).html('<i class="iconfont">&#xe613;</i>'),this.wrap.append(b),this.el=a.one("#J_NickX"+this.uid),a.one(this.el).on("click",function(a){a.halt(),this.input.val(""),this.input[0].focus(),this.hide()},this)},nativeSupport:function(){return a.UA.ie&&a.UA.ie>=10},show:function(){return this.el||this._create(),this.el[0].style.display="block",this},hide:function(){return this.el&&(this.el[0].style.display="none"),this}}),b},{requires:["ua"]}),KISSY.add("login/unit",function(a){var b={daily:{https:"https://login.daily.taobao.net",http:"http://login.daily.taobao.net"},production:{https:"https://login.taobao.com",http:"http://login.taobao.com"}},c=function(a){return this instanceof c?(this.cfg=a||{},this.bDaily=a.bDaily,this.bHttps=a.bHttps,void this._init()):new c(a)};return a.augment(c,{_init:function(){!this.input},init:function(a){a=a||{},this.loginName=a.loginName||"",this.unit=a.unit||"",window.loginConfig.unitHost="",window.loginConfig.unit="",this.loginName&&(this.unit?(window.loginConfig.unit=this.unit,window.loginConfig.unitHost=this._getUnitHost(this.unit)):window.loginConfig.unitHost=this._getUnitCookie(this.loginName),window.loginConfig.unitHost&&(this.cfg.elStaticForm&&this.cfg.elStaticForm.attr("action",window.loginConfig.unitHost+this.cfg.staticFormAction),this.cfg.elDynamicForm&&this.cfg.elDynamicForm.attr("action",window.loginConfig.unitHost+this.cfg.dynamicFormAction)))},_getUnitCookie:function(b){var c=a.Cookie.get("unt");if(!c)return"";if(a.one("#J_UnitClose"))return"";var d=2===c.split("&").length?c.split("&"):null,e=d&&d[0],f=d&&d[1];return e===b&&f?this._getUnitHost(f):""},_getUnitHost:function(a){var c;return c=this.bDaily?this.bHttps?b.daily.https:b.daily.http:this.bHttps?b.production.https:b.production.http,a&&"center"!==a?c.replace(/\/\/login\./,"//"+a+".login."):c}}),c},{requires:["io","dom","event","node","cookie"]}),KISSY.add("login/static/password",function(a,b,c,d,e){var f=function(b){return this instanceof f?(this.cfg=b=b||{},this.input=b.elPassword,this.form=b.elStaticForm,this.pbk=a.all("#J_PBK").val(),this.exponent="10001",this.elUserName=this.cfg.elUserName,void this._init()):new f(b)};return a.augment(f,{_init:function(){var b=this;if(this.input)try{d.ipad&&window.self!==window.top&&(this.input.parent().append('<div id="J_PwdPad" style="position:absolute;left:0;top:0;width:100%;height:100%;"></div>'),a.one("#J_PwdPad").on("click",function(c){b.input[0].focus(),a.one(c.currentTarget).remove()}))}catch(c){}},val:function(){return this.input.val()},focus:function(){this.input[0].focus()},encrypt:function(a){return a&&this.pbk&&this.exponent?(this.rsa||(this.rsa=new e,this.rsa.setPublic(this.pbk,this.exponent)),a=this.rsa.encrypt(a)):a}}),f},{requires:["node","dom","ua","kg/rsa/2.0.1/index"]}),KISSY.add("login/checkcode/index",function(a,b,c,d){var e=function(b){return this instanceof e?(b=b||{},this.form=b.elStaticForm,this.input=b.elCheckCode,this.img=b.elCheckCodeImg,this.imgHandler=b.elCheckCodeImgHandler,this.wrap=a.one("#l_f_code"),this.elNeedCheckCode=this.form?a.one(this.form.all("form")[0].elements.need_check_code):null,this.src=this.img?this.img.attr("data-src"):"",this.bMini=b.bMini,this._refreshed=!1,void this._init()):new e(b)};return a.augment(e,{_init:function(){if(this.img&&this.imgHandler&&this.wrap){var b=this;this.imgHandler.on("click",function(a){a.halt(),b.refresh(),b.focus()}),this.img.on("click",function(){b.refresh(),b.focus()}),this.isShow()&&this.refresh();try{d.ipad&&window.self!==window.top&&(this.input.parent().append('<div id="J_CheckCodePad" style="position:absolute;left:0;top:0;width:100%;height:100%;"></div>'),a.one("#J_CheckCodePad").on("click",function(c){b.input[0].focus(),a.one(c.currentTarget).remove()}))}catch(c){}}},refresh:function(){return this.src=this.img?this.img.attr("data-src"):"",this.img.attr("src",this.src+(this.src.indexOf("?")>0?"&":"?")+"_r_="+a.now()),this._refreshed=!0,this},show:function(){return(this.img.attr("src").indexOf("blank")>=0||!this._refreshed&&this.bMini&&this.isShow())&&this.refresh(),this.wrap.removeClass("hidden"),this.input.val(""),this.elNeedCheckCode&&this.elNeedCheckCode.val("true"),this.on=!0,this},hide:function(){return this.wrap.addClass("hidden"),this.input.val(""),this.elNeedCheckCode&&this.elNeedCheckCode.val(""),this.on=!1,this},val:function(){return this.input.val()},isShow:function(){return this.on=!this.wrap.hasClass("hidden"),this.on},focus:function(){return this.input[0].focus(),this}}),e},{requires:["node","event","ua"]}),KISSY.add("login/static/login",function(a,b,c,d){var e=function(a){return this instanceof e?(this.cfg=a=a||{},this.bCBU=this.cfg.bCBU,this.havanaEnable=a.havanaEnable,this.loginUrl=a.loginUrl,this.form=a.form,this.message=a.message,this.password=a.password,this.elPasswordRSA=a.elPasswordRSA,this.type="STATIC",void this._init()):new e(a)};return a.augment(e,{_init:function(){if(this.form){var b={type:"static",message:this.message,password:this.password};window.__nc||(b.checkcode=this.checkcode),this.validator=c(a.merge(this.cfg,b)),this.submitbutton=d({el:a.one(".J_Submit",this.form)}),this._bind()}},_bind:function(){var c=this;this.form.on("submit",function(d){d.halt(),window._submit_t_&&window._lgst_&&(window._submit_t_.t1="STATIC"===c.type?"static":"quick",window._submit_t_.t2=a.now()),c.submitbutton&&c.submitbutton.ing(c.submitbutton.t()||"\u6b63\u5728\u767b\u5f55..."),b.ready(function(){c.validator.check()?c._login():c.submitbutton&&c.submitbutton.reset()})})},_login:function(){var a=this.password.val();if("STATIC"===this.type&&this.elPasswordRSA)if("1"===this.form.all("form")[0].elements.loginASR.value){this.elPasswordRSA.attr("maxlength",2048);try{this.elPasswordRSA.val(this.password.encrypt(a)),this.form.all("form")[0].elements.loginASRSuc.value="1",this.password.input.val("")}catch(b){}}else this.form.all("form")[0].elements.loginASRSuc.value="0";this._submit()},_submit:function(){var a=this.form.all("form")[0];try{var b=a.elements.newlogin,c=a.elements.callback;b&&(b.value="0"),c&&(c.value="")}catch(d){}a.submit()}}),e},{requires:["login/um","login/validator","login/submitbutton"]}),KISSY.add("login/static/index",function(a,b,c,d,e,f){return function(b){if(a.isObject(b)){var g,h,i=d(b);!window.__nc&&a.get("#J_CodeInput_i")&&(h=e(b));var j={form:b.elStaticForm,password:i};window.__nc?g=c(a.merge(b)):(g=c(a.merge(b,{checkcode:h})),j.checkcode=h),f(a.merge(b,j))}}},{requires:["ua","login/static/username/index","login/static/password","login/checkcode/index","login/static/login"]}),KISSY.add("login/nsso",function(a,b,c){return a.each(a.all(".ph-label"),function(a){b({label:a})}),{Static:c}},{requires:["login/placeholder","login/static/index"]}),KISSY.add("login/qrcode/index",function(a,b,c,d,e,f){var g=function(b){return this instanceof g?(this.cfg=b||{},this.enable=!!b.enableQRCode,this.mode=a.one("#J_QRCodeLogin"),this.container=a.one("#J_QRCodeImg"),this.getURL=b.getQRCodeURL||"",this.checkURL=b.checkQRCodeURL||"",this.t=0,this.failureTimes=0,this.abort=!1,this.animSupport=!1,this.interval=a.isNumber(this.cfg.intervalQRCode)?this.cfg.intervalQRCode:2e3,void this._init()):new g(b)};return a.augment(g,c.Target,{_init:function(){this.enable&&this.container&&this.getURL&&this.checkURL&&(a.all("#J_QRCodeLogin").css({display:"block"}),this.to=a.get("#J_TPL_redirect_url")?a.all("#J_TPL_redirect_url").val():"",this.mode.attr("class","qrcode-login"),this.make(),this.bind())},getadData:function(){return{adUrl:a.one("#J_adUrl").val(),adImage:a.one("#J_adImage").val(),adText:a.one("#J_adText").val(),viewFd4PC:a.one("#J_viewFd4PC").val(),viewFd4Mobile:a.one("#J_viewFd4Mobile").val()}},bind:function(){var b=this;a.all(".J_QRCodeRefresh").on("click",function(a){a.halt(),b.mode.attr("class","qrcode-login"),b.make()}),a.all("#J_Static2Quick").on("click",function(a){a.halt(),b.io||(b.abort=!1,b.mode.attr("class","qrcode-login"),b.make())}),a.all("#J_Quick2Static").on("click",function(c){c.halt(),b.fire("beforeSwitch",{mod:"login"}),b.abort=!0,b.failureTimes=0,b.io=null,b.fire("afterSwitch",{mod:"login"}),a.get("#J_QRCodeLogin .login-tip")&&a.one("#J_QRCodeLogin .login-tip").hide()}),a.all(".J_Quick2Static").on("click",function(a){b.abort=!0,b.failureTimes=0,b.io=null,b.cfg.elUserName.focus()}),a.all("#J_QRCodeImg").css({opacity:1}),a.get(".qrcode-help")&&!a.get(".qrcode-help-showed")&&(a.all("#J_QRCodeImg").on("mouseenter",function(){var b=a.one(this);return a.one(".qrcode-help").isRunning()&&a.one(".qrcode-help").stop(),b.isRunning()?void b.stop():void b.animate({left:"13px"},.5,"easeOut",function(){a.one(".qrcode-help").animate({display:"block",opacity:1},.3,"easeOut")})}),a.all(".qrcode-main").on("mouseleave",function(){var b=a.one(this);return a.one("#J_QRCodeImg").isRunning()&&a.one("#J_QRCodeImg").stop(),b.isRunning()?void b.stop():void a.one(".qrcode-help").animate({display:"none",opacity:0},.3,"easeOut",function(){a.one("#J_QRCodeImg").animate({left:"80px"},.5,"easeOut")})}))},get:function(b){var c=this,d={};a.get(".login-newbg")&&(d=this.getadData()),a.get("#J_From")&&(d.from=a.one("#J_From").val()),a.get("#J_Appkey")&&""!==a.one("#J_Appkey").val()&&(d.appkey=a.one("#J_Appkey").val()),a.IO({url:this.getURL,type:"get",data:d,timeout:5,dataType:"jsonp",complete:function(a){a&&a.success&&a.url&&(c.t=a.lgToken,b(a.url))}})},make:function(a){var b=this;this.container.css({opacity:.1}),this.get(function(c){b.failureTimes=0;var d='<img src="'+c+'">';b.container.html(d),b.container.css({opacity:1}),b.io||b.check(),a&&a()})},check:function(){if(!this.abort){var b=this,c=a.now();this.io=a.IO({url:this.checkURL,type:"get",timeout:2,cache:!1,data:{lgToken:this.t,defaulturl:this.to},dataType:"jsonp",complete:function(d){if(!b.abort){if(!d||!d.success||!d.code)return b.failureTimes++,void b.check();if(b.failureTimes>=5)return b.mode.attr("class","qrcode-login qrcode-login-error"),b.io=null,void(b.failureTimes=0);switch(b.failureTimes=0,d.code){case"10001":b.mode.attr("class","qrcode-login qrcode-login-ok");break;case"10002":b.mode.attr("class","qrcode-login qrcode-login-error");break;case"10003":case"10004":case"10005":b.mode.attr("class","qrcode-login qrcode-login-error");break;case"10006":if(d.url)return void("true"===b.cfg.fullRedirect?(parent.postMessage({redirectURL:d.url},"*"),top.postMessage({redirectURL:d.url},"*"),top.location.href=d.url):window.location.assign(d.url))}var e=b.interval-a.now()+c;"10001"===d.code||"10000"===d.code?a.later(function(){b.check()},e>0?e:0):b.io=null}}})}}}),g},{requires:["node","event","ua","ajax","anim"]}),KISSY.add("login/bykey/index",function(a,b,c,d,e,f){var g=function(b){return this instanceof g?(this.cfg=b||{},this.enable=b.enableLoginByKey,this.mode=a.one("#J_AkeyLogin"),this.StartURL=b.startLoginByKeyURL||"",this.checkURL=b.checkLoginByKeyURL||"",this.t=0,this.failureTimes=0,this.abort=!1,this.interval=a.isNumber(this.cfg.intervalQRCode)?this.cfg.intervalQRCode:2e3,void this._init()):new g(b)};return a.augment(g,b.Target,{_init:function(){this.enable&&this.StartURL&&this.checkURL&&(this.to=a.all("#J_TPL_redirect_url").val(),this.mode.css({display:"block"}),this.bind())},bind:function(){var b=this;a.all("#J_AkeyLogin button").on("click",function(a){a.halt(),b.start()}),a.all("#J_AkeyLogin .refresh").on("click",function(a){a.halt(),b.mode.attr("class","akey-login")}),a.all("#J_Quick2Static").on("click",function(a){a.halt(),b.cfg.enableLoginByKey=!1,b.abort=!0,b.failureTimes=0,b.io=null})},key2Qrcode:function(){var b=this;b.abort=!0,b.failureTimes=0,b.io=null,b.mode.hide(),a.one("#J_QRCodeLogin").show(),a.one("#J_AkeyLogin").hide(),b.qrLogin?b.qrLogin.make():a.use("login/qrcode/index",function(a,c){b.qrLogin=c(b.cfg)})},start:function(){var b=this;a.IO({url:this.StartURL,type:"get",data:{},timeout:5,dataType:"jsonp",complete:function(a){a&&a.success&&(b.mode.attr("class","akey-login akey-login-ok"),b.t=a.t,b.check())}})},check:function(){if(!this.abort){var b=this,c=a.now();this.io=a.IO({url:this.checkURL,type:"get",timeout:2,cache:!1,data:{t:this.t,defaulturl:this.to},dataType:"jsonp",complete:function(d){if(!b.abort){if(!d||!d.success||!d.code)return b.failureTimes++,void b.check();if(b.failureTimes>=5)return b.mode.attr("class","akey-login akey-login-error"),b.io=null,void(b.failureTimes=0);switch(b.failureTimes=0,d.code){case"10000":b.mode.attr("class","akey-login akey-login-ok");break;case"10003":case"10004":case"10005":b.key2Qrcode();break;case"10006":if(d.url)return void("true"===b.cfg.fullRedirect?(parent.postMessage({redirectURL:d.url},"*"),top.postMessage({redirectURL:d.url},"*"),top.location.href=d.url):window.location.assign(d.url))}var e=b.interval-a.now()+c;"10001"===d.code||"10000"===d.code?a.later(function(){b.check()},e>0?e:0):b.io=null}}})}}}),g},{requires:["event","ua","ajax"]}),KISSY.add("login/sso/index",function(a,b){var c=function(b){return this instanceof c?(this.cfg=b=b||{},this.callback=a.isFunction(b.callback)?b.callback:function(){},void this._init()):new c(b)};return a.augment(c,{_init:function(){b(a.merge(this.cfg,{ul:this.cfg.elSSOBox?this.cfg.elSSOBox.one(".ww-userlist"):null,form:this.cfg.elSSOBox?this.cfg.elSSOBox.one(".ww-form"):null,callback:this.callback}))}}),c},{requires:["login/sso/userlist"]}),KISSY.add("login/sso/userlist",function(a,b,c,d,e,f,g,h){var i=function(b){return this instanceof i?(this.cfg=b=b||{},this.box=b.elSSOBox,this.ul=b.ul,this.form=b.form,this.bCBU=b.bCBU,this.bDaily=b.bDaily,this.bHttps=b.bHttps,this.callback=a.isFunction(b.callback)?b.callback:function(){},this.elButton=a.one("#J_SubmitQuick"),void this._init()):new i(b)};return a.augment(i,{_init:function(){if(this.ul&&this.form){window._sso_st_=a.now(),this.tracknick=f(this.cfg).get(),this.wangwang=g(this.cfg),this.wwUserList=this.wangwang.userlist,window._sso_ww_t_=a.now(),this.wwUserList&&this.wwUserList.length&&(window._submit_t_&&(window._submit_t_.ww=window._sso_ww_t_-window._sso_st_),this._fireReady()),this._ui()}},_fireReady:function(){this._readyFired||(this.callback({stat:"ready"}),this._readyFired=!0)},_ui:function(){return this.usersize=this.wwUserList?this.wwUserList.length:0,this.usersize>1&&(this.ul.addClass("userlists"),this.usersize<4&&this.ul.addClass("userlists-2")),this.usersize?(this._wwui(),this.usersize>3&&(this._initSlideUI(),this._initSlide()),this._bind(),void this._initSelect()):void this.callback({stat:"nouser"})},_initSlideUI:function(){var a='<ul class="ww-trigger"></ul> <div class="trigger-bar"> <a href="javascript:void(0);" title="\u4e0b\u7ffb" class="next iconfont">&#xe612;</a> <a href="javascript:void(0);" title="\u4e0a\u7ffb" class="prev iconfont"> &#xe60c</a> </div>';this.box.one(".trigger").append(a),this.box.addClass(".ww-slide")},_initSlide:function(){this.wwSlide=new h("J_QuickLogin",{eventType:"click",navClass:"ww-trigger",contentClass:"ww-userlist",pannelClass:"ww-tab ",selectedClass:"current",effect:"hSlide",carousel:!1}),this._bindSlideEvent()},_bindSlideEvent:function(){var a=this;this.box.one(".next").on("click",function(){a.wwSlide.next()}),this.box.one(".prev").on("click",function(){a.wwSlide.previous()})},_wwui:function(){if(this.wwUserList&&this.wwUserList.length){var b=this,c=this.wwUserList.length>1?60:80,d='<div class="item-sso-user {cls}"><div class="user-pic"><img src="//wwc.alicdn.com/avatar/getAvatar.do?userNick={nick}&width='+c+"&height="+c+'&type=sns"/></div><div class="user-name" title="{nick}">{nick}</div><input data-index="{index}" data-type="ww" id="ra-{index}" class="r-sso-user r-wwuser " name="user" value="{fullNick}" type="radio" {checked} />  <i class="iconfont icon-ok">&#xe60e;</i></div>',e='<div class="ww-tab">';a.each(this.wwUserList,function(c,f){f>0&&f%3===0?e=e+'</div><div class="ww-tab">'+a.substitute(d,c):f===b.wwUserList.length-1?e=e+a.substitute(d,c)+"</div>":e+=a.substitute(d,c)}),this.ul.append(e)}},_initSelect:function(){this.wwUserList&&this.wwUserList.length&&this.ul.all(".item-sso-user")[0].click()},_bind:function(){var b=this;d.delegate(this.ul,"click",".item-sso-user",function(c){var d=a.one(c.currentTarget),e=a.all("input",d);e[0].checked=!0,b.userIndex=window.parseInt(e.attr("data-index")),b.ul.all(".current").removeClass("current"),d.addClass("current")}),this._login()},_login:function(){var b=this;this.form.on("submit",function(c){c.halt(),window._submit_t_&&window._lgst_&&(window._submit_t_.t1="WANGWANG"===b.loginType?"ww":"havana",window._submit_t_.t2=a.now()),a.isUndefined(b.userIndex)||b.userIndex<0||(!b.button&&b.elButton&&(b.button=e({el:b.elButton})),b.button&&b.button.ing("\u6b63\u5728\u767b\u5f55..."),b._wwLogin())})},_wwLogin:function(){function b(a){var b=d._getValByName(a);b&&e&&(e[a]=b)}var c,d=this,e={};if(this.bCBU)c=a.one("#J_TPL_redirect_url")&&a.one("#J_TPL_redirect_url").val()||"http://china.alibaba.com";else{c=this.bDaily?"http://www.daily.taobao.net":"http://www.taobao.com",e=a.unparam(window.location.search.slice(1)),this.bHttps&&(e.c_isScure=!0),e.quicklogin=!0;var f=window.loginClient;f&&(e.oslanguage=f.lang,e.sr=f.ratio,e.osVer=f.os,e.naviVer=f.browser),b("from"),b("not_duplite_str"),b("guf"),b("wbp"),b("allp"),c+="?"+a.param(e)}window._goldlog_submit_&&window._goldlog_submit_(a.now()),this.wangwang.login(this.userIndex,c,function(a){a||d.switchToStatic("loginerror")})},_getValByName:function(b){return a.isString(b)&&document.getElementsByName(b).length?document.getElementsByName(b)[0].value:void 0},switchToStatic:function(a){this.callback({stat:a}),this.button&&this.button.reset()}}),i},{requires:["dom","node","event","login/submitbutton","login/tracknick","login/sso/wangwang/index","kg/slide/2.0.2/"]}),KISSY.add("login/sso/wangwang/index",function(a,b,c){var d=function(a){return this instanceof d?(a=a||{},this.bCBU=a.bCBU,this.type=this.bCBU?2:1,void this._init()):new d(a)};return a.augment(d,{_init:function(){this.ww=b({type:this.type}),this._getUserList()},_getUserList:function(){this.ww.support&&(this.userlist=this.ww.userlist)},login:function(a,b,c){
this.ww.support&&this.ww.userlist&&this.ww.login(a,b,c)}}),d},{requires:["login/sso/wangwang/wangwang"]}),KISSY.add("login/sso/wangwang/wangwang",function(a){var b=function(){var a;try{a=new window.ActiveXObject("AliIMSSOLogin.SSOLoginCtrl.1")}catch(b){a=window.navigator.plugins["AliSSOLogin plugin"]}return!!a},c=function(d){return this instanceof c?(d=d||{},this.type=a.isNumber(d.type)&&d.type>=0&&d.type<=2?d.type:0,this.sub=d.sub?1:0,this.support=b(),this.ctrl=null,this.userNum=0,this.uid=a.now(),void this._init()):new c(d)};return a.augment(c,{_init:function(){if(this.support){this._create();try{this.ctrl&&this.ctrl.CreateSSOData&&this.ctrl.InitSSOLoginCtrl&&this.ctrl.InitSSOLoginCtrl(this.ctrl.CreateSSOData(),0)}catch(a){}return this._getUserList(),this}},_create:function(){try{this.ctrl=new ActiveXObject("AliIMSSOLogin.SSOLoginCtrl.1")}catch(b){this.ctrl=a.all(a.DOM.create("<object>",{id:"J_WangWangPlugin"+this.uid,type:"application/npAliSSOLogin",width:0,height:0})),this.ctrlWrap=a.one(a.DOM.create("<div>",{style:"width:0;height:0;overflow:hidden;"})),this.ctrlWrap.append(this.ctrl),a.one("body").append(this.ctrlWrap),this.ctrl=this.ctrl[0]}try{this.WWVersion=this.ctrl.GetWWClientVersion(),this.ctrlVersion=this.ctrl.GetSSOLoginCtrlVersion()}catch(b){}},_getUserList:function(){this.oUserList=null,this.userlist=[];var a,b=this.userNum=0;try{if(this.oUserList=this.ctrl.GetUserList(this.type,this.sub),null===this.oUserList)return;for(this.userNum=this.oUserList.GetSize();b<this.userNum&&(a=this.oUserList.GetItemData(b));)this.userlist.push({index:b,nick:a.GetDataStr("strKey_ShortUserID"),fullNick:a.GetDataStr("strKey_FullUserID"),site:a.GetDataStr("strKey_SiteID"),siteDesc:a.GetDataStr("strKey_SiteID_Description")}),b++}catch(c){}return this.userlist},login:function(b,c,d){if(!a.isNumber(b)||!c||0>b||b>this.userNum-1)return void(a.isFunction(d)&&d(!1));var e,f;try{f=this.oUserList.GetItemData(b),f.SetDataStr("strKey_SrcURL",c),e=this.ctrl.Go(0,f),this.retData=e?e.GetDataStr("strKey_GOResult"):null}catch(g){a.log(g.message),e=!1}return a.isFunction(d)&&d(!!e),!!e}}),c},{requires:["dom","node"]}),KISSY.add("login/page",function(a,b,c){var d=a.all,e=d("#J_QuickLogin"),f=d("#J_StaticForm"),g=d("#J_MiserLogin"),h=d("#J_AkeyLogin"),i=d("#J_QRCodeLogin"),j={cfg:{defaultView:"static"},init:function(a){this.initialize(a)},initialize:function(j){function k(){a.use("login/bykey/index",function(a,b){i.hide(),n.keyLogin=b(n.cfg),o.switchTo("sso")})}function l(){a.use("login/miser/index",function(a,b){var c=b(a.merge(n.cfg,{message:n.message}));c.on("miserReady",function(){f.hide(),o.switchTo("static"),n.cfg.enableLoginByKey=!1,a.get("#J_AkeyLogin")&&h.hide()}),c.on("miserError",function(){g.hide(),j.enableLoginByKey?k():j.shownQRCode&&j.enableQRCode?(n.qrlogin||a.use("login/qrcode/index",function(a,b){n.qrLogin=b(n.cfg)}),o.switchTo("sso")):(o.switchTo(j.defaultView),f.show(),f.removeClass("hidden"))})})}function m(){j.enableMiserLogin&&a.UA.os.indexOf("mac")<0?l():j.enableLoginByKey?k():j.shownQRCode&&j.enableQRCode?(n.qrlogin||a.use("login/qrcode/index",function(a,b){n.qrLogin=b(n.cfg)}),o.switchTo("sso")):(o.switchTo(j.defaultView),f.show(),f.removeClass("hidden"))}j&&(this.cfg=a.merge(this.cfg,j));var n=this;this.message=c();var o=b(n.cfg);o.on("switch",function(b){a.get("#J_AkeyLogin")&&!n.cfg.enableLoginByKey&&h.hide();var c=b.module;"sso"!==c||!j.enableQRCode||n.qrLogin||n.cfg.enableLoginByKey?"sso"===c&&n.qrLogin&&(a.get("#J_AkeyLogin")&&h.hide(),i.show(),n.qrLogin.make()):a.use("login/qrcode/index",function(a,b){n.qrLogin=b(n.cfg)})}),d("#J_Sso2Static").on("click",function(a){a.halt(),e.hide(),f.show(),f.removeClass("hidden")}),d("#J_Miser2Static").on("click",function(a){a.halt(),g.hide(),f.show(),f.removeClass("hidden")});var p;a.use("login/nsso",function(a,b){p=b.Static(a.merge(n.cfg,{message:n.message}))}),j.disableQuickLogin?m():a.use("login/sso/index",function(a,b){b(a.merge(n.cfg,{callback:function(a){if(o.ssoTimeout)return void e.hide();switch(a=a||{},a.stat){case"ready":e.show(),f.addClass("hidden"),f.hide(),o.switchTo("static"),n.cfg.enableLoginByKey=!1;break;case"nouser":case"loginfail":case"loginerror":e.hide(),m()}}}))})}};return j},{requires:["login/switcher","login/message"]}),KISSY.use("node, ua",function(a){var b=a.one,c=(a.all,a.unparam(window.location.search.slice(1))),d={elLoginBox:b("#J_LoginBox"),elStaticForm:b("#J_StaticForm"),staticFormAction:b("#J_StaticForm")&&b("#J_StaticForm").attr("action")||"",elUserName:b("#TPL_username_1"),elPassword:b("#TPL_password_1"),elPasswordRSA:b("#TPL_password_2"),elCheckCode:b("#J_CodeInput_i"),elCheckCodeImg:b("#J_StandardCode_m"),elCheckCodeImgHandler:b("#J_StandardCode"),elSSOBox:b("#J_QuickLogin"),elMiserBox:b("#J_MiserLogin"),bMini:c&&c.style?!!c.style.match(/^(?:mini|b2b)/):!1,from:b("#J_From")?b("#J_From").val():"",bCBU:"3"===(a.one("#J_loginsite")?a.one("#J_loginsite").val():""),bDaily:window.location.host.indexOf("daily.taobao.net")>=0?!0:!1,bHttps:"https:"===window.location.protocol,havanaToken:a.all("#J_HToken").val(),fullRedirect:a.all("#J_full_redirect").val()},e=window.loginConfig;if(e){d.elPassword.val("");var f=window.location.hostname.split(".").slice(-2).join(".");-1!==f.indexOf("taobao")&&(document.domain=f),a.use("login/page",function(a,b){b.init(a.merge(e,d))})}}),KISSY.ready(function(a){window._submit_t_={},window._lgrt_=a.now(),KISSY.use("node, event",function(a){a.one(window).on("load",function(){window._lglt_=a.now()})}),window._goldlog_submit_=function(b){var c=a.unparam(window.location.search.slice(1)),d=c&&c.style?c.style.match(/^(?:mini|b2b)/):"";d=d?d[0]:"full";var e=window.goldlog,f=window._lgst_,g=window._lgrt_,h=window._lglt_,i=window._submit_t_,j=window._log_submitted_;if(!j&&b&&e&&e.emit&&f&&g&&h&&i.t1&&i.t2&&i.loading){if(1!==Math.floor(50*Math.random())&&!c.glog)return;var k=i.t2-f,l=g-f;if(b-=f,k>=6e5||b>=6e5||l>=6e5)return;window._log_submitted_=!0;var m={t0:f,rt:l,lt:h-f,t1:i.t1,t2:k,t3:b,l:i.loading-f,s:d};i.ww&&(m.w=i.ww),i.havana&&(m.h=i.havana),e.emit("tbloginact2",m)}}});