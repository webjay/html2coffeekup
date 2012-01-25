doctype 5
html ->
	head ->
		meta charset: 'utf-8'
		title @title
		meta name: 'viewport', content: 'width=device-width, initial-scale=1'
		link rel: 'stylesheet', href: '//code.jquery.com/mobile/latest/jquery.mobile.min.css'
		script src: '//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js'
		script src: '//code.jquery.com/mobile/latest/jquery.mobile.min.js'
		script """
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-183817-26']);
			_gaq.push(['_trackPageview']);
			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		"""
	body ->
		article data: {role: 'page'}, ->
			header data: {role: "header"}, ->
				h1 @title
			section data: {role: "content"}, ->
				@body
			section class: 'ui-body', ->
				p 'A simple project, utilizing <a href="https://github.com/colinta/htmlkup">htmlkup</a> to make it easy to convert HTML to <a href="http://coffeekup.org/">CoffeeKup</a>.'
				p 'The frontend was built with <a href="http://jquerymobile.com/">jQuery Mobile</a> and the backend uses <a href="http://expressjs.com/">express</a>.'
			footer data: {role: "footer"}, ->
				nav data: {role: "navbar"}, ->
					ul ->
						li -> a href: 'https://twitter.com/webjay', -> '@webjay'
