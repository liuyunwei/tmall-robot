   �         Fhttps://g.alicdn.com/vip/login/0.5.60/js/??client.js,atp.js?t=20130528     %���{V �       ����               �      
     O K      Server   Tengine   Content-Type   application/javascript   Date   Tue, 31 Oct 2017 09:04:33 GMT   Vary   Accept-Encoding   x-oss-request-id   59F83CA12AEC27803BC7CA76   x-oss-object-type   Normal   x-oss-hash-crc64ecma   9852072085277082526   x-oss-storage-class   Standard   Content-MD5   QZtN8oxoCnJ8bpcnlnmYLw==   x-oss-server-time   2   Cache-Control   max-age=2592000,s-maxage=3600   Access-Control-Allow-Origin   *   X-Source-Scheme   https   Content-Encoding   gzip   Via   ^cache26.l2cn859[25,200-0,M], cache45.l2cn859[26,0], cache1.cn490[0,200-0,H], cache7.cn490[1,0]   Age   883   X-Cache   "HIT TCP_MEM_HIT dirn:-2:-2 mlen:-1   X-Swift-SaveTime   Tue, 31 Oct 2017 09:04:33 GMT   X-Swift-CacheTime   3600   Timing-Allow-Origin   *   EagleId   7b7d124715094415562067310e KISSY.add("client",function(a){var b=navigator,c=b.userAgent,d={ua:a.UA,screen:window.screen,lang:b.language,os:{windows:function(){var a=/(?:.*?)windows nt (\d)\.(\d)(?:.*)/i;return a.test(c)?c.replace(a,"$1.$2"):""}(),macos:function(){var a=/(?:.*?)mac os x (\d+)[\._](\d+)(?:[\._](\d+))?(?:.*)/i;return a.test(c)?c.replace(a,"$1.$2$3"):""}(),ios:function(){var a=/cpu(?: iphone)? os (\d)_(\d)(?:_(\d))?/;return a.test(c)?c.replace(a,"$1.$2$3"):""}(),android:function(){var a=/android (\d)\.(\d)/;return a.test(c)?c.replace(a,"$1.$2"):""}(),chromeos:function(){var a=/cros i686 (\d+)\.(\d+)(?:\.(\d+))?/;return a.test(c)?c.replace(a,"$1.$2$3"):""}(),linux:function(){return c.indexOf("linux")>=0?"NOVER":""}(),windowsce:function(){var b=c.indexOf("windows ce ")>0?/windows ce (\d)\.(\d)/:"windows ce";return a.isString(b)?c.indexOf(b)>=0?"NOVER":"":b.test(c)?c.replace(b,"$1.$2"):""}(),symbian:function(){var a=/symbianos\/(\d+)\.(\d+)/;return a.test(c)?c.replace(a,"$1.$2"):""}(),blackberry:function(){return c.indexOf("blackberry")>=0?"NOVER":""}()}};return a.client=d,d}),KISSY.ready(function(a){a.use("client, node",function(a,b){var c,d,e=b.lang,f=b.screen.width+"*"+b.screen.height;a.each(b.os,function(a,b){switch(b){case"android":case"blackberry":case"chromeos":case"ios":case"linux":case"macos":case"symbian":case"windows":case"windowsce":a&&(c=b+(a&&"NOVER"!==a?"|"+a:""))}}),a.each(b.ua,function(a,b){switch(b){case"ie":case"firefox":case"chrome":case"opera":case"safari":a&&(d=b+(a?"|"+a:""))}});var g=[a.one("#J_Form"),a.one("#J_DynamicForm")];window.loginClient={lang:e,ratio:f,os:c,browser:d},a.each(g,function(a){if(a=a?a[0]:null)try{var b=a.elements.oslanguage,g=a.elements.sr,h=a.elements.osVer,i=a.elements.naviVer;b&&e&&(b.value=e),g&&f&&(g.value=f),h&&c&&(h.value=c),i&&d&&(i.value=d);var j=a.elements.osACN,k=a.elements.osAV,l=a.elements.osPF;j&&(j.value=navigator.appCodeName),k&&(k.value=navigator.appVersion),l&&(l.value=navigator.platform)}catch(m){}})})});KISSY.ready(function(a){a.use("node, event",function(){var b=a.unparam(window.location.search.slice(1)),c=b&&b.style?b.style.match(/^(?:mini|b2b)/):"";c=c?c[0]:"full";var d="https:"===window.location.protocol?"https://log.mmstat.com":"http://log.mmstat.com",e=[d+"/member.2.1.",d+"/member.2.2.",d+"/member.2.3.",d+"/member.2.4.",d+"/member.2.6.",d+"/member.2.7."],f=function(b){var c=b.point,d=b.ok,f=e[b.type?b.type:0],g=new window.Image;g.src=f+c+(a.isUndefined(d)?"":"?ok="+(d?1:0))},g=a.now(),h=window.goldlog;if(function(){try{if(h&&h.emit&&window._lgst_){if(1!==Math.floor(1e3*Math.random())&&!b.glog)return;h.emit("tblogin",{r:g-window._lgst_,s:c})}}catch(a){}}(),a.all("#TPL_username_1").on("blur",function(){f({point:1,ok:this.value.length,type:0})}),a.all("#TPL_password_1").on("blur",function(){f({point:2,ok:this.value.length,type:0})}),a.all("#J_SubmitStatic").on("click",function(){f({point:4,type:0})}),a.all("#J_Quick2Static").on("click",function(){f({point:2,type:2})}),a.all("#J_2QRCode").on("click",function(){f({point:1,type:5})}),a.get("#J_viewFd4PC")){var i=a.one("#J_viewFd4PC").val();if(""!==i){var j=new window.Image;j.src=i}}})});