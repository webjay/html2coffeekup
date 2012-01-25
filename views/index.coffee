form action: '/convert', method: 'post', ->
	fieldset data: {role: "fieldcontain"}, class: "ui-hide-label", ->
		label for: "htmlcode", -> 'HTML'
		textarea name: 'htmlcode', autofocus: 'autofocus', placeholder: 'put HTML here', required: 'required', wrap: 'soft'
		input type: 'submit', value: 'make CoffeeKup markup'