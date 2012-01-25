
/*
 * GET home page.
 */

exports.index = function (req, res) {
	res.render('index', { title: 'HTML to CoffeeKup online converter' })
};