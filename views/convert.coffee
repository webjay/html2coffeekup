article data: {role: 'page', theme: 'c'}, ->
	header data: {role: 'header', theme: 'd'}, ->
		h1 @title
	section data: {role: 'content'}, ->
		if @errmsg
			div class: 'ui-body ui-body-e', ->
				h3 'Sorry, our backend did not like that. Here is what it said:'
				code @errmsg
		else 
			form ->
				fieldset ->
					label for: 'coffeekup', -> 
						h2 'CoffeeKup markup'
					textarea name: 'coffeekup', readonly: 'readonly', data: {theme: 'd'}, ->
						@result
