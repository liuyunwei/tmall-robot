   �         �https://g.alicdn.com/kissy/k/1.4.14/??anim-min.js,anim/base-min.js,promise-min.js,anim/timer-min.js,anim/transition-min.js,io-min.js     %����� �       ����               �      
     O K      Server   Tengine   Content-Type   application/javascript   Date   Tue, 31 Oct 2017 08:26:13 GMT   Vary   Accept-Encoding   x-oss-request-id   59F833A545B8D8A433C2BBA1   x-oss-object-type   Normal   x-oss-storage-class   Standard   Content-MD5   UG6oqjuTsycCTQK+5y5PnA==   x-oss-server-time   0   Cache-Control   max-age=2592000,s-maxage=3600   Access-Control-Allow-Origin   *   X-Source-Scheme   https   Content-Encoding   gzip   Via   Xcache45.l2cm9[0,200-0,H], cache32.l2cm9[0,0], cache6.cn490[0,200-0,H], cache6.cn490[0,0]   Age   3187   X-Cache   (HIT TCP_MEM_HIT dirn:2:453608762 mlen:-1   X-Swift-SaveTime   Tue, 31 Oct 2017 08:26:13 GMT   X-Swift-CacheTime   3600   Timing-Allow-Origin   *   EagleId   7b7d124615094415605615372e /*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 14:46
*/
KISSY.add("anim",["anim/base","anim/timer","anim/transition?"],function(b,g){function a(a,e,d,f,c){if(a.node)c=a;else{"string"===typeof e?(e=b.unparam(""+e,";",":"),b.each(e,function(c,a){var d=b.trim(a);d&&(e[d]=b.trim(c));(!d||d!==a)&&delete e[a]})):e=b.clone(e);if(b.isPlainObject(d))c=b.clone(d);else if(c={complete:c},d&&(c.duration=d),f)c.easing=f;c.node=a;c.to=e}c=b.merge(k,c,{useTransition:b.config("anim/useTransition")});return c.useTransition&&h?new h(c):new i(c)}var j=g("anim/base"),i=g("anim/timer"),
h=g("anim/transition?"),f=j.Utils,k={duration:1,easing:"linear"};b.each(["pause","resume"],function(b){a[b]=function(a,d){return null===d||"string"===typeof d||!1===d?f.pauseOrResumeQueue(a,d,b):f.pauseOrResumeQueue(a,void 0,b)}});a.isRunning=f.isElRunning;a.isPaused=f.isElPaused;a.stop=f.stopEl;a.Easing=i.Easing;b.Anim=a;a.Q=j.Q;return a});
/*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 14:46
*/
KISSY.add("anim/base/queue",["dom"],function(c,i){function h(a,b,c){var b=b||f,j,m=d.data(a,g);!m&&!c&&d.data(a,g,m={});m&&(j=m[b],!j&&!c&&(j=m[b]=[]));return j}var d=i("dom"),g=c.guid("ks-queue-"+c.now()+"-"),f=c.guid("ks-queue-"+c.now()+"-"),a;return a={queueCollectionKey:g,queue:function(a,c,d){a=h(a,c);a.push(d);return a},remove:function(e,b,d){var j=h(e,b,1);j&&(d=c.indexOf(d,j),-1<d&&j.splice(d,1));j&&!j.length&&a.clearQueue(e,b);return j},clearQueues:function(a){d.removeData(a,g)},clearQueue:function(a,
b){var b=b||f,l=d.data(a,g);l&&delete l[b];c.isEmptyObject(l)&&d.removeData(a,g)},dequeue:function(c,b){var d=h(c,b,1);d&&(d.shift(),d.length||a.clearQueue(c,b));return d}}});
KISSY.add("anim/base/utils",["./queue","dom"],function(c,i){var h=i("./queue"),d=i("dom"),g=c.guid("ks-anim-unqueued-"+c.now()+"-"),f=c.guid("ks-anim-paused-"+c.now()+"-");return{saveRunningAnim:function(a){var e=a.node,b=d.data(e,g);b||d.data(e,g,b={});b[c.stamp(a)]=a},removeRunningAnim:function(a){var e=a.node,b=d.data(e,g);b&&(delete b[c.stamp(a)],c.isEmptyObject(b)&&d.removeData(e,g))},isAnimPaused:function(a){var e=d.data(a.node,f);return e?!!e[c.stamp(a)]:0},removePausedAnim:function(a){var e=
a.node,b=d.data(e,f);b&&(delete b[c.stamp(a)],c.isEmptyObject(b)&&d.removeData(e,f))},savePausedAnim:function(a){var e=a.node,b=d.data(e,f);b||d.data(e,f,b={});b[c.stamp(a)]=a},isAnimRunning:function(a){var e=d.data(a.node,g);return e?!!e[c.stamp(a)]:0},isElPaused:function(a){return(a=d.data(a,f))&&!c.isEmptyObject(a)},isElRunning:function(a){return(a=d.data(a,g))&&!c.isEmptyObject(a)},pauseOrResumeQueue:function(a,e,b){a=d.data(a,"resume"===b?f:g);a=c.merge(a);c.each(a,function(a){if(void 0===e||
a.config.queue===e)a[b]()})},stopEl:function(a,e,b,f){b&&(void 0===f?h.clearQueues(a):!1!==f&&h.clearQueue(a,f));a=d.data(a,g);a=c.merge(a);c.each(a,function(a){(void 0===f||a.config.queue===f)&&a.stop(e)})}}});
KISSY.add("anim/base",["dom","./base/utils","./base/queue","promise"],function(c,i){function h(j){h.superclass.constructor.call(this);a.Defer(this);this.config=j;var b=j.node;c.isPlainObject(b)||(b=d.get(j.node));this.node=this.el=b;this._backupProps={};this._propsData={}}var d=i("dom"),g=i("./base/utils"),f=i("./base/queue"),a=i("promise"),e=d.NodeType,b=c.noop,l={toggle:1,hide:1,show:1};c.extend(h,a,{on:function(a,c){"complete"===a?this.then(c):"end"===a?this.fin(c):"step"===a&&this.progress(c);
return this},prepareFx:b,runInternal:function(){var a=this,b=a.config,f=a.node,h,i=a._backupProps,o=a._propsData,k=b.to,r=b.delay||0,p=b.duration;g.saveRunningAnim(a);c.each(k,function(a,d){c.isPlainObject(a)||(a={value:a});o[d]=c.mix({delay:r,easing:b.easing,frame:b.frame,duration:p},a)});if(f.nodeType===e.ELEMENT_NODE){if(k.width||k.height)k=f.style,c.mix(i,{overflow:k.overflow,"overflow-x":k.overflowX,"overflow-y":k.overflowY}),k.overflow="hidden","inline"===d.css(f,"display")&&"none"===d.css(f,
"float")&&(10>c.UA.ieMode?k.zoom=1:k.display="inline-block");var q,n;n="none"===d.css(f,"display");c.each(o,function(c,b){h=c.value;if(l[h]){if("hide"===h&&n||"show"===h&&!n)return a.stop(!0),q=!1;i[b]=d.style(f,b);"toggle"===h&&(h=n?"show":"hide");"hide"===h?(c.value=0,i.display="none"):(c.value=d.css(f,b),d.css(f,b,0),d.show(f))}});if(!1===q)return}a.startTime=c.now();c.isEmptyObject(o)?(a.__totalTime=1E3*p,a.__waitTimeout=setTimeout(function(){a.stop(!0)},a.__totalTime)):(a.prepareFx(),a.doStart())},
isRunning:function(){return g.isAnimRunning(this)},isPaused:function(){return g.isAnimPaused(this)},pause:function(){this.isRunning()&&(this._runTime=c.now()-this.startTime,this.__totalTime-=this._runTime,g.removeRunningAnim(this),g.savePausedAnim(this),this.__waitTimeout?clearTimeout(this.__waitTimeout):this.doStop());return this},doStop:b,doStart:b,resume:function(){var a=this;a.isPaused()&&(a.startTime=c.now()-a._runTime,g.removePausedAnim(a),g.saveRunningAnim(a),a.__waitTimeout?a.__waitTimeout=
setTimeout(function(){a.stop(!0)},a.__totalTime):(a.beforeResume(),a.doStart()));return a},beforeResume:b,run:function(){var a;a=this.config.queue;!1===a?this.runInternal():(a=f.queue(this.node,a,this),1===a.length&&this.runInternal());return this},stop:function(a){var b=this.node,e=this.config.queue;if(this.isResolved()||this.isRejected())return this;this.__waitTimeout&&(clearTimeout(this.__waitTimeout),this.__waitTimeout=0);if(!this.isRunning()&&!this.isPaused())return!1!==e&&f.remove(b,e,this),
this;this.doStop(a);g.removeRunningAnim(this);g.removePausedAnim(this);var h=this.defer;if(a){var i,a=this.config.complete;c.isEmptyObject(i=this._backupProps)||d.css(this.node,i);a&&a.call(this);h.resolve([this])}else h.reject([this]);!1!==e&&(b=f.dequeue(b,e))&&b[0]&&b[0].runInternal();return this}});h.Utils=g;h.Q=f;return h});
/*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 15:04
*/
KISSY.add("promise",[],function(k){function u(a){"undefined"!==typeof console&&console.error&&console.error(a)}function p(a,b,d){if(a instanceof g)q(function(){d.call(a,a[e])});else{var l=a[e],c=a[i];c?c.push([b,d]):m(l)?p(l,b,d):b&&q(function(){b.call(a,l)})}}function f(a){if(!(this instanceof f))return new f(a);this.promise=a||new c;this.promise.defer=this}function m(a){return a&&a instanceof c}function c(a){this[e]=a;void 0===a&&(this[i]=[],this[n]=[])}function g(a){if(a instanceof g)return a;
c.apply(this,arguments);return this}function j(a,b,d){function l(a){try{return b?b.call(this,a):a}catch(d){return u(d.stack||d),new g(d)}}function e(a){try{return d?d.call(this,a):new g(a)}catch(b){return u(b.stack||b),new g(b)}}function o(a){h||a instanceof c||(h=1,r.resolve(l.call(this,a)))}var r=new f,h=0;a instanceof c?p(a,o,function(a){h||(h=1,r.resolve(e.call(this,a)))}):o(a);return r.promise}function s(a){return!t(a)&&m(a)&&void 0===a[i]&&(!m(a[e])||s(a[e]))}function t(a){return m(a)&&void 0===
a[i]&&a[e]instanceof g}var e="__promise_value",q=k.setImmediate,n="__promise_progress_listeners",i="__promise_pendings";f.prototype={constructor:f,resolve:function(a){var b=this.promise,d;if(!(d=b[i]))return null;b[e]=a;d=[].concat(d);b[i]=void 0;b[n]=void 0;k.each(d,function(a){p(b,a[0],a[1])});return a},reject:function(a){return this.resolve(new g(a))},notify:function(a){k.each(this.promise[n],function(b){q(function(){b(a)})})}};c.prototype={constructor:c,then:function(a,b,d){d&&this.progress(d);
return j(this,a,b)},progress:function(a){this[n]&&this[n].push(a);return this},fail:function(a){return j(this,0,a)},fin:function(a){return j(this,function(b){return a(b,!0)},function(b){return a(b,!1)})},done:function(a,b){(a||b?this.then(a,b):this).fail(function(a){setTimeout(function(){throw a;},0)})},isResolved:function(){return s(this)},isRejected:function(){return t(this)}};k.extend(g,c);KISSY.Defer=f;KISSY.Promise=c;c.Defer=f;k.mix(c,{when:j,isPromise:m,isResolved:s,isRejected:t,all:function(a){var b=
a.length;if(!b)return null;for(var d=new f,c=0;c<a.length;c++)(function(c,o){j(c,function(c){a[o]=c;0===--b&&d.resolve(a)},function(a){d.reject(a)})})(a[c],c);return d.promise},async:function(a){return function(){function b(a,b){var h;try{h=e[a](b)}catch(f){return new g(f)}return h.done?h.value:j(h.value,d,c)}function d(a){return b("next",a)}function c(a){return b("throw",a)}var e=a.apply(this,arguments);return d()}}});return c});
/*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 14:46
*/
KISSY.add("anim/timer/easing",[],function(){function j(a){return a}function e(a,b,n,f){var d=3*a-3*n+1,c=3*n-6*a,h=3*a,l=3*b-3*f+1,i=3*f-6*b,j=3*b;return function(a){a:{for(var b=a,f,n,k=0;8>k;k++){n=((d*b+c)*b+h)*b-a;if(m(n)<o){a=b;break a}f=(3*d*b+2*c)*b+h;if(m(f)<o)break;b-=n/f}f=1;k=0;for(b=a;f>k;){n=((d*b+c)*b+h)*b-a;if(m(n)<o)break;0<n?f=b:k=b;b=(f+k)/2}a=b}return((l*a+i)*a+j)*a}}var g=Math.PI,h=Math.pow,b=Math.sin,c=parseFloat,l=/^cubic-bezier\(([^,]+),([^,]+),([^,]+),([^,]+)\)$/i,i={swing:function(a){return-Math.cos(a*
g)/2+0.5},easeNone:j,linear:j,easeIn:function(a){return a*a},ease:e(0.25,0.1,0.25,1),"ease-in":e(0.42,0,1,1),"ease-out":e(0,0,0.58,1),"ease-in-out":e(0.42,0,0.58,1),"ease-out-in":e(0,0.42,1,0.58),toFn:function(a){var b;return(b=a.match(l))?e(c(b[1]),c(b[2]),c(b[3]),c(b[4])):i[a]||j},easeOut:function(a){return(2-a)*a},easeBoth:function(a){return 1>(a*=2)?0.5*a*a:0.5*(1- --a*(a-2))},easeInStrong:function(a){return a*a*a*a},easeOutStrong:function(a){return 1- --a*a*a*a},easeBothStrong:function(a){return 1>
(a*=2)?0.5*a*a*a*a:0.5*(2-(a-=2)*a*a*a)},elasticIn:function(a){return 0===a||1===a?a:-(h(2,10*(a-=1))*b(2*(a-0.075)*g/0.3))},elasticOut:function(a){return 0===a||1===a?a:h(2,-10*a)*b(2*(a-0.075)*g/0.3)+1},elasticBoth:function(a){return 0===a||2===(a*=2)?a:1>a?-0.5*h(2,10*(a-=1))*b(2*(a-0.1125)*g/0.45):0.5*h(2,-10*(a-=1))*b(2*(a-0.1125)*g/0.45)+1},backIn:function(a){1===a&&(a-=0.001);return a*a*(2.70158*a-1.70158)},backOut:function(a){return(a-=1)*a*(2.70158*a+1.70158)+1},backBoth:function(a){var b,
n=(b=2.5949095)+1;return 1>(a*=2)?0.5*a*a*(n*a-b):0.5*((a-=2)*a*(n*a+b)+2)},bounceIn:function(a){return 1-i.bounceOut(1-a)},bounceOut:function(a){return a<1/2.75?7.5625*a*a:a<2/2.75?7.5625*(a-=1.5/2.75)*a+0.75:a<2.5/2.75?7.5625*(a-=2.25/2.75)*a+0.9375:7.5625*(a-=2.625/2.75)*a+0.984375},bounceBoth:function(a){return 0.5>a?0.5*i.bounceIn(2*a):0.5*i.bounceOut(2*a-1)+0.5}},o=1.0E-6,m=Math.abs;return i});
KISSY.add("anim/timer/manager",[],function(j){var e=j.stamp,g,h;g=function(b){return setTimeout(b,15)};h=function(b){clearTimeout(b)};return{runnings:{},timer:null,start:function(b){var c=e(b);this.runnings[c]||(this.runnings[c]=b,this.startTimer())},stop:function(b){this.notRun(b)},notRun:function(b){delete this.runnings[e(b)];j.isEmptyObject(this.runnings)&&this.stopTimer()},pause:function(b){this.notRun(b)},resume:function(b){this.start(b)},startTimer:function(){var b=this;b.timer||(b.timer=g(function l(){b.runFrames()?
b.stopTimer():b.timer=g(l)}))},stopTimer:function(){var b=this.timer;b&&(h(b),this.timer=0)},runFrames:function(){var b,c,h=this.runnings;for(b in h)h[b].frame();for(b in h){c=0;break}return void 0===c}}});
KISSY.add("anim/timer/fx",["dom"],function(j,e){function g(b){j.mix(this,b);this.pos=0;this.unit=this.unit||""}var h=e("dom");g.prototype={isCustomFx:0,constructor:g,load:function(b){j.mix(this,b);this.pos=0;this.unit=this.unit||""},frame:function(b){if(1!==this.pos){var c=this.anim,g=this.prop,i=c.node,e=this.from,m=this.propData,a=this.to;if(void 0===b)var k=j.now(),b=m.duration,k=k-c.startTime-m.delay,b=0>=k?0:k>=b?1:m.easing(k/b);this.pos=b;e===a||0===b||(this.val=e=this.interpolate(e,a,this.pos),
m.frame?m.frame.call(this,c,this):this.isCustomFx||(void 0===e?(this.pos=1,e=a):e+=this.unit,this.val=e,"attr"===this.type?h.attr(i,g,e,1):h.css(i,g,e)))}},interpolate:function(b,c,h){if("number"===typeof b&&"number"===typeof c)return Math.round(1E5*(b+(c-b)*h))/1E5},cur:function(){var b=this.prop,c,e,g=this.anim.node;if(this.isCustomFx)return g[b]||0;if(!(c=this.type))c=this.type=(!g.style||null==g.style[b])&&null!=h.attr(g,b,void 0,1)?"attr":"css";b="attr"===c?h.attr(g,b,void 0,1):h.css(g,b);return isNaN(e=
parseFloat(b))?!b||"auto"===b?0:b:e}};g.Factories={};g.FxTypes={};g.getFx=function(b){var c=g,h,e;if(h=b.fxType)c=g.FxTypes[h];else if(!b.isCustomFx&&(e=g.Factories[b.prop]))c=e;return new c(b)};return g});
KISSY.add("anim/timer/short-hand",[],function(){return{background:[],border:["borderBottomWidth","borderLeftWidth","borderRightWidth","borderTopWidth"],borderBottom:["borderBottomWidth"],borderLeft:["borderLeftWidth"],borderTop:["borderTopWidth"],borderRight:["borderRightWidth"],font:["fontSize","fontWeight"],margin:["marginBottom","marginLeft","marginRight","marginTop"],padding:["paddingBottom","paddingLeft","paddingRight","paddingTop"]}});
KISSY.add("anim/timer/color",["./fx","./short-hand"],function(j,e){function g(b){var b=b+"",f;if(f=b.match(m))return[parseInt(f[1]),parseInt(f[2]),parseInt(f[3])];if(f=b.match(a))return[parseInt(f[1]),parseInt(f[2]),parseInt(f[3]),parseInt(f[4])];if(f=b.match(k)){for(b=1;b<f.length;b++)2>f[b].length&&(f[b]+=f[b]);return[parseInt(f[1],l),parseInt(f[2],l),parseInt(f[3],l)]}return o[b=b.toLowerCase()]?o[b]:[255,255,255]}function h(){h.superclass.constructor.apply(this,arguments)}var b=e("./fx"),c=e("./short-hand"),
l=16,i=Math.floor,o={black:[0,0,0],silver:[192,192,192],gray:[128,128,128],white:[255,255,255],maroon:[128,0,0],red:[255,0,0],purple:[128,0,128],fuchsia:[255,0,255],green:[0,128,0],lime:[0,255,0],olive:[128,128,0],yellow:[255,255,0],navy:[0,0,128],blue:[0,0,255],teal:[0,128,128],aqua:[0,255,255]},m=/^rgb\(([0-9]+)\s*,\s*([0-9]+)\s*,\s*([0-9]+)\)$/i,a=/^rgba\(([0-9]+)\s*,\s*([0-9]+)\s*,\s*([0-9]+),\s*([0-9]+)\)$/i,k=/^#?([0-9A-F]{1,2})([0-9A-F]{1,2})([0-9A-F]{1,2})$/i;c.background.push("backgroundColor");
c.borderColor=["borderBottomColor","borderLeftColor","borderRightColor","borderTopColor"];c.border.push("borderBottomColor","borderLeftColor","borderRightColor","borderTopColor");c.borderBottom.push("borderBottomColor");c.borderLeft.push("borderLeftColor");c.borderRight.push("borderRightColor");c.borderTop.push("borderTopColor");j.extend(h,b,{load:function(){h.superclass.load.apply(this,arguments);this.from&&(this.from=g(this.from));this.to&&(this.to=g(this.to))},interpolate:function(a,b,d){var k=
h.superclass.interpolate;if(3===a.length&&3===b.length)return"rgb("+[i(k(a[0],b[0],d)),i(k(a[1],b[1],d)),i(k(a[2],b[2],d))].join(", ")+")";if(4===a.length||4===b.length)return"rgba("+[i(k(a[0],b[0],d)),i(k(a[1],b[1],d)),i(k(a[2],b[2],d)),i(k(a[3]||1,b[3]||1,d))].join(", ")+")"}});j.each("backgroundColor,borderBottomColor,borderLeftColor,borderRightColor,borderTopColor,color,outlineColor".split(","),function(a){b.Factories[a]=h});return b.FxTypes.color=h});
KISSY.add("anim/timer/transform",["dom","./fx"],function(j,e){function g(a){a=a.split(/,/);return a=j.map(a,function(a){return b(a)})}function h(){return{translateX:0,translateY:0,rotate:0,skewX:0,skewY:0,scaleX:1,scaleY:1}}function b(a){return Math.round(1E5*parseFloat(a))/1E5}function c(a){for(var a=a.split(")"),k=j.trim,n=-1,f=a.length-1,d,e,c=h();++n<f;)switch(d=a[n].split("("),e=k(d[0]),d=d[1],e){case "translateX":case "translateY":case "scaleX":case "scaleY":c[e]=b(d);break;case "rotate":case "skewX":case "skewY":var i=
b(d);j.endsWith(d,"deg")||(i=180*i/Math.PI);c[e]=i;break;case "translate":case "translate3d":d=d.split(",");c.translateX=b(d[0]);c.translateY=b(d[1]||0);break;case "scale":d=d.split(",");c.scaleX=b(d[0]);c.scaleY=b(d[1]||d[0]);break;case "matrix":return a=d,a=g(a),f=n=k=void 0,e=a[0],c=a[1],d=a[2],i=a[3],e*i-c*d?(k=Math.sqrt(e*e+c*c),f=(e*d+c*i)/(e*i-d*c),n=(e*i-c*d)/k,e*i<c*d&&(f=-f,k=-k)):k=n=f=0,{translateX:b(a[4]),translateY:b(a[5]),rotate:b(180*Math.atan2(c,e)/Math.PI),skewX:b(180*Math.atan(f)/
Math.PI),skewY:0,scaleX:b(k),scaleY:b(n)}}return c}function l(){l.superclass.constructor.apply(this,arguments)}var i=e("dom"),o=e("./fx"),m=j.Features.isTransform3dSupported()?"translate3d({translateX}px,{translateY}px,0)":"translate({translateX}px,{translateY}px)";j.extend(l,o,{load:function(){l.superclass.load.apply(this,arguments);this.from=(this.from=i.style(this.anim.node,"transform")||this.from)&&"none"!==this.from?c(this.from):h();this.to=this.to?c(this.to):h()},interpolate:function(a,b,c){var f=
l.superclass.interpolate,d={};d.translateX=f(a.translateX,b.translateX,c);d.translateY=f(a.translateY,b.translateY,c);d.rotate=f(a.rotate,b.rotate,c);d.skewX=f(a.skewX,b.skewX,c);d.skewY=f(a.skewY,b.skewY,c);d.scaleX=f(a.scaleX,b.scaleX,c);d.scaleY=f(a.scaleY,b.scaleY,c);return j.substitute(m+" rotate({rotate}deg) skewX({skewX}deg) skewY({skewY}deg) scale({scaleX},{scaleY})",d)}});return o.Factories.transform=l});
KISSY.add("anim/timer","dom,./base,./timer/easing,./timer/manager,./timer/fx,./timer/short-hand,./timer/color,./timer/transform".split(","),function(j,e){function g(){var a;g.superclass.constructor.apply(this,arguments);j.each(a=this.to,function(b,c){var d=m(c);if(c!==d){a[d]=a[c];delete a[c]}})}var h=e("dom"),b=e("./base"),c=e("./timer/easing"),l=e("./timer/manager"),i=e("./timer/fx"),o=e("./timer/short-hand");e("./timer/color");e("./timer/transform");var m=h._camelCase,a=/^([+\-]=)?([\d+.\-]+)([a-z%]*)$/i;
j.extend(g,b,{prepareFx:function(){var b=this.node,e=this._propsData;j.each(e,function(a){a.duration=a.duration*1E3;a.delay=a.delay*1E3;if(typeof a.easing==="string")a.easing=c.toFn(a.easing)});j.each(o,function(a,c){var d,f=e[c],g;if(f){g=f.value;d={};j.each(a,function(a){d[a]=h.css(b,a)});h.css(b,c,g);j.each(d,function(a,c){c in e||(e[c]=j.merge(f,{value:h.css(b,c)}));h.css(b,c,a)});delete e[c]}});var f,d,g,l,m,p,r,u=0,q;j.isPlainObject(b)&&(u=1);for(f in e){d=e[f];g=d.value;p={isCustomFx:u,prop:f,
anim:this,fxType:d.fxType,type:d.type,propData:d};r=i.getFx(p);l=g;m=r.cur();g=g+"";q="";if(g=g.match(a)){l=parseFloat(g[2]);if((q=g[3])&&q!=="px"&&m){var s=0,t=l;do{++t;h.css(b,f,t+q);s=r.cur()}while(s===0);m=t/s*m;h.css(b,f,m+q)}g[1]&&(l=(g[1]==="-="?-1:1)*l+m)}p.from=m;p.to=l;p.unit=q;r.load(p);d.fx=r}},frame:function(){var a,b=1,c,d=this._propsData;for(a in d){c=d[a];c=c.fx;c.frame();if(this.isRejected()||this.isResolved())return;b=b&c.pos===1}d=j.now();a=this.config.duration*1E3;d=Math.max(0,
this.startTime+a-d);this.defer.notify([this,1-(d/a||0),d]);b&&this.stop(b)},doStop:function(a){var b,c=this._propsData;l.stop(this);if(a)for(b in c){a=c[b];(a=a.fx)&&a.frame(1)}},doStart:function(){l.start(this)}});g.Easing=c;g.Fx=i;return g});
/*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 14:46
*/
KISSY.add("anim/transition",["dom","./base"],function(k,n,x,q){function r(a,c){return c.toUpperCase()}function o(a){-1!==a.indexOf("-")&&(a=a.replace(s,r));if(a in g)return g[a];if(!m||a in m)g[a]={propertyName:a,propertyNamePrefix:""};else{for(var c=a.charAt(0).toUpperCase()+a.slice(1),d,b=0;b<t;b++){var e=p[b];d=e+c;d in m&&(g[a]={propertyName:d,propertyNamePrefix:e})}g[a]=g[a]||null}return g[a]}function u(a){var c="";h.each(a,function(a,b){c&&(c+=",");c+=b+" "+a.duration+"s "+a.easing+" "+a.delay+
"s"});return c}function v(a){return a.replace(/[A-Z]/g,function(a){return"-"+a.toLowerCase()})}function i(a,c,d,b,e){if(!(this instanceof i))return new i(a,c,d,b,e);i.superclass.constructor.apply(this,arguments)}var s=/-([a-z])/ig,p=["Webkit","Moz","O","ms"],t=p.length,g={},m=document.documentElement.style,h=k,j=n("dom"),k=n("./base"),l=o("transition").propertyName,w={ease:1,linear:1,"ease-in":1,"ease-out":1,"ease-in-out":1};h.extend(i,k,{prepareFx:function(){var a=this._propsData,c={},d,b;for(b in a)d=
a[b],"string"===typeof d.easing?!h.startsWith(d.easing,"cubic-bezier")&&!w[d.easing]&&(d.easing="linear"):d.easing="linear",(d=o(b))&&(c[v(d.propertyName)]=a[b]);this._propsData=c},doStart:function(){var a=this,c=a.node,d=c.style,b=a._propsData,e=d[l],f=0,g={};h.each(b,function(a,b){var d=a.value;j.css(c,b,j.css(c,b));g[b]=d;f=Math.max(a.duration+a.delay,f)});-1!==e.indexOf("none")?e="":e&&(e+=",");d[l]=e+u(b);setTimeout(function(){j.css(c,g)},0);a._transitionEndTimer=setTimeout(function(){a.stop(!0)},
1E3*f)},beforeResume:function(){var a=this._propsData,c=h.merge(a),d=this._runTime/1E3;h.each(c,function(b,c){var f=d;b.delay>=f?b.delay-=f:(f-=b.delay,b.delay=0,b.duration>=f?b.duration-=f:delete a[c])})},doStop:function(a){var c=this.node,d=c.style,b=this._propsData,e=[],f={};this._transitionEndTimer&&(clearTimeout(this._transitionEndTimer),this._transitionEndTimer=null);h.each(b,function(b,d){a||(f[d]=j.css(c,d));e.push(d)});b=h.trim(d[l].replace(RegExp("(^|,)\\s*(?:"+e.join("|")+")\\s+[^,]+",
"gi"),"$1")).replace(/^,|,,|,$/g,"")||"none";d[l]=b;j.css(c,f)}});h.mix(i,k.Statics);q.exports=i});
/*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 15:03
*/
KISSY.add("io/form-serializer",["dom"],function(d,f){function i(a){return a.replace(h,"\r\n")}var k=f("dom"),g=/^(?:select|textarea)/i,h=/\r?\n/g,a,c=/^(?:color|date|datetime|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i;return a={serialize:function(c,e){return d.param(a.getFormData(c),void 0,void 0,e||!1)},getFormData:function(a){var e=[],m={};d.each(k.query(a),function(l){l=l.elements?d.makeArray(l.elements):[l];e.push.apply(e,l)});e=d.filter(e,function(l){return l.name&&
!l.disabled&&(l.checked||g.test(l.nodeName)||c.test(l.type))});d.each(e,function(l){var a=k.val(l),b;null!==a&&(a=d.isArray(a)?d.map(a,i):i(a),b=m[l.name],void 0===b?m[l.name]=a:(d.isArray(b)||(b=m[l.name]=[b]),b.push.apply(b,d.makeArray(a))))});return m}}});
KISSY.add("io/base",["event/custom","promise"],function(d,f){function i(b){var a=b.context;delete b.context;b=d.mix(d.clone(n),b,{deep:!0});b.context=a||b;var l,j=b.type,g=b.dataType,a=b.uri=m.resolve(b.url);b.uri.setQuery("");"crossDomain"in b||(b.crossDomain=!b.uri.isSameOriginAs(m));j=b.type=j.toUpperCase();b.hasContent=!e.test(j);if(b.processData&&(l=b.data)&&"string"!==typeof l)b.data=d.param(l,void 0,void 0,b.serializeArray);g=b.dataType=d.trim(g||"*").split(c);!("cache"in b)&&d.inArray(g[0],
["script","jsonp"])&&(b.cache=!1);b.hasContent||(b.data&&a.query.add(d.unparam(b.data)),!1===b.cache&&a.query.set("_ksTS",d.now()+"_"+d.guid()));return b}function k(b){var a=this;if(!(a instanceof k))return new k(b);h.call(a);b=i(b);d.mix(a,{responseData:null,config:b||{},timeoutTimer:null,responseText:null,responseXML:null,responseHeadersString:"",responseHeaders:null,requestHeaders:{},readyState:0,state:0,statusText:null,status:0,transport:null});h.Defer(a);var c;k.fire("start",{ajaxConfig:b,io:a});
c=new (l[b.dataType[0]]||l["*"])(a);a.transport=c;b.contentType&&a.setRequestHeader("Content-Type",b.contentType);var n=b.dataType[0],e,j=b.timeout,g=b.context,m=b.headers,f=b.accepts;a.setRequestHeader("Accept",n&&f[n]?f[n]+("*"===n?"":", */*; q=0.01"):f["*"]);for(e in m)a.setRequestHeader(e,m[e]);if(b.beforeSend&&!1===b.beforeSend.call(g,a,b))return a;a.readyState=1;k.fire("send",{ajaxConfig:b,io:a});b.async&&0<j&&(a.timeoutTimer=setTimeout(function(){a.abort("timeout")},1E3*j));try{a.state=1,c.send()}catch(q){2>
a.state&&a._ioReady(-1,q.message||"send error")}return a}var g=f("event/custom"),h=f("promise"),a=/^(?:about|app|app\-storage|.+\-extension|file|widget)$/,c=/\s+/,j=function(b){return b},e=/^(?:GET|HEAD)$/,m=new d.Uri((d.Env.host.location||{}).href),a=m&&a.test(m.getScheme()),l={},n={type:"GET",contentType:"application/x-www-form-urlencoded; charset=UTF-8",async:!0,serializeArray:!0,processData:!0,accepts:{xml:"application/xml, text/xml",html:"text/html",text:"text/plain",json:"application/json, text/javascript",
"*":"*/*"},converters:{text:{json:d.parseJson,html:j,text:j,xml:d.parseXML}},headers:{"X-Requested-With":"XMLHttpRequest"},contents:{xml:/xml/,html:/html/,json:/json/}};n.converters.html=n.converters.text;d.mix(k,g.Target);d.mix(k,{isLocal:a,setupConfig:function(b){d.mix(n,b,{deep:!0})},setupTransport:function(b,a){l[b]=a},getTransport:function(b){return l[b]},getConfig:function(){return n}});return k});
KISSY.add("io/xhr-transport-base",["./base"],function(d,f){function i(a,n){try{return new (n||h).XMLHttpRequest}catch(b){}}function k(a){var n;a.ifModified&&(n=a.uri,!1===a.cache&&(n=n.clone(),n.query.remove("_ksTS")),n=n.toString());return n}var g=f("./base"),h=d.Env.host,a=7<d.UA.ieMode&&h.XDomainRequest,c={proto:{}},j={},e={};g.__lastModifiedCached=j;g.__eTagCached=e;c.nativeXhr=h.ActiveXObject?function(l,n){var b;if(!m&&l&&a)b=new a;else if(!(b=!g.isLocal&&i(l,n)))a:{try{b=new (n||h).ActiveXObject("Microsoft.XMLHTTP");
break a}catch(c){}b=void 0}return b}:i;c.XDomainRequest_=a;var m=c.supportCORS="withCredentials"in c.nativeXhr();d.mix(c.proto,{sendInternal:function(){var l=this,c=l.io,b=c.config,o=l.nativeXhr,g=b.files,h=g?"post":b.type,f=b.async,i,t=c.mimeType,p=c.requestHeaders||{},c=c._getUrlForSend(),u=k(b),q,v;if(u){if(q=j[u])p["If-Modified-Since"]=q;if(q=e[u])p["If-None-Match"]=q}(i=b.username)?o.open(h,c,f,i,b.password):o.open(h,c,f);h=b.xhrFields||{};"withCredentials"in h&&(m||delete h.withCredentials);
for(v in h)try{o[v]=h[v]}catch(x){}t&&o.overrideMimeType&&o.overrideMimeType(t);!1===p["X-Requested-With"]&&delete p["X-Requested-With"];if("undefined"!==typeof o.setRequestHeader)for(v in p)o.setRequestHeader(v,p[v]);var w=b.hasContent&&b.data||null;g&&(t=w,p={},t&&(p=d.unparam(t)),p=d.mix(p,g),w=new FormData,d.each(p,function(a,l){d.isArray(a)?d.each(a,function(a){w.append(l+(b.serializeArray?"[]":""),a)}):w.append(l,a)}));o.send(w);!f||4===o.readyState?l._callback():a&&o instanceof a?(o.onload=
function(){o.readyState=4;o.status=200;l._callback()},o.onerror=function(){o.readyState=4;o.status=500;l._callback()}):o.onreadystatechange=function(){l._callback()}},abort:function(){this._callback(0,1)},_callback:function(l,c){var b=this.nativeXhr,o=this.io,m,h,f,i,t,p=o.config;try{if(c||4===b.readyState)if(a&&b instanceof a?(b.onerror=d.noop,b.onload=d.noop):b.onreadystatechange=d.noop,c)4!==b.readyState&&b.abort();else{m=k(p);var u=b.status;a&&b instanceof a||(o.responseHeadersString=b.getAllResponseHeaders());
m&&(h=b.getResponseHeader("Last-Modified"),f=b.getResponseHeader("ETag"),h&&(j[m]=h),f&&(e[f]=f));if((t=b.responseXML)&&t.documentElement)o.responseXML=t;var q=o.responseText=b.responseText;if(p.files&&q){var v,x;if(-1!==(v=q.indexOf("<body>")))x=q.lastIndexOf("</body>"),-1===x&&(x=q.length),q=q.slice(v+6,x);o.responseText=d.unEscapeHtml(q)}try{i=b.statusText}catch(w){i=""}!u&&g.isLocal&&!p.crossDomain?u=o.responseText?200:404:1223===u&&(u=204);o._ioReady(u,i)}}catch(A){b.onreadystatechange=d.noop,
c||o._ioReady(-1,A.message||"process error")}}});return c});
KISSY.add("io/xdr-flash-transport",["./base","dom"],function(d,f){function i(a,d,b){m||(m=!0,a='<object id="'+c+'" type="application/x-shockwave-flash" data="'+a+'" width="0" height="0"><param name="movie" value="'+a+'" /><param name="FlashVars" value="yid='+d+"&uid="+b+'&host=KISSY.IO" /><param name="allowScriptAccess" value="always" /></object>',d=e.createElement("div"),h.prepend(d,e.body||e.documentElement),d.innerHTML=a)}function k(a){this.io=a}var g=f("./base"),h=f("dom"),a={},c="io_swf",j,e=
d.Env.host.document,m=!1;d.augment(k,{send:function(){var c=this,e=c.io,b=e.config;i((b.xdr||{}).src||d.Config.base+"io/assets/io.swf",1,1);j?(c._uid=d.guid(),a[c._uid]=c,j.send(e._getUrlForSend(),{id:c._uid,uid:c._uid,method:b.type,data:b.hasContent&&b.data||{}})):setTimeout(function(){c.send()},200)},abort:function(){j.abort(this._uid)},_xdrResponse:function(c,d){var b,e=d.id,m,j=d.c,g=this.io;if(j&&(m=j.responseText))g.responseText=decodeURI(m);switch(c){case "success":b={status:200,statusText:"success"};
delete a[e];break;case "abort":delete a[e];break;case "timeout":case "transport error":case "failure":delete a[e],b={status:"status"in j?j.status:500,statusText:j.statusText||c}}b&&g._ioReady(b.status,b.statusText)}});g.applyTo=function(a,c,b){var a=c.split(".").slice(1),e=g;d.each(a,function(a){e=e[a]});e.apply(null,b)};g.xdrReady=function(){j=e.getElementById(c)};g.xdrResponse=function(c,d){var b=a[d.uid];b&&b._xdrResponse(c,d)};return k});
KISSY.add("io/sub-domain-transport",["event/dom","dom","./xhr-transport-base"],function(d,f){function i(a){var c=a.config;this.io=a;c.crossDomain=!1}function k(){var a=this.io.config.uri.getHostname(),a=j[a];a.ready=1;g.detach(a.iframe,"load",k,this);this.send()}var g=f("event/dom"),h=f("dom"),a=f("./xhr-transport-base"),c=d.Env.host.document,j={};d.augment(i,a.proto,{send:function(){var e=this.io.config,m=e.uri,l=m.getHostname(),n;n=j[l];var b="/sub_domain_proxy.html";e.xdr&&e.xdr.subDomain&&e.xdr.subDomain.proxy&&
(b=e.xdr.subDomain.proxy);n&&n.ready?(this.nativeXhr=a.nativeXhr(0,n.iframe.contentWindow))&&this.sendInternal():(n?e=n.iframe:(n=j[l]={},e=n.iframe=c.createElement("iframe"),h.css(e,{position:"absolute",left:"-9999px",top:"-9999px"}),h.prepend(e,c.body||c.documentElement),n=new d.Uri,n.setScheme(m.getScheme()),n.setPort(m.getPort()),n.setHostname(l),n.setPath(b),e.src=n.toString()),g.on(e,"load",k,this))}});return i});
KISSY.add("io/xhr-transport",["./base","./xhr-transport-base","./xdr-flash-transport","./sub-domain-transport"],function(d,f){function i(e){var m=e.config,l=m.crossDomain,n=m.xdr||{},b=n.subDomain=n.subDomain||{};this.io=e;if(l&&!g.supportCORS){m=m.uri.getHostname();if(c.domain&&d.endsWith(m,c.domain)&&!1!==b.proxy)return new a(e);if("flash"===""+n.use||!j)return new h(e)}this.nativeXhr=g.nativeXhr(l);return this}var k=f("./base"),g=f("./xhr-transport-base"),h=f("./xdr-flash-transport"),a=f("./sub-domain-transport"),
c=d.Env.host.document,j=g.XDomainRequest_;d.augment(i,g.proto,{send:function(){this.sendInternal()}});k.setupTransport("*",i);return k});
KISSY.add("io/script-transport",["./base"],function(d,f){function i(d){if(!d.config.crossDomain)return new (k.getTransport("*"))(d);this.io=d;return this}var k=f("./base");k.setupConfig({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/javascript|ecmascript/},converters:{text:{script:function(g){d.globalEval(g);return g}}}});d.augment(i,{send:function(){var g=this,h=g.io,a=h.config;g.script=d.getScript(h._getUrlForSend(),
{charset:a.scriptCharset,success:function(){g._callback("success")},error:function(){g._callback("error")}})},_callback:function(d,h){var a=this.io;this.script&&(this.script=void 0,h||("error"!==d?a._ioReady(200,"success"):"error"===d&&a._ioReady(500,"script error")))},abort:function(){this._callback(0,1)}});k.setupTransport("script",i);return k});
KISSY.add("io/jsonp",["./base"],function(d,f){var i=f("./base"),k=d.Env.host;i.setupConfig({jsonp:"callback",jsonpCallback:function(){return d.guid("jsonp")}});i.on("start",function(g){var h=g.io,a=h.config,g=a.dataType;if("jsonp"===g[0]){delete a.contentType;var c,j=a.jsonpCallback,e="function"===typeof j?j():j,m=k[e];a.uri.query.set(a.jsonp,e);k[e]=function(a){1<arguments.length&&(a=d.makeArray(arguments));c=[a]};h.fin(function(){k[e]=m;if(void 0===m)try{delete k[e]}catch(a){}else c&&m(c[0])});
h=a.converters;h.script=h.script||{};h.script.json=function(){if(!c)throw Error("not call jsonpCallback: "+e);return c[0]};g.length=2;g[0]="script";g[1]="json"}});return i});
KISSY.add("io/form",["./base","dom","./form-serializer"],function(d,f){var i=f("./base"),k=f("dom"),g=f("./form-serializer"),h=Array.prototype.slice,a=d.Env.host.FormData;i.on("start",function(c){var j,e,c=c.io.config;if(e=c.form){j=k.get(e);e=c.data;for(var m=!1,l={},n=k.query("input",j),b=0,o=n.length;b<o;b++){var f=n[b];if("file"===f.type.toLowerCase()){m=!0;if(!a)break;var i=h.call(f.files,0);l[k.attr(f,"name")]=1<i.length?i:i[0]||null}}m&&a&&(c.files=c.files||{},d.mix(c.files,l),delete c.contentType);
!m||a?(j=g.getFormData(j),c.hasContent?(j=d.param(j,void 0,void 0,c.serializeArray),c.data=e?c.data+("&"+j):j):c.uri.query.add(j)):(e=c.dataType,c=e[0],"*"===c&&(c="text"),e.length=2,e[0]="iframe",e[1]=c)}});return i});
KISSY.add("io/iframe-transport",["dom","./base","event/dom"],function(d,f){function i(a){var c=d.guid("io-iframe"),e=h.getEmptyIframeSrc(),a=a.iframe=h.create("<iframe "+(e?' src="'+e+'" ':"")+' id="'+c+'" name="'+c+'" style="position:absolute;left:-9999px;top:-9999px;"/>');h.prepend(a,j.body||j.documentElement);return a}function k(a,c,e){var b=[],g,f,i,k;d.each(a,function(a,m){g=d.isArray(a);f=d.makeArray(a);for(i=0;i<f.length;i++)k=j.createElement("input"),k.type="hidden",k.name=m+(g&&e?"[]":""),
k.value=f[i],h.append(k,c),b.push(k)});return b}function g(a){this.io=a}var h=f("dom"),a=f("./base"),c=f("event/dom"),j=d.Env.host.document,e=d.clone(a.getConfig().converters.text);e.json=function(a){return d.parseJson(d.unEscapeHtml(a))};a.setupConfig({converters:{iframe:e,text:{iframe:function(a){return a}},xml:{iframe:function(a){return a}}}});d.augment(g,{send:function(){function a(){c.on(f,"load error",e._callback,e);s.submit()}var e=this,j=e.io,b=j.config,g,f,r,z=b.data,s=h.get(b.form);e.attrs=
{target:h.attr(s,"target")||"",action:h.attr(s,"action")||"",encoding:h.attr(s,"encoding"),enctype:h.attr(s,"enctype"),method:h.attr(s,"method")};e.form=s;f=i(j);h.attr(s,{target:f.id,action:j._getUrlForSend(),method:"post",enctype:"multipart/form-data",encoding:"multipart/form-data"});z&&(r=d.unparam(z));r&&(g=k(r,s,b.serializeArray));e.fields=g;6===d.UA.ie?setTimeout(a,0):a()},_callback:function(a){var e=this,j=e.form,b=e.io,a=a.type,g,f=b.iframe;if(f)if("abort"===a&&6===d.UA.ie?setTimeout(function(){h.attr(j,
e.attrs)},0):h.attr(j,e.attrs),h.remove(this.fields),c.detach(f),setTimeout(function(){h.remove(f)},30),b.iframe=null,"load"===a)try{if((g=f.contentWindow.document)&&g.body)b.responseText=h.html(g.body),d.startsWith(b.responseText,"<?xml")&&(b.responseText=void 0);b.responseXML=g&&g.XMLDocument?g.XMLDocument:g;g?b._ioReady(200,"success"):b._ioReady(500,"parser error")}catch(i){b._ioReady(500,"parser error")}else"error"===a&&b._ioReady(500,"error")},abort:function(){this._callback({type:"abort"})}});
a.setupTransport("iframe",g);return a});
KISSY.add("io/methods",["promise","./base"],function(d,f){function i(a){var c=a.responseText,j=a.responseXML,e=a.config,g=e.converters,f,h,b=e.contents,i=e.dataType;if(c||j){for(e=a.mimeType||a.getResponseHeader("Content-Type");"*"===i[0];)i.shift();if(!i.length)for(f in b)if(b[f].test(e)){i[0]!==f&&i.unshift(f);break}i[0]=i[0]||"text";for(f=0;f<i.length;f++)if("text"===i[f]&&void 0!==c){h=c;break}else if("xml"===i[f]&&void 0!==j){h=j;break}if(!h){var k={text:c,xml:j};d.each(["text","xml"],function(a){var b=
i[0];if(g[a]&&g[a][b]&&k[a])return i.unshift(a),h="text"===a?c:j,!1})}}b=i[0];for(e=1;e<i.length;e++){f=i[e];var r=g[b]&&g[b][f];if(!r)throw Error("no covert for "+b+" => "+f);h=r(h);b=f}a.responseData=h}var k=f("promise"),g=f("./base"),h=/^(.*?):[ \t]*([^\r\n]*)\r?$/mg;d.extend(g,k,{setRequestHeader:function(a,c){this.requestHeaders[a]=c;return this},getAllResponseHeaders:function(){return 2===this.state?this.responseHeadersString:null},getResponseHeader:function(a){var c,d,a=a.toLowerCase();if(2===
this.state){if(!(d=this.responseHeaders))for(d=this.responseHeaders={};c=h.exec(this.responseHeadersString);)d[c[1].toLowerCase()]=c[2];c=d[a]}return void 0===c?null:c},overrideMimeType:function(a){this.state||(this.mimeType=a);return this},abort:function(a){a=a||"abort";this.transport&&this.transport.abort(a);this._ioReady(0,a);return this},getNativeXhr:function(){var a=this.transport;return a?a.nativeXhr:null},_ioReady:function(a,c){if(2!==this.state){this.state=2;this.readyState=4;var d;if(200<=
a&&300>a||304===a)if(304===a)c="not modified",d=!0;else try{i(this),c="success",d=!0}catch(e){c=e.message||"parser error"}else 0>a&&(a=0);this.status=a;this.statusText=c;var f=this.defer,h=this.config,k;if(k=this.timeoutTimer)clearTimeout(k),this.timeoutTimer=0;k=d?"success":"error";var b,o=[this.responseData,c,this],y=h.context,r={ajaxConfig:h,io:this};(b=h[k])&&b.apply(y,o);(b=h.complete)&&b.apply(y,o);g.fire(k,r);g.fire("complete",r);f[d?"resolve":"reject"](o)}},_getUrlForSend:function(){var a=
this.config,c=a.uri,f=d.Uri.getComponents(a.url).query||"";return c.toString.call(c,a.serializeArray)+(f?(c.query.has()?"&":"?")+f:f)}})});
KISSY.add("io","io/form-serializer,io/base,io/xhr-transport,io/script-transport,io/jsonp,io/form,io/iframe-transport,io/methods".split(","),function(d,f){function i(d,a,c,f,e){if(typeof a==="function"){f=c;c=a;a=void 0}return g({type:e||"get",url:d,data:a,success:c,dataType:f})}var k=f("io/form-serializer"),g=f("io/base");f("io/xhr-transport");f("io/script-transport");f("io/jsonp");f("io/form");f("io/iframe-transport");f("io/methods");d.mix(g,{serialize:k.serialize,get:i,post:function(d,a,c,f){if(typeof a===
"function"){f=c;c=a;a=void 0}return i(d,a,c,f,"post")},jsonp:function(d,a,c){if(typeof a==="function"){c=a;a=void 0}return i(d,a,c,"jsonp")},getScript:d.getScript,getJSON:function(d,a,c){if(typeof a==="function"){c=a;a=void 0}return i(d,a,c,"json")},upload:function(d,a,c,f,e){if(typeof c==="function"){e=f;f=c;c=void 0}return g({url:d,type:"post",dataType:e,form:a,data:c,success:f})}});d.mix(d,{Ajax:g,IO:g,ajax:g,io:g,jsonp:g.jsonp});return g});
