
/**
 * Module dependencies.
 */

var express = require('express');
//var routes = require('./routes');
require('coffee-script');
var htmlkup = require('htmlkup');

var app = module.exports = express.createServer();

// Configuration

app.configure(function(){
	app.set('views', __dirname + '/views');
	app.set('view engine', 'coffee');
	app.use(express.bodyParser());
	app.use(express.methodOverride());
	//app.use(app.router);
	//app.use(express.static(__dirname + '/public'));
	app.register('.coffee', require('coffeekup').adapters.express);
});

app.configure('development', function(){
	app.use(express.errorHandler({ dumpExceptions: true, showStack: true })); 
});
app.configure('production', function(){
	app.use(express.errorHandler()); 
});

app.get('/', function (req, res) {
	res.render('index', {
		title: 'HTML to CoffeeKup online converter'
	});
});
app.get('/convert', function (req, res) {
	res.redirect('/');
});
app.post('/convert', function (req, res) {
	res.render('convert', {
		layout: false,
		title: 'HTML exposed to `htmlkup`',
		result: htmlkup(req.body.htmlcode)
	});
});

app.listen(process.env.PORT || 3000);
//console.log("Express server listening on port %d in %s mode", app.address().port, app.settings.env);
