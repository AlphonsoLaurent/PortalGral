var HomeConfig = Object.create({
	fnLoadHtml: function(url, params){	 
		var iframeContent = document.getElementById("divContent");
		iframeContent.src=url;
		iframeContent.onload = function(){
			var radio = iframeContent.contentDocument.body.offsetHeight / iframeContent.contentDocument.body.offsetWidth;
			 iframeContent.width = iframeContent.contentDocument.body.offsetWidth +"px";
			 iframeContent.height = "650px";//iframeContent.contentDocument.body.offsetHeight + "px";
			  
		}
	}
}); 
 