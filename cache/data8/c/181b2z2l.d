   �         Qhttps://g.alicdn.com/mui/category-menu/3.0.4/??index.js,count-down.js,triangle.js     %����� �       ����          
     O K           �      Server   Tengine   Content-Type   application/javascript   Date   Tue, 31 Oct 2017 08:30:48 GMT   Vary   Accept-Encoding   x-oss-request-id   59F834B8728F8E8128C1956A   x-oss-object-type   Normal   x-oss-storage-class   Standard   Content-MD5   ZjqD6PFaiHZWlfSIyKewGQ==   x-oss-server-time   0   Cache-Control   max-age=2592000,s-maxage=3600   Access-Control-Allow-Origin   *   X-Source-Scheme   https   Content-Encoding   gzip   Via   Zcache40.l2cm9[36,200-0,M], cache28.l2cm9[36,0], cache7.cn490[0,200-0,H], cache8.cn490[1,0]   Age   2988   X-Cache   'HIT TCP_MEM_HIT dirn:0:98540577 mlen:-1   X-Swift-SaveTime   Tue, 31 Oct 2017 08:30:48 GMT   X-Swift-CacheTime   3600   Timing-Allow-Origin   *   EagleId   7b7d124815094416360366913e KISSY.add("mui/category-menu/index",function(n,e,t,a,i){function r(e,t){var a=this;if(!e)return;a.container=n.one(e);a.config=n.merge(r.Config,t);a._init()}r.Config={triggerType:"mousemove",triggerDelay:600,autoPlay:false,hoverStop:true,navContaienrClass:"mui-menu-nav-container",navClass:"mui-menu-nav",selectedClass:"mui-menu-nav-selected",pannelClass:"mui-menu-pannel",timeout:3,currentNav:-1,forceSelect:false};n.augment(r,e.Target,{_init:function(){var e=this;e.navContainer=e.container.one("."+e.config.navContainerClass);e.navs=e.navContainer.all("."+e.config.navClass);e.pannels=e.container.all("."+e.config.pannelClass);e.forceSelect=e.config.forceSelect;e.minNavIdx=e.forceSelect?0:-1;e.currentNav=e.config.currentNav>=e.minNavIdx&&e.config.currentNav<e.navs.length?e.config.currentNav:e.minNavIdx;e.autoPlay=e.config.forceSelect&&e.config.autoPlay;e.countDown=a.register("Slide"+n.guid());e._initStatus();e._bindEvent()},_initStatus:function(){var n=this;n.navs.each(function(e){e.removeClass(n.config.selectedClass)});n.pannels.each(function(n){n.hide()});if(n.forceSelect){n.navs.item(n.currentNav).addClass(n.config.selectedClass);n.pannels.item(n.currentNav).show()}i.init(n.navContainer,n.navs);n.countDown.pause();if(n.autoPlay){var e=n.navs.item(n.currentNav).attr("data-count")||n.pannels.item(n.currentNav).attr("data-count")||n.config.timeout;n.countDown.set(e);n.countDown.end(function(){n.next()});n.countDown.resume();n.countDown.start()}},_switchTo:function(n){var e=this;e.navs.item(e.currentNav).removeClass(e.config.selectedClass);e.navs.item(n).addClass(e.config.selectedClass);e.pannels.item(e.currentNav).hide();e.pannels.item(n).show();e.currentNav=n},_bindEvent:function(){var e=this;e.navs.each(function(t){t.on(e.config.triggerType,function(t){var a=n.one(t.currentTarget);var r=e._indexOf(a,e.navs);if(t.type=="mousemove"){if(e.currentNav==-1||!i.isInTriangle(t)){e.switchTo(r)}}else if(t.type=="click"||t.type=="tap"){e.switchTo(r)}});if(~e.config.triggerType.indexOf("mousemove")){t.on("mouseenter",function(t){var a=n.one(t.currentTarget);var i=e._indexOf(a,e.navs);var r=n.later(function(){e.switchTo(i)},e.config.triggerDelay);e.navs.data("data-delayTimer",r)});t.on("mouseleave",function(){var n=e.navs.data("data-delayTimer");n&&n.cancel()})}});if(!e.forceSelect){e.container.on("mouseleave",function(n){e.switchTo(-1)});n.one(document).on("tap",function(n){if(!e.container.contains(n.target)){e.switchTo(-1)}})}if(!e.autoPlay)return;e.on("beforeSwitch",function(n){var t=n.nav;var a=n.pannel;var i=t.attr("data-count")||a.attr("data-count")||e.config.timeout;e.countDown.set(i)});e.container.on("mousemove mouseleave",function(n){if(n.type=="mousemove"){e.countDown.pause()}else if(n.type=="mouseleave"){e.countDown.resume()}})},switchTo:function(n){var e=this;if(n<e.minNavIdx&&n>=e.navs.length||n==e.currentNav)return;var t=e.currentNav;var a={oldIndex:t,index:n,oldNav:e.navs.item(t),nav:e.navs.item(n),oldPannel:e.pannels.item(t),pannel:e.pannels.item(n)};e.fire("beforeSwitch",a);e._switchTo(n);e.fire("afterSwitch",a)},next:function(){var n=this;var e=(n.currentNav+1)%n.navs.length;n.switchTo(e)},prev:function(){var n=this;var e=(n.currentNav-1+n.navs.length)%n.navs.length;n.switchTo(e)},_indexOf:function(n,e){for(var t=0;t<e.length;t++){if(e.item(t).getDOMNode()==n.getDOMNode())return t}return-1}});return r},{requires:["event","node","mui/category-menu/count-down","mui/category-menu/triangle"]});KISSY.add("mui/category-menu/count-down",function(e,r){var t={registerTimers:[]};var n={init:function(r){var n=this;n.config=e.merge(t,r);n.registerTimers=n.config.registerTimers},register:function(e,r){var t=this;t.set(e,r);return{start:function(){n.start()},set:function(r){t.set(e,r)},resume:function(){t.resume(e)},pause:function(){t.pause(e)},end:function(r){t.on(e+"End",r)}}},set:function(e,r){var t=this;var n=t._find(e);if(!n){t.registerTimers.push({name:e,pause:false,count:r>0?r:-1})}else{n.count=r}return n},resume:function(e){var r=this;var t=r._find(e);if(!t)return;t.pause=false},pause:function(e){var r=this;var t=r._find(e);if(!t)return;t.pause=true},start:function(){var r=this;r.stop();r.counter=e.later(function(){for(var e=0;e<r.registerTimers.length;e++){var t=r.registerTimers[e];if(!t.pause){if(t.count==0){r.fire(t["name"]+"End")}t.count--}}},1e3,true)},stop:function(){var e=this;e.counter&&e.counter.cancel()},_find:function(e){var r=this;for(var t=0;t<r.registerTimers.length;t++){if(r.registerTimers[t]["name"]===e){return r.registerTimers[t]}}return undefined}};e.mix(n,r.Target);n.init();return n},{requires:["event"]});KISSY.add("mui/category-menu/triangle",function(e,n){var t={init:function(n,t){var i=this;i.container=e.one(n);if(typeof t==="string"){i.navs=i.container.all(t)}else{i.navs=e.all(t)}i.containerOffset=i.container.offset();i.containerBox={width:n.width(),height:n.height()};i.triangle={m:{x:i.containerBox.width,y:i.containerBox.height},n:{x:i.containerBox.width,y:0},p:{x:0,y:i.containerBox.height}};i.navs.each(function(e){e.on("mouseenter",function(e){i.triangle.p=i._getVirtualCoordinate(e)})})},isInTriangle:function(e){var n=this;var t=n._getVirtualCoordinate(e);return t.x>n.triangle.m.x||t.x>=n.triangle.p.x&&(t.y>=n.triangle.p.y&&(n.triangle.m.y-t.y)/(n.triangle.m.x-t.x)>=(n.triangle.m.y-n.triangle.p.y)/(n.triangle.m.x-n.triangle.p.x)||t.y<n.triangle.p.y&&(n.triangle.n.y-t.y)/(n.triangle.n.x-t.x)<(n.triangle.n.y-n.triangle.p.y)/(n.triangle.n.x-n.triangle.p.x))},_getVirtualCoordinate:function(e){var n=this;return{x:e.pageX-n.containerOffset.left,y:n.containerBox.height-(e.pageY-n.containerOffset.top)}}};return t},{requires:["node"]});