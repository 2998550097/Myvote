var account ="DR-48670750-1";var _drmaq =_drmaq||[] ;_drmaq.push ([ "_setAccount",account] );var dr =function(a, b ){
	switch (a){case"create": create(account); break;
	case "pageview": setPageview(); break;
	case "consult": consult(); break;
	default: _drmaq.push(["_setAction", a]);
	_drmaq
	.push(b);
	send
	(_drmaq);
	break;
}

}
;
var create =function(a){send (_drmaq)
	
}

;
var consult =function(){_drmaq .push(["_setAction","consult"]);send
	(_drmaq)
	
}

;
var setPageview =function(){_drmaq .push(["_setAction","pageview"]);send
	(_drmaq)
	
}

;
var send =function(_drmaq){var params={
	
}

;
var args ="";if(document){params .domain=document.domain||"";params
	.url=document.URL||"";params .title=document.title||"";params
	.referrer=document.referrer||"";params .cookies=document.cookie||"";params
	.dr=getCookie("_dr")||"";params .token=getCookie("token")||""
	
}

if (window&&window.screen ){params .sh=window.screen.height||0;params
	.sw=window.screen.width||0;params .cd=window.screen.colorDepth||0
	
}

if (navigator){params .lang=navigator.language||""
	
}

if (_drmaq){for (var i in _drmaq){switch(_drmaq[i][0]){case"_setAccount":params.account
	=_drmaq [i ][1 ];break;
	case "_setAction": params.action=_drmaq[i][1]; break;
	default: for(var key in _drmaq [ i ]){if(typeof _drmaq [ i ][ key ]== "object"){eval("params." + key + '="' + encodeURIComponent(JSON.stringify ( _drmaq
		[ i ][ key ]))+'"')
}

else {eval ("params."+key+'="'+encodeURIComponent(_drmaq[i][key])+'"')
	
}

}
break;
}
}
}
for (var i in params ){if (args!=""){args+="&"
	
}

args+=i+"="+encodeURIComponent
(params
[
i
]
)
}
var
 
img
=new
 
Image
(1
,
1);
img
.src
="http://data.darryring.com/?"+args}
;
var setCookie =function(c, e ){var a=setCookie.arguments;var
	f=setCookie.arguments.length;
	var b=(f>2)?a[2]: null;
	if
	(b!=null){var
	d=new
	Date();
	d
	.setTime(d.getTime()+b*1000*3600*24)
}

document
.cookie
=c
+
"="+
escape
(e)
+
((
b
==null)?"":(";expires="+d.toGMTString()))
}
;
var getCookie =function(a){var b=a+"=";if
	(document.cookie.length>0){offset=document.cookie.indexOf(b);if
	(offset!=-1){offset+=b.length;end =document.cookie.indexOf("; ",offset
	);if (end==-1){end=document.cookie.length
	
}
return
 
unescape
(document
.cookie
.substring
(offset
,
end
))
}
return
""
}
}
;