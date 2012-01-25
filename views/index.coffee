article data: {role: 'page', theme: 'c'}, ->
	header data: {role: 'header', theme: 'd'}, ->
		h1 @title
	section data: {role: 'content'}, ->
		form action: '/convert', method: 'post', ->
			fieldset data: {role: 'fieldcontain'}, class: 'ui-hide-label', ->
				label for: 'htmlcode', -> 'HTML'
				textarea name: 'htmlcode', autofocus: 'autofocus', placeholder: 'put HTML here', required: 'required', data: {theme: 'd'}
				input type: 'submit', value: 'make CoffeeKup markup', data: {theme: 'a'}
	footer class: 'ui-body', ->
		small ->
			strong '/about'
			br()
			text 'A simple open source project by '
			a href: 'https://twitter.com/webjay', '@webjay'
			text ' utilizing '
			a href: 'https://github.com/colinta/htmlkup', 'htmlkup'
			text ' to make it easy to convert HTML to '
			a href: 'http://coffeekup.org/', 'CoffeeKup'
			text '. '
			text 'The frontend uses the latest '
			a href: 'http://jquerymobile.com/', 'jQuery Mobile'
			text ' and the backend uses '
			a href: 'http://expressjs.com/', 'express'
			text '. '
			text 'Feel free to have a look at the code on '
			a href: 'https://github.com/webjay/html2coffeekup', 'GitHub'
			text '.'
