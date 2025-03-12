const express = require('express');
const app = express();
const port = 3000;

app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));

// Import 
const indexRouter = require('./routes/index');
const recipesRouter = require('./routes/recipes');
const addRouter = require('./routes/add'); 

// use the routes
app.use('/', indexRouter);
app.use('/recipes', recipesRouter); 
app.use('/add', addRouter); 

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}/`);
});
