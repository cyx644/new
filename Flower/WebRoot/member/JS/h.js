(function(){var c={id:"6eec9bc2dc8e8762d2362afced1e0526",dm:["hua.com"],etrk:[],js:"tongji.baidu.com/hm-web/js/",icon:'',br:false,ctrk:false,align:-1,nv:-1,vdur:1800000,age:31536000000,se:[[1,'baidu.com','word|wd',1,'news,tieba,zhidao,mp3,image,video,hi,baike,wenku,jingyan'],[2,'google.com','q',0,'tbm=isch,tbm=vid,tbm=nws|source=newssearch,tbm=blg'],[3,'google.cn','q',0,''],[4,'sogou.com','query',1,'news,mp3,pic,v,zhishi,blogsearch'],[5,'zhongsou.com','w',1,'p,z,gouwu,bbs,mp3'],[6,'search.yahoo.com','p',1,'news,images,video'],[7,'yahoo.cn','q',1,'news,image,music'],[8,'soso.com','w',1,'image,video,music,sobar,wenwen,news,baike,blog'],[9,'search.114so.cn','kw',0,''],[10,'search.live.com','q',0,''],[11,'youdao.com','q',1,'image,news,fanxian,mp3,video,blog,reader'],[12,'gougou.com','search',1,'movie,mp3,book,soft,game'],[13,'bing.com','q',2,'images,videos,news'],[14,'360.cn','q|kw',1,'v']]};var g=true,h=null,i=false;function j(a,b,d){var e;d.f&&(e=new Date,e.setTime(e.getTime()+d.f));document.cookie=a+"="+b+(d.domain?"; domain="+d.domain:"")+(d.path?"; path="+d.path:"")+(e?"; expires="+e.toGMTString():"")+(d.L?"; secure":"")};function k(a,b){if(window.sessionStorage)try{window.sessionStorage.setItem(a,b)}catch(d){}}function l(a){return window.sessionStorage?window.sessionStorage.getItem(a):h};function m(a,b){var d=a.match(RegExp("(^|&|\\?|#)("+b+")=([^&#]*)(&|$|#)",""));return d?d[3]:h}function o(a){var b;return(b=(a=a.match(/^(https?:\/\/)?([^\/\?#]*)/))?a[2].replace(/.*@/,""):h,a=b)?a.replace(/:\d+$/,""):a};var p=navigator.cookieEnabled,q=navigator.javaEnabled(),r=navigator.language||navigator.browserLanguage||navigator.systemLanguage||navigator.userLanguage||"",s=window.screen.width+"x"+window.screen.height,t=window.screen.colorDepth;function u(a,b){var d=new Image,e="mini_tangram_log_"+Math.floor(Math.random()*2147483648).toString(36);window[e]=d;d.onload=d.onerror=d.onabort=function(){d.onload=d.onerror=d.onabort=h;d=window[e]=h;b&&b(a)};d.src=a};function v(a,b,d){a.attachEvent?a.attachEvent("on"+b,function(b){d.call(a,b)}):a.addEventListener&&a.addEventListener(b,d,i)};var w;function x(){if(!w)try{w=document.createElement("input"),w.type="hidden",w.style.display="none",w.addBehavior("#default#userData"),document.getElementsByTagName("head")[0].appendChild(w)}catch(a){return i}return g};var y=["cpro.baidu.com"],z=0,B=(new Date).getTime(),C=window.location.protocol||"http:",D="cc,cf,ci,ck,cl,cm,cp,cw,ds,ep,et,fl,ja,ln,lo,lt,nv,rnd,sb,se,si,st,su,sw,sse,v,cv,lv,u".split(",");function E(){if(typeof window["_bdhm_loaded_"+c.id]=="undefined")window["_bdhm_loaded_"+c.id]=g,this.a={},this.J=[],this.g={},this.B()}
E.prototype={z:function(){var a="";try{external.twGetVersion(external.twGetSecurityID(window))&&external.twGetRunPath.toLowerCase().indexOf("360se")>-1&&(a=17)}catch(b){}return a},h:function(a,b){var a=a.replace(/:\d+/,""),b=b.replace(/:\d+/,""),d=a.indexOf(b);return d>-1&&d+b.length==a.length},l:function(a,b){a=a.replace(/^https?:\/\//,"");return a.indexOf(b)==0},b:function(a){for(var b=0;b<c.dm.length;b++)if(c.dm[b].indexOf("/")>-1){if(this.l(a,c.dm[b]))return g}else{var d=o(a);if(d&&this.h(d,c.dm[b]))return g}return i},
j:function(){for(var a=window.location.hostname,b=0,d=c.dm.length;b<d;b++)if(this.h(a,c.dm[b]))return c.dm[b].replace(/(:\d+)?[\/\?#].*/,"");return a},k:function(){for(var a=0,b=c.dm.length;a<b;a++){var d=c.dm[a];if(d.indexOf("/")>-1&&this.l(window.location.href,d))return d.replace(/^[^\/]+(\/.*)/,"$2")+"/"}return"/"},A:function(){if(document.referrer)for(var a=function(a){for(var b=0,d=a[3]==2?a[1]+"/":"",e=a[3]==1?"."+a[1]:"",a=a[4].split(","),f=0,G=a.length;f<G;f++)if(a[f]!==""&&RegExp(d+a[f]+
e).test(document.referrer)){b=f+1;break}return b},b=function(a){if(/google.(com|cn)/.test(document.referrer)&&/(%25[0-9a-fA-F]{2}){2}/.test(a))try{a=decodeURIComponent(a)}catch(b){}if(/sogou.com/.test(document.referrer)&&/%u[0-9a-fA-F]{4}/.test(a))try{a=unescape(a)}catch(d){}for(var e=0,f=y.length;e<f;e++)document.referrer.indexOf(y[e])>-1&&(a="");return a},d=0,e=c.se.length;d<e;d++){if(RegExp(c.se[d][1]).test(document.referrer)){var f=m(document.referrer,c.se[d][2]);if(f)return this.a.se=c.se[d][0],
this.a.sse=a(c.se[d]),this.a.sw=b(f),2}}else return B-z>c.vdur?1:4;a=i;return(a=this.b(document.referrer)&&this.b(window.location.href)?g:this.h(o(document.referrer)||"",window.location.hostname))?B-z>c.vdur?1:4:3},getData:function(a){try{var b,d=RegExp("(^| )"+a+"=([^;]*)(;|$)").exec(document.cookie);if(!(b=d?d[2]:h)){var e;if(!(e=l(a)))a:{if(window.localStorage){var f=window.localStorage.getItem(a);if(f){var n=f.indexOf("|"),A=f.substring(0,n)-0;if(A&&A>(new Date).getTime()){e=f.substring(n+1);
break a}}}else if(x()){w.load(window.location.hostname);e=w.getAttribute(a);break a}e=h}b=e}return b}catch(I){}},setData:function(a,b,d){try{if(j(a,b,{domain:this.j(),path:this.k(),f:d}),d){var e=new Date;e.setTime(e.getTime()+d||31536E6);if(window.localStorage){b=e.getTime()+"|"+b;try{window.localStorage.setItem(a,b)}catch(f){}}else if(x())w.expires=e.toUTCString(),w.load(window.location.hostname),w.setAttribute(a,b),w.save(window.location.hostname)}else k(a,b)}catch(n){}},C:function(a){try{j(a,
"",{domain:this.j(),path:this.k(),f:-1}),window.sessionStorage&&window.sessionStorage.removeItem(a),window.localStorage?window.localStorage.removeItem(a):x()&&(w.load(window.location.hostname),w.removeAttribute(a),w.save(window.location.hostname))}catch(b){}},H:function(){var a,b,d,e,f;z=this.getData("Hm_lpvt_"+c.id)||0;b=this.A();a=b!=4?1:0;if(d=this.getData("Hm_lvt_"+c.id)){for(e=d.split(",");B-e[0]>2592E6;)e.shift();f=e.length<4?2:3;for(a===1&&e.push(B);e.length>4;)e.shift();d=e.join(",");e=Math.round((e[e.length-
1]-0)/1E3)}else d=B,e="",f=1;this.setData("Hm_lvt_"+c.id,d,c.age);this.setData("Hm_lpvt_"+c.id,B);d=B==this.getData("Hm_lpvt_"+c.id)?"1":"0";if(c.nv==0&&this.b(window.location.href)&&(document.referrer==""||this.b(document.referrer)))a=0,b=4;this.a.nv=a;this.a.st=b;this.a.cc=d;this.a.lt=e;this.a.lv=f},G:function(){for(var a=[],b=0,d=D.length;b<d;b++){var e=D[b],f=this.a[e];typeof f!="undefined"&&f!==""&&a.push(e+"="+encodeURIComponent(f))}return a.join("&")},I:function(){this.H();this.a.si=c.id;this.a.su=
document.referrer;this.a.ds=s;this.a.cl=t+"-bit";this.a.ln=r;this.a.ja=q?1:0;this.a.ck=p?1:0;this.a.lo=typeof _bdhm_top=="number"?1:0;var a=this.a,b="";if(navigator.plugins&&navigator.mimeTypes.length){var d=navigator.plugins["Shockwave Flash"];d&&d.description&&(b=d.description.replace(/^.*\s+(\S+)\s+\S+$/,"$1"))}else if(window.ActiveXObject)try{if(d=new ActiveXObject("ShockwaveFlash.ShockwaveFlash"))(b=d.GetVariable("$version"))&&(b=b.replace(/^.*\s+(\d+),(\d+).*$/,"$1.$2"))}catch(e){}a.fl=b;this.a.sb=
this.z();this.a.v="1.0.28";this.a.cv=decodeURIComponent(this.getData("Hm_cv_"+c.id)||"");a=window.location.href;this.a.cm=m(a,"hmmd")||"";this.a.cp=m(a,"hmpl")||"";this.a.cw=m(a,"hmkw")||"";this.a.ci=m(a,"hmci")||"";this.a.cf=m(a,"hmsr")||""},B:function(){var a=this;try{a.I();a.a.nv==0?a.F():a.i(".*");a.r();a.t();a.q&&a.q();a.p&&a.p();a.e=new F;v(window,"beforeunload",a.D());if(a.w()){var b=window._hmt;if(b&&b.length)for(var d=0;d<b.length;d++)a.g[d]=b[d];a.g.push=function(){a.o.apply(a,arguments)};
window._hmt=a.g}if(typeof window._bdhm_autoPageview==="undefined"||window._bdhm_autoPageview===g)a.a.et=0,a.a.ep="",a.c()}catch(e){b=[],b.push("si="+c.id),b.push("n="+encodeURIComponent(e.name)),b.push("m="+encodeURIComponent(e.message)),b.push("r="+encodeURIComponent(document.referrer)),u(C+"//hm.baidu.com/hm.gif?"+b.join("&"))}},D:function(){var a=this;return function(){a.a.et=3;a.a.ep=(new Date).getTime()-a.e.m+","+((new Date).getTime()-a.e.d+a.e.n);a.c()}},c:function(){var a=this;a.a.rnd=Math.round(Math.random()*
2147483647);var b=C+"//hm.baidu.com/hm.gif?"+a.G();a.s(b);u(b,function(b){a.i(b)})},r:function(){if(c.icon!=""){var a,b=c.icon.split("|"),d="http://tongji.baidu.com/hm-web/welcome/ico?s="+c.id;a=(C=="http:"?"http://eiv":"https://bs")+".baidu.com"+b[0]+"."+b[1];switch(b[1]){case "swf":var e=b[2],b=b[3],d="s="+d,f="HolmesIcon"+B;a='<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="'+f+'" width="'+e+'" height="'+b+'"><param name="movie" value="'+a+'" /><param name="flashvars" value="'+
d+'" /><param name="allowscriptaccess" value="always" /><embed type="application/x-shockwave-flash" name="'+f+'" width="'+e+'" height="'+b+'" src="'+a+'" flashvars="'+d+'" allowscriptaccess="always" /></object>';break;case "gif":a='<a href="'+d+'" target="_blank"><img border="0" src="'+a+'" width="'+b[2]+'" height="'+b[3]+'"></a>';break;default:a='<a href="'+d+'" target="_blank">'+b[0]+"</a>"}document.write(a)}},t:function(){var a=window.location.hash.substring(1),b=RegExp(c.id),d=document.referrer.indexOf("baidu.com")>
-1?g:i;a&&b.test(a)&&d&&(b=document.createElement("script"),b.setAttribute("type","text/javascript"),b.setAttribute("charset","utf-8"),b.setAttribute("src",C+"//"+c.js+m(a,"jn")+"."+m(a,"sx")+"?"+this.a.rnd),a=document.getElementsByTagName("script")[0],a.parentNode.insertBefore(b,a))},o:function(a){if(function(a){if(Object.prototype.toString.call(a)!=="[object Array]")return i;for(var b=a.length-1;b>=0;b--){var d=a[b];if(!("[object Number]"==Object.prototype.toString.call(d)&&isFinite(d))&&"[object String]"!=
Object.prototype.toString.call(d)&&d!==g&&d!==i)return i}return g}(a)&&!(typeof window._bdhm_account!=="undefined"&&window._bdhm_account!==c.id)){var b=function(a){return a.replace?a.replace(/'/g,"'0").replace(/\*/g,"'1").replace(/!/g,"'2"):a};switch(a[0]){case "_trackPageview":if(a.length>1&&a[1].charAt&&a[1].charAt(0)=="/"){this.a.et=0;this.a.ep="";var b=this.a.u,d=this.a.su;this.a.u=C+"//"+window.location.host+a[1];this.a.su=window.location.href;this.c();this.a.u=b;this.a.su=d}break;case "_trackEvent":if(a.length>
2)this.a.et="4",this.a.ep=b(a[1])+"*"+b(a[2])+(a[3]?"*"+b(a[3]):"")+(a[4]?"*"+b(a[4]):""),this.c();break;case "_setCustomVar":if(a.length<4)break;var d=a[1],e=a[4]||3;if(d>0&&d<6&&e>0&&e<4){for(var f=(this.a.cv||"*").split("!"),n=f.length;n<d-1;n++)f.push("*");f[d-1]=e+"*"+b(a[2])+"*"+b(a[3]);this.a.cv=f.join("!");a=this.a.cv.replace(/[^1](\*[^!]*){2}/g,"*").replace(/((^|!)\*)+$/g,"");a!==""?this.setData("Hm_cv_"+c.id,encodeURIComponent(a),c.age):this.C("Hm_cv_"+c.id)}}}},w:function(){var a=g,b=window._hmt;
if(b&&b.length){for(var d=0;d<b.length;d++){var e=b[d];switch(e[0]){case "_setAccount":if(e.length>1&&/^[0-9a-z]{32}$/.test(e[1]))window._bdhm_account=e[1],e[1]!==c.id&&(a=i);break;case "_setAutoPageview":if(e.length>1&&(e=e[1],i===e||g===e))window._bdhm_autoPageview=e}}if(a)for(d=0;d<b.length;d++)this.o(b[d])}return a},s:function(a){var b=l("Hm_unsent_"+c.id)||"",d=this.a.u?"":"&u="+encodeURIComponent(window.location.href),b=encodeURIComponent(a.replace(/^https?:\/\//,"")+d)+(b?","+b:"");k("Hm_unsent_"+
c.id,b)},i:function(a){var b=l("Hm_unsent_"+c.id)||"";b&&((b=b.replace(RegExp(encodeURIComponent(a.replace(/^https?:\/\//,"")).replace(/([\*\(\)])/g,"\\$1")+"(%26u%3D[^,]*)?,?","g"),"").replace(/,$/,""))?k("Hm_unsent_"+c.id,b):window.sessionStorage&&window.sessionStorage.removeItem("Hm_unsent_"+c.id))},F:function(){var a=this,b=l("Hm_unsent_"+c.id);if(b)for(var b=b.split(","),d=0,e=b.length;d<e;d++)u(C+"//"+decodeURIComponent(b[d]).replace(/^https?:\/\//,""),function(b){a.i(b)})}};
function F(){this.d=this.m=(new Date).getTime();this.n=0;typeof document.K=="object"?(v(document,"focusin",H(this)),v(document,"focusout",H(this))):(v(window,"focus",H(this)),v(window,"blur",H(this)))}function H(a){return function(b){if(!(b.target&&b.target!=window)){if(b.type=="blur"||b.type=="focusout")a.n+=(new Date).getTime()-a.d;a.d=(new Date).getTime()}}}new E;})();
