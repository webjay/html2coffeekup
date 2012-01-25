doctype 5
html ->
	head ->
		meta charset: 'utf-8'
		title @title
		meta name: 'viewport', content: 'width=device-width, initial-scale=1'
		link rel: 'stylesheet', href: '//code.jquery.com/mobile/latest/jquery.mobile.min.css'
		script src: '//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js'
		script src: '//code.jquery.com/mobile/latest/jquery.mobile.min.js'
		script 'var _gaq;_gaq=_gaq||[];_gaq.push(["_setAccount","UA-183817-26"]);_gaq.push(["_trackPageview"]);(function(){var a,b;a=document.createElement("script");a.type="text/javascript";a.async=true;a.src=("https:"===document.location.protocol?"https://ssl":"http://www")+".google-analytics.com/ga.js";b=document.getElementsByTagName("script")[0];return b.parentNode.insertBefore(a,b)})()'
	body ->
		@body
