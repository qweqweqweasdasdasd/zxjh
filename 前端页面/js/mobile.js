(function(doc, win) {
	var docEl = doc.documentElement,
		resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
		recalc = function() {
			var clientWidth = docEl.clientWidth;
			if(!clientWidth) return;
			if(clientWidth >= 750) {
				// docEl.style.fontSize = '100px !important';
                docEl.style.cssText = "font-size:100px !important;";
			} else {
				// docEl.style.fontSize = 100 * (clientWidth / 750) + 'px';
                docEl.style.cssText = "font-size:"+100 * (clientWidth / 750)+"px !important;";
			}
		};

	if(!doc.addEventListener) return;
	win.addEventListener(resizeEvt, recalc, false);
	doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);