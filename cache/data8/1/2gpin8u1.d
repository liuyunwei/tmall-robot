   �         1https://g.alicdn.com/kissy/k/1.4.14/??node-min.js     %���� �       ����               �      
     O K      Server   Tengine   Content-Type   application/javascript   Date   Tue, 31 Oct 2017 08:21:57 GMT   Vary   Accept-Encoding   x-oss-request-id   59F832A5C90C02B765BDE130   x-oss-object-type   Normal   x-oss-storage-class   Standard   Content-MD5   jWfaNaBeJUfKtHNkTukKgA==   x-oss-server-time   1   Cache-Control   max-age=2592000,s-maxage=3600   Access-Control-Allow-Origin   *   X-Source-Scheme   https   Content-Encoding   gzip   Via   Xcache38.l2cm9[0,200-0,H], cache28.l2cm9[0,0], cache1.cn490[0,200-0,H], cache7.cn490[0,0]   Age   3443   X-Cache   'HIT TCP_MEM_HIT dirn:0:35410831 mlen:-1   X-Swift-SaveTime   Tue, 31 Oct 2017 08:21:59 GMT   X-Swift-CacheTime   3598   Timing-Allow-Origin   *   EagleId   7b7d124715094415609912934e /*
Copyright 2014, KISSY v1.49.10
MIT Licensed
build time: Dec 10 15:04
*/
KISSY.add("node/base",["dom","event/dom"],function(b,e){function c(f,m,g){if(!(this instanceof c))return new c(f,m,g);if(f)if("string"===typeof f){if(f=h.create(f,m,g),f.nodeType===k.DOCUMENT_FRAGMENT_NODE)return d.apply(this,a(f.childNodes)),this}else{if(b.isArray(f)||j(f))return d.apply(this,a(f)),this}else return this;this[0]=f;this.length=1;return this}var h=e("dom"),i=e("event/dom"),g=Array.prototype,l=g.slice,k=h.NodeType,d=g.push,a=b.makeArray,j=h.isDomNodeList;c.prototype={constructor:c,isNodeList:!0,
length:0,item:function(f){return"number"===typeof f?f>=this.length?null:new c(this[f]):new c(f)},add:function(f,a,b){"number"===typeof a&&(b=a,a=void 0);f=c.all(f,a).getDOMNodes();a=new c(this);void 0===b?d.apply(a,f):(b=[b,0],b.push.apply(b,f),g.splice.apply(a,b));return a},slice:function(){return new c(l.apply(this,arguments))},getDOMNodes:function(){return l.call(this)},each:function(a,d){var k=this;b.each(k,function(b,j){b=new c(b);return a.call(d||b,b,j,k)});return k},getDOMNode:function(){return this[0]},
end:function(){return this.__parent||this},filter:function(a){return new c(h.filter(this,a))},all:function(a){a=0<this.length?c.all(a,this):new c;a.__parent=this;return a},one:function(a){a=this.all(a);if(a=a.length?a.slice(0,1):null)a.__parent=this;return a}};b.mix(c,{all:function(a,d){return"string"===typeof a&&(a=b.trim(a))&&3<=a.length&&b.startsWith(a,"<")&&b.endsWith(a,">")?(d&&(d.getDOMNode&&(d=d[0]),d=d.ownerDocument||d),new c(a,void 0,d)):new c(h.query(a,d))},one:function(a,d){var b=c.all(a,
d);return b.length?b.slice(0,1):null}});c.NodeType=k;c.KeyCode=i.KeyCode;c.Gesture=i.Gesture;c.REPLACE_HISTORY=i.REPLACE_HISTORY;return c});
KISSY.add("node/attach",["dom","event/dom","./base"],function(b,e){function c(d,a,b){b.unshift(a);d=h[d].apply(h,b);return void 0===d?a:d}var h=e("dom"),i=e("event/dom"),g=e("./base"),l=g.prototype,k=b.makeArray;g.KeyCode=i.KeyCode;b.each("nodeName,isCustomDomain,getEmptyIframeSrc,equals,contains,index,scrollTop,scrollLeft,height,width,innerHeight,innerWidth,outerHeight,outerWidth,addStyleSheet,appendTo,prependTo,insertBefore,before,after,insertAfter,test,hasClass,addClass,removeClass,replaceClass,toggleClass,removeAttr,hasAttr,hasProp,scrollIntoView,remove,empty,removeData,hasData,unselectable,wrap,wrapAll,replaceWith,wrapInner,unwrap".split(","),function(d){l[d]=
function(){var a=k(arguments);return c(d,this,a)}});b.each("getWindow,getDocument,filter,first,last,parent,closest,next,prev,clone,siblings,contents,children".split(","),function(d){l[d]=function(){var a=k(arguments);a.unshift(this);a=h[d].apply(h,a);return a===void 0?this:a===null?null:new g(a)}});b.each({attr:1,text:0,css:1,style:1,val:0,prop:1,offset:0,html:0,outerHTML:0,outerHtml:0,data:1},function(d,a){l[a]=function(){var j;j=k(arguments);void 0===j[d]&&!b.isObject(j[0])?(j.unshift(this),j=h[a].apply(h,
j)):j=c(a,this,j);return j}});b.each(["on","detach","delegate","undelegate"],function(d){l[d]=function(){var a=k(arguments);a.unshift(this);i[d].apply(i,a);return this}});b.each(["fire","fireHandler"],function(d){l[d]=function(){var a=k(arguments);a.unshift(this);return i[d].apply(i,a)}})});
KISSY.add("node/override",["dom","./base","./attach"],function(b,e){var c=e("dom"),h=e("./base");e("./attach");var i=h.prototype;b.each(["append","prepend","before","after"],function(b){i[b]=function(e){"object"!==typeof e&&(e=c.create(e+""));if(e)c[b](e,this);return this}});b.each(["wrap","wrapAll","replaceWith","wrapInner"],function(b){var c=i[b];i[b]=function(b){"string"===typeof b&&(b=h.all(b,this[0].ownerDocument));return c.call(this,b)}})});
KISSY.add("node/anim",["./base","dom","anim"],function(b,e){function c(b,d,a){for(var c=[],f={},a=a||0;a<d;a++)c.push.apply(c,l[a]);for(a=0;a<c.length;a++)f[c[a]]=b;return f}var h=e("./base"),i=e("dom"),g=e("anim"),l=[["height","margin-top","margin-bottom","padding-top","padding-bottom"],["width","margin-left","margin-right","padding-left","padding-right"],["opacity"]];b.augment(h,{animate:function(){var c=b.makeArray(arguments);b.each(this,function(d){var a=b.clone(c),e=a[0];e.to?(e.node=d,(new g(e)).run()):
g.apply(void 0,[d].concat(a)).run()});return this},stop:function(c,d,a){b.each(this,function(b){g.stop(b,c,d,a)});return this},pause:function(c,d){b.each(this,function(a){g.pause(a,d)});return this},resume:function(c,d){b.each(this,function(a){g.resume(a,d)});return this},isRunning:function(){for(var b=0;b<this.length;b++)if(g.isRunning(this[b]))return!0;return!1},isPaused:function(){for(var b=0;b<this.length;b++)if(g.isPaused(this[b]))return!0;return!1}});b.each({show:c("show",3),hide:c("hide",3),
toggle:c("toggle",3),fadeIn:c("show",3,2),fadeOut:c("hide",3,2),fadeToggle:c("toggle",3,2),slideDown:c("show",1),slideUp:c("hide",1),slideToggle:c("toggle",1)},function(c,d){h.prototype[d]=function(a,e,f){if(i[d]&&!a)i[d](this);else b.each(this,function(b){(new g(b,c,a,f,e)).run()});return this}})});
KISSY.add("node",["node/base","node/attach","node/override","node/anim"],function(b,e){var c=e("node/base");e("node/attach");e("node/override");e("node/anim");b.mix(b,{Node:c,NodeList:c,one:c.one,all:c.all});return c});
