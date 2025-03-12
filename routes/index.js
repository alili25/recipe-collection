const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
    res.render('index', { title: 'Home', favoriteFood: 'Makrout', cookingExperience: 'I love making traditional Algerian sweets like Makrout with my family. The process of shaping the dough and filling it with dates is both fun and rewarding.' });
});

module.exports = router;
