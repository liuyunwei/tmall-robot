   �         Bhttps://g.alicdn.com/kissy/k/1.4.14/??base-min.js,attribute-min.js     %���� �       ����               �      
     O K      Server   Tengine   Content-Type   application/javascript   Date   Tue, 31 Oct 2017 08:51:15 GMT   Vary   Accept-Encoding   x-oss-request-id   59F8398303893FAE58C47DED   x-oss-object-type   Normal   x-oss-storage-class   Standard   Content-MD5   5RrkvT5SLZGrepRPtt2D/g==   x-oss-server-time   1   Cache-Control   max-age=2592000,s-maxage=3600   Access-Control-Allow-Origin   *   X-Source-Scheme   https   Content-Encoding   gzip   Via   Ycache11.l2cm9[32,200-0,M], cache8.l2cm9[33,0], cache8.cn490[0,200-0,H], cache8.cn490[1,0]   Age   1685   X-Cache   (HIT TCP_MEM_HIT dirn:0:373047035 mlen:-1   X-Swift-SaveTime   Tue, 31 Oct 2017 08:51:15 GMT   X-Swift-CacheTime   3600   Timing-Allow-Origin   *   EagleId   7b7d124815094415607465627e /*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 14:47
*/
KISSY.add("base",["attribute"],function(e,q){function h(b,a){return function(d){return function(){a?d.apply(this,arguments):this.callSuper.apply(this,arguments);var c=arguments.callee.__owner__.__extensions__||[];a&&c.reverse();var f=arguments,e;if(e=c&&c.length)for(var g=0;g<e;g++){var m=c[g]&&(!b?c[g]:c[g].prototype[b]);m&&m.apply(this,f||[])}a?this.callSuper.apply(this,arguments):d.apply(this,arguments)}}}function n(b){var a=this.__hooks__,d=this.prototype;if(this.__extensions__.length&&a)for(var c in a)if(!d.hasOwnProperty(c)||
b.hasOwnProperty(c))b[c]=b[c]||o;return r.call(this,b)}function s(b){var a;b.target===this&&(a=this[i+b.type.slice(5).slice(0,-6)],a.call(this,b.newVal,b))}function t(b){var a=b.get("plugins"),d;e.each(a,function(b,f){"function"===typeof b&&(d=b,a[f]=new d)})}function j(b){var a,d=this.get("plugins");if(a=d.length)for(var c=0;c<a;c++)if(d[c][b])d[c][b](this)}var p=q("attribute"),k=e.ucfirst,i="_onSet",o=e.noop,l=p.extend({constructor:function(){this.callSuper.apply(this,arguments);var b=this.get("listeners"),
a;for(a in b)this.on(a,b[a]);this.initializer();t(this);j.call(this,"pluginInitializer");this.bindInternal();this.syncInternal()},initializer:o,__getHook:h,__callPluginsMethod:j,bindInternal:function(){var b=this.getAttrs(),a,d;for(a in b)if(d=i+k(a),this[d])this.on("after"+k(a)+"Change",s)},syncInternal:function(){var b=[],a;a=this.constructor;for(var d=this.getAttrs();a;)b.push(a),a=a.superclass&&a.superclass.constructor;b.reverse();for(a=0;a<b.length;a++){var c=b[a].ATTRS||{},f;for(f in c)if(f in
d){var e,g;(g=this[i+k(f)])&&0!==d[f].sync&&void 0!==(e=this.get(f))&&g.call(this,e)}}},plug:function(b){"function"===typeof b&&(b=new b);b.pluginInitializer&&b.pluginInitializer(this);this.get("plugins").push(b);return this},unplug:function(b){var a=[],d=this,c="string"===typeof b;e.each(d.get("plugins"),function(f){var e=0,g;b&&(c?(g=f.get&&f.get("pluginId")||f.pluginId,g!==b&&(a.push(f),e=1)):f!==b&&(a.push(f),e=1));e||f.pluginDestructor(d)});d.setInternal("plugins",a);return d},getPlugin:function(b){var a=
null;e.each(this.get("plugins"),function(d){if((d.get&&d.get("pluginId")||d.pluginId)===b)return a=d,!1});return a},destructor:e.noop,destroy:function(){this.get("destroyed")||(j.call(this,"pluginDestructor"),this.destructor(),this.set("destroyed",!0),this.fire("destroy"),this.detach())}});e.mix(l,{__hooks__:{initializer:h(),destructor:h("__destructor",!0)},ATTRS:{plugins:{value:[]},destroyed:{value:!1},listeners:{value:[]}},extend:function a(d,c,f){e.isArray(d)||(f=c,c=d,d=[]);f=f||{};c=c||{};c=
p.extend.call(this,c,f);c.__extensions__=d;n.call(c,{});if(d.length){var h={},g={};e.each(d.concat(c),function(a){if(a){e.each(a.ATTRS,function(a,c){var d=h[c]=h[c]||{};e.mix(d,a)});var a=a.prototype,c;for(c in a)a.hasOwnProperty(c)&&(g[c]=a[c])}});c.ATTRS=h;g.constructor=c;e.augment(c,g)}c.extend=f.extend||a;c.addMembers=n;return c}});var r=l.addMembers;return e.Base=l});
/*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 14:47
*/
KISSY.add("attribute",["event/custom"],function(g,p,F,C){function n(d,a){return"string"===typeof a?d[a]:a}function o(d){return d.__attrVals||(d.__attrVals={})}function q(d,a,c,b,e,f,h,i){h=h||c;return d.fire(a+g.ucfirst(c)+"Change",g.mix({attrName:h,subAttrName:f,prevVal:b,newVal:e},i))}function k(d,a,c){var b=d[a];!c&&!b&&(d[a]=b={});return b||{}}function t(d,a){for(var c=0,b=a.length;void 0!==d&&c<b;c++)d=d[a[c]];return d}function u(d){var a;-1!==d.indexOf(".")&&(a=d.split("."),d=a.shift());return{path:a,
name:d}}function v(d,a,c){var b=c;if(a){var d=b=void 0===d?{}:g.clone(d),e=a.length-1;if(0<=e){for(var f=0;f<e;f++)d=d[a[f]];void 0!==d&&(d[a[f]]=c)}}return b}function w(d,a,c,b,e){var f,h,i;f=u(a);var D=a,a=f.name;f=f.path;i=d.get(a);var l=a,m=k(d,"__defaultBeforeFns");m[l]||(m[l]=1,l="before"+g.ucfirst(l)+"Change",d.publish(l,{defaultFn:x}));f&&(h=t(i,f));if(b.force||!(!f&&i===c||f&&h===c)){c=v(i,f,c);c=g.mix({attrName:a,subAttrName:D,prevVal:i,newVal:c,_opts:b,_attrs:e,target:d},b.data);if(b.silent){if(j===
x.call(d,c))return j}else if(j===d.fire("before"+g.ucfirst(a)+"Change",c))return j;return d}}function x(d){if(d.target===this){var a=d.newVal,c=d.prevVal,b=d.attrName,e=d.subAttrName,f=d._attrs,d=d._opts,a=this.setInternal(b,a);if(a===j)return a;d.silent||(a=o(this)[b],q(this,"after",b,c,a,e,null,d.data),f?f.push({prevVal:c,newVal:a,attrName:b,subAttrName:e}):q(this,"","*",[c],[a],[e],[b],d.data))}}function r(d){var a=this.constructor;for(this.userConfig=d;a;){var c=a.ATTRS;if(c){var b=void 0;for(b in c)this.addAttr(b,
c[b],!1)}a=a.superclass?a.superclass.constructor:null}if(d)for(var e in d)this.setInternal(e,d[e])}function y(d,a){var c=a.__hooks__||{},b;for(b in c)b in d&&(d[b]=c[b](d[b]));g.each(d,function(b,c){if("function"===typeof b){var g=0;if(b.__owner__){var i=b.__owner__;delete b.__owner__;delete b.__name__;var g=b.__wrapped__=1,j=z(b);j.__owner__=i;j.__name__=c;i.prototype[c]=j}else b.__wrapped__&&(g=1);g&&(d[c]=b=z(b));b.__owner__=a;b.__name__=c}})}function E(d){y(d,this);g.mix(this.prototype,d)}function s(d,
a){var c=d.getAttrs(),b=k(c,a,1),e=b.valueFn;if(e&&(e=n(d,e)))e=e.call(d),void 0!==e&&(b.value=e),delete b.valueFn,c[a]=b;return b.value}function A(d,a,c,b){var e,f;e=u(a);a=e.name;if(e=e.path)f=d.get(a),c=v(f,e,c);if((e=k(d.getAttrs(),a).validator)&&(e=n(d,e)))if(d=e.call(d,c,a,b),void 0!==d&&!0!==d)return d}p=p("event/custom");C.exports=r;var z=g.bind,B={},j=!1;r.extend=function a(c,b){var e,b=b||{},c=c||{},f=b.__hooks__;if(e=this.__hooks__)f=b.__hooks__=b.__hooks__||{},g.mix(f,e,!1);e=c.hasOwnProperty("constructor")?
c.constructor:function(){this.callSuper.apply(this,arguments)};c.constructor=e;e.__hooks__=f;y(c,e);var h=b.inheritedStatics;if(f=this.inheritedStatics)h=b.inheritedStatics=b.inheritedStatics||{},g.mix(h,f,!1);g.extend(e,this,c,b);h&&g.mix(e,h);e.extend=b.extend||a;e.addMembers=E;return e};g.augment(r,p.Target,{INVALID:B,callSuper:function(){var a,c,b=arguments;"function"===typeof this&&this.__name__?(a=this,c=b[0],b=Array.prototype.slice.call(b,1)):(a=arguments.callee.caller,a.__wrapped__&&(a=a.caller),
c=this);var e=a.__name__;if(e)return a=a.__owner__.superclass[e],!a?void 0:a.apply(c,b||[])},getAttrs:function(){return this.__attrs||(this.__attrs={})},getAttrVals:function(){var a={},c,b=this.getAttrs();for(c in b)a[c]=this.get(c);return a},addAttr:function(a,c,b){var e=this.getAttrs(),f,c=g.clone(c);(f=e[a])?g.mix(f,c,b):e[a]=c;return this},addAttrs:function(a,c){var b=this;g.each(a,function(a,c){b.addAttr(c,a)});c&&b.set(c);return b},hasAttr:function(a){return this.getAttrs().hasOwnProperty(a)},
removeAttr:function(a){var c=o(this),b=this.getAttrs();this.hasAttr(a)&&(delete b[a],delete c[a]);return this},set:function(a,c,b){var e;if(g.isPlainObject(a)){var b=c||{},c=Object(a),f=[],h=[];for(a in c)void 0!==(e=A(this,a,c[a],c))&&h.push(e);if(h.length)return b.error&&b.error(h),j;for(a in c)w(this,a,c[a],b,f);var i=[],k=[],l=[],m=[];g.each(f,function(a){k.push(a.prevVal);l.push(a.newVal);i.push(a.attrName);m.push(a.subAttrName)});i.length&&q(this,"","*",k,l,m,i,b.data);return this}b=b||{};e=
A(this,a,c);return void 0!==e?(b.error&&b.error(e),j):w(this,a,c,b)},setInternal:function(a,c){var b,e=k(this.getAttrs(),a).setter;if(e&&(e=n(this,e)))b=e.call(this,c,a);if(b===B)return j;void 0!==b&&(c=b);o(this)[a]=c},get:function(a){var c,b=o(this),e,f;-1!==a.indexOf(".")&&(c=a.split("."),a=c.shift());e=k(this.getAttrs(),a,1).getter;f=a in b?b[a]:s(this,a);if(e&&(e=n(this,e)))f=e.call(this,f,a);!(a in b)&&void 0!==f&&(b[a]=f);c&&(f=t(f,c));return f},reset:function(a,c){if("string"===typeof a)return this.hasAttr(a)?
this.set(a,s(this,a),c):this;var c=a,b=this.getAttrs(),e={};for(a in b)e[a]=s(this,a);this.set(e,c);return this}})});
