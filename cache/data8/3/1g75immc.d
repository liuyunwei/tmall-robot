   �         6https://g.alicdn.com/kissy/k/1.4.4/event/custom-min.js     %���{u �       ����               �      
     O K      Server   Tengine   Content-Type   application/javascript   Date   Tue, 31 Oct 2017 08:21:45 GMT   Vary   Accept-Encoding   x-oss-request-id   59F832996616A5BA6AC124E9   x-oss-object-type   Normal   x-oss-storage-class   Standard   Content-MD5   /Eier4qy5dxKhRivRNRvvQ==   x-oss-server-time   1   Cache-Control   max-age=2592000,s-maxage=3600   Access-Control-Allow-Origin   *   X-Source-Scheme   https   Content-Encoding   gzip   Via   Xcache20.l2cm9[0,200-0,H], cache15.l2cm9[0,0], cache7.cn490[0,200-0,H], cache5.cn490[1,0]   Age   3451   X-Cache   'HIT TCP_MEM_HIT dirn:0:98190602 mlen:-1   X-Swift-SaveTime   Tue, 31 Oct 2017 08:21:45 GMT   X-Swift-CacheTime   3600   Timing-Allow-Origin   *   EagleId   7b7d124515094415562114330e /*
Copyright 2014, KISSY v1.44
MIT Licensed
build time: May 22 12:28
*/
KISSY.add("event/custom/observer",["event/base"],function(e,g){function a(){a.superclass.constructor.apply(this,arguments)}var i=g("event/base");e.extend(a,i.Observer,{keys:["fn","context","groups"]});return a});KISSY.add("event/custom/object",["event/base"],function(e,g){function a(g){a.superclass.constructor.call(this);e.mix(this,g)}var i=g("event/base");e.extend(a,i.Object);return a});
KISSY.add("event/custom/observable",["event/base","./observer","./object"],function(e,g){function a(){a.superclass.constructor.apply(this,arguments);this.defaultFn=null;this.defaultTargetOnly=!1;this.bubbles=!0}var i=g("event/base"),j=g("./observer"),n=g("./object"),k=i.Utils;e.extend(a,i.Observable,{on:function(b){b=new j(b);-1===this.findObserver(b)&&this.observers.push(b)},fire:function(b){var b=b||{},d=this.bubbles,c=this.currentTarget,f,k=this.type,m=this.defaultFn,l,h=b,a;b.type=k;h instanceof
n||(h.target=c,h=new n(h));h.currentTarget=c;b=this.notify(h);!1!==a&&void 0!==b&&(a=b);if(d&&!h.isPropagationStopped()){f=(d=c.getTargets())&&d.length||0;for(l=0;l<f&&!h.isPropagationStopped();l++)b=d[l].fire(k,h),!1!==a&&void 0!==b&&(a=b)}if(m&&!h.isDefaultPrevented()&&(k=h.target,b=k.getCustomEventObservable(h.type),!this.defaultTargetOnly&&!b.defaultTargetOnly||c===k))a=m.call(c,h);return a},notify:function(b){var d=[].concat(this.observers),c,f,k=d.length,a;for(a=0;a<k&&!b.isImmediatePropagationStopped();a++)c=
d[a].notify(b,this),!1!==f&&void 0!==c&&(f=c);return f},detach:function(b){var a,c=b.fn,f=b.context,g=this.currentTarget,m=this.observers,b=b.groups;if(m.length){b&&(a=k.getGroupsRe(b));var l,h,e,i,j=m.length;if(c||a){f=f||g;l=b=0;for(h=[];b<j;++b)if(e=m[b],i=e.context||g,f!==i||c&&c!==e.fn||a&&!e.groups.match(a))h[l++]=e;this.observers=h}else this.reset()}}});return a});
KISSY.add("event/custom/target",["event/base","./observable"],function(e,g){var a=g("event/base"),i=g("./observable"),j=a.Utils,n=j.splitAndRun;return{isTarget:1,getCustomEventObservable:function(a,b){var d,c=this.getCustomEvents();d=c&&c[a];!d&&b&&(d=c[a]=new i({currentTarget:this,type:a}));return d},fire:function(a,b){var d=this,c,f=d.getTargets(),e=f&&f.length,b=b||{};n(a,function(a){var f;j.fillGroupsForEvent(a,b);a=b.type;if((f=d.getCustomEventObservable(a))||e){if(f){if(!f.hasObserver()&&!f.defaultFn&&
(f.bubbles&&!e||!f.bubbles))return}else f=new i({currentTarget:d,type:a});a=f.fire(b);!1!==c&&void 0!==a&&(c=a)}});return c},publish:function(a,b){var d,c=this;n(a,function(a){d=c.getCustomEventObservable(a,!0);e.mix(d,b)});return c},addTarget:function(a){var b=this.getTargets();e.inArray(a,b)||b.push(a);return this},removeTarget:function(a){var b=this.getTargets(),a=e.indexOf(a,b);-1!==a&&b.splice(a,1);return this},getTargets:function(){return this["__~ks_bubble_targets"]||(this["__~ks_bubble_targets"]=
[])},getCustomEvents:function(){return this["__~ks_custom_events"]||(this["__~ks_custom_events"]={})},on:function(a,b,d){var c=this;j.batchForType(function(a,b,d){b=j.normalizeParam(a,b,d);a=b.type;if(a=c.getCustomEventObservable(a,!0))a.on(b)},0,a,b,d);return c},detach:function(a,b,d){var c=this;j.batchForType(function(a,b,d){var g=j.normalizeParam(a,b,d);(a=g.type)?(a=c.getCustomEventObservable(a,!0))&&a.detach(g):(a=c.getCustomEvents(),e.each(a,function(a){a.detach(g)}))},0,a,b,d);return c}}});
KISSY.add("event/custom",["./custom/target"],function(e,g){var a=g("./custom/target");return{Target:a,global:e.mix({},a)}});
