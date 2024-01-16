-- Create a state-region table
CREATE TABLE stateRegions (
    regionCode CHAR(1) PRIMARY KEY
    ,regionName VARCHAR(10) NOT NULL
);
-- Load values
INSERT INTO stateRegions (regionCode, regionName)
VALUES
    ('a', 'north'),
    ('b', 'west'),
    ('c', 'east'),
    ('d', 'south'
);
-- Create a states table for US
CREATE TABLE states (
    stateName VARCHAR(50)
    ,regionCode CHAR(1)
    ,FOREIGN KEY (regionCode) REFERENCES stateRegions(regionCode)
);
--Load values
INSERT INTO states (stateName, regionCode) 
VALUES
    ('AL', 'd'),  -- South
    ('AK', 'b'),   -- West
    ('AZ', 'b'),   -- West
    ('AR', 'd'),   -- South
    ('CA', 'b'),   -- West
    ('CO', 'b'),   -- West
    ('CT', 'c'),   -- East
    ('DE', 'c'),   -- East
    ('FL', 'd'),   -- South
    ('GA', 'd'),   -- South
    ('HI', 'b'),   -- West
    ('ID', 'b'),   -- West
    ('IL', 'c'),   -- East
    ('IN', 'c'),   -- East
    ('IA', 'c'),   -- East
    ('KS', 'b'),   -- West
    ('KY', 'd'),   -- South
    ('LA', 'd'),   -- South
    ('ME', 'c'),   -- East
    ('MD', 'c'),   -- East
    ('MA', 'c'),   -- East
    ('MI', 'c'),   -- East
    ('MN', 'c'),   -- East
    ('MS', 'd'),   -- South
    ('MO', 'b'),   -- West
    ('MT', 'b'),   -- West
    ('NE', 'c'),   -- East
    ('NV', 'b'),   -- West
    ('NH', 'c'),   -- East
    ('NJ', 'c'),   -- East
    ('NM', 'b'),   -- West
    ('NY', 'c'),   -- East
    ('NC', 'd'),   -- South
    ('ND', 'c'),   -- East
    ('OH', 'c'),   -- East
    ('OK', 'd'),   -- South
    ('OR', 'b'),   -- West
    ('PA', 'c'),   -- East
    ('RI', 'c'),   -- East
    ('SC', 'd'),   -- South
    ('SD', 'c'),   -- East
    ('TN', 'd'),   -- South
    ('TX', 'd'),   -- South
    ('UT', 'b'),   -- West
    ('VT', 'c'),   -- East
    ('VA', 'd'),   -- South
    ('WA', 'b'),   -- West
    ('WV', 'c'),   -- East
    ('WI', 'c'),   -- East
    ('WY', 'b');   -- West
