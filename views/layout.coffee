doctype 5
html ->
	head ->
		meta charset: 'utf-8'
		title @title
		meta name: 'viewport', content: 'width=device-width, initial-scale=1'
		link rel: 'stylesheet', href: '//code.jquery.com/mobile/latest/jquery.mobile.min.css'
		script src: '//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js'
		script src: '//code.jquery.com/mobile/latest/jquery.mobile.min.js'
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
