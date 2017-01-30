-- Include your solutions to the More Practice problems in this file.



-- Insert a Brand

INSERT INTO brands (brand_id, name, founded, headquarters)
   VALUES ('sub', 'Subaru', 1953, 'Tokyo, Japan');


-- Insert Models
INSERT INTO models (brand_id, name, year)
   VALUES ('sub', 'Outback', 2015);

INSERT INTO models (brand_id, name, year)
   VALUES ('che', 'Malibu', 2015);



-- Create an Awards Table

 CREATE TABLE awards(
   id SERIAL PRIMARY KEY,
   name VARCHAR(20) NOT NULL,
   year INTEGER NOT NULL,
   winner_id INTEGER
     REFERENCES models
 );


-- Insert Awards
INSERT INTO awards (name, year, winner_id)
  VALUES ('IIHS Safety Award', 2015, 
    (SELECT model_id FROM models
      WHERE name LIKE 'Malibu'
    )
  );

INSERT INTO awards (name, year, winner_id)
  VALUES ('IIHS Safety Award', 2015, 
    (SELECT model_id FROM models
       WHERE name LIKE 'Outback'
    )
  );

 INSERT INTO awards (name, year)
   VALUES('Best in Class', 2015); 