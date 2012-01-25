article data: {role: 'page', theme: 'c'}, ->
	header data: {role: 'header', theme: 'd'}, ->
		h1 @title
	section data: {role: 'content'}, ->
		form ->
			fieldset ->
				label for: "coffeekup", -> 
					h2 'CoffeeKup markup'
				textarea name: 'coffeekup', readonly: 'readonly', data: {theme: 'd'}, ->
					@result
