
CREATE DATABASE HW2; 
USE HW2;     


CREATE TABLE Ingredients
(
  IngredientID INT auto_increment,
  IngredientName varchar(50) NOT NULL,
  Info varchar(500) NOT NULL,
  PRIMARY KEY (IngredientID)
);

CREATE TABLE Recipe
(
  RecipeID INT NOT NULL,
  RecipeName varchar(50) NOT NULL,
  Protein varchar(50) NOT NULL,
  PrepTime float NOT NULL,
  CookTime float NOT NULL,
  Servings int NOT NULL,
  PRIMARY KEY (RecipeID)
);

-- i created a many to many table to link recipes and ingredients
CREATE TABLE RecipeToIngredients (
    RecipeID INT,
    IngredientID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID)
);

INSERT INTO Ingredients (IngredientID, IngredientName, Info) 
VALUES ('Garlic', 'Garlic boosts the immune system and has antibacterial properties.'),
		('Olive Oil', 'Olive oil is rich in healthy fats and antioxidants.'),
        ('Cumin', 'Cumin is a spice known for aiding digestion and metabolism.'),
        ('Tomatoes', 'Tomatoes are packed with Vitamin C and antioxidants.'),
        ('Cilantro', 'Cilantro helps detox heavy metals from the body.'),
		('Ras el Hanout', 'Ras el Hanout is a North African spice blend that consists of the best spices a merchant has. It can contain up to 30 different spices!'),
		('Couscous', 'Couscous, a staple in North African cuisine, is made from crushed durum wheat semolina. Traditionally, it is steamed over a stew to absorb flavors.'),
		('Harissa', 'Harissa is a North African chili paste made from roasted red peppers, garlic, caraway, and cumin. It is commonly used to spice up stews, meats, and couscous.'),
		('Onions', 'Onions have been cultivated for over 5,000 years and were even used by ancient Egyptians as currency and offerings to the gods.'),
        ('Semolina', 'Semolina gives Makrout its signature crumbly texture and golden color.'),
        ('Dates', 'Dates are rich in natural sugars and fiber, making them a great energy booster.'),
        ('Honey', 'Honey is used to coat Makrout, adding sweetness and helping preserve it.'),
        ('Orange Blossom Water', 'Orange blossom water gives Makrout its floral fragrance and a refreshing aroma.'),
        ('Butter', 'Butter is mixed into the semolina to create a rich and crumbly dough.'),
        ('Cinnamon', 'Cinnamon enhances the flavor of the date filling with warmth and spice.'),
        ('Sesame Seeds', 'Toasted sesame seeds add a nutty crunch when sprinkled on top of Makrout.');


INSERT INTO Recipe (RecipeID, RecipeName, Protein, PrepTime, CookTime, Servings) 
VALUES (1, 'Pâtes a la bolognaise', 'Beef', 0.15, 2.15, 4),
		(2, 'Coucous', 'Chicken', 0.30, 1.00, 10),
        (3, 'Makrout', 'Grains', 20, 30, 8);
        
INSERT INTO RecipeToIngredients (RecipeID, IngredientID) 
VALUES (1, 01),  -- Garlic
		(1, 02),  -- Olive Oil
        (1, 04),  -- Tomatoes
        (1, 09),  -- Onions
        (2, 06),  -- Ras el Hanout
		(2, 07),  -- Couscous
		(2, 08),  -- Harissa
		(2, 09),  -- Onions
        (3, 10), -- Semolina
		(3, 11), -- Dates
		(3, 12), -- Honey
		(3, 13), -- Orange Blossom Water
		(3, 14), -- Butter
		(3, 15), -- Cinnamon
		(3, 16); -- Sesame Seeds

