-- CREATE TABLE statements for all four tables.
CREATE TABLE Product (
  maker 	  CHAR(1),
  model 	  INT,
  prodType    VARCHAR(7),
  price   INT,
  inventory INT,
  PRIMARY KEY (model),
  CHECK (prodType IN ('PC', 'laptop', 'printer'))
);

CREATE TABLE PC (
  model   INT,
  speed   FLOAT,
  ram     INT,
  hd      INT,
  PRIMARY KEY (model),
  FOREIGN KEY (model) REFERENCES Product(model) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Laptop (
  model   INT,
  speed   FLOAT,
  ram     INT,
  hd      INT,
  screen  FLOAT,
  PRIMARY KEY (model),
  FOREIGN KEY (model) REFERENCES Product(model) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Printer (
  model   		INT,
  color   		BIT NOT NULL,
  printerType VARCHAR(7),
  PRIMARY KEY (model),
  FOREIGN KEY (model) REFERENCES Product(model) ON DELETE CASCADE ON UPDATE CASCADE,
  CHECK (printerType IN ('laser', 'ink-jet'))
);

CREATE TABLE Orders (
  orderNumber	int,
  model   		int,
  price			int,
  cashier		varchar(20),
  PRIMARY KEY (orderNumber, model),
  FOREIGN KEY (model) REFERENCES Product(model) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insert the sample data from the textbook
INSERT INTO Product VALUES ('A', 1001, 'PC', 2114, 3);
INSERT INTO Product VALUES ('A', 1002, 'PC', 995, 5);
INSERT INTO Product VALUES ('A', 1003, 'PC', 478, 5);
INSERT INTO Product VALUES ('A', 2004, 'laptop', 3673, 3);
INSERT INTO Product VALUES ('A', 2005, 'laptop', 949, 5);
INSERT INTO Product VALUES ('A', 2006, 'laptop', 549, 5);
INSERT INTO Product VALUES ('B', 1004, 'PC', 649, 5);
INSERT INTO Product VALUES ('B', 1005, 'PC', 630, 5);
INSERT INTO Product VALUES ('B', 1006, 'PC', 1049, 3);
INSERT INTO Product VALUES ('B', 2007, 'laptop', 1150, 3);
INSERT INTO Product VALUES ('C', 1007, 'PC', 510, 5);
INSERT INTO Product VALUES ('D', 1008, 'PC', 770, 5);
INSERT INTO Product VALUES ('D', 1009, 'PC', 650, 5);
INSERT INTO Product VALUES ('D', 1010, 'PC', 770, 5);
INSERT INTO Product VALUES ('D', 3004, 'printer', 99, 2);
INSERT INTO Product VALUES ('D', 3005, 'printer', 239, 2);
INSERT INTO Product VALUES ('E', 1011, 'PC', 959, 5);
INSERT INTO Product VALUES ('E', 1012, 'PC', 649, 5);
INSERT INTO Product VALUES ('E', 1013, 'PC', 529, 5);
INSERT INTO Product VALUES ('E', 2001, 'laptop', 2500, 3);
INSERT INTO Product VALUES ('E', 2002, 'laptop', 1700, 3);
INSERT INTO Product VALUES ('E', 2003, 'laptop', 1429, 3);
INSERT INTO Product VALUES ('E', 3001, 'printer', 899, 2);
INSERT INTO Product VALUES ('E', 3002, 'printer', 120, 2);
INSERT INTO Product VALUES ('E', 3003, 'printer', 120, 2);
INSERT INTO Product VALUES ('F', 2008, 'laptop', 900, 5);
INSERT INTO Product VALUES ('F', 2009, 'laptop', 680, 5);
INSERT INTO Product VALUES ('G', 2010, 'laptop', 2300, 3);
INSERT INTO Product VALUES ('H', 3006, 'printer', 100, 2);
INSERT INTO Product VALUES ('H', 3007, 'printer', 200, 2);

INSERT INTO PC VALUES (1001, 2.66, 1024, 250);
INSERT INTO PC VALUES (1002, 2.10, 512, 250);
INSERT INTO PC VALUES (1003, 1.42, 512, 80);
INSERT INTO PC VALUES (1004, 2.80, 1024, 250);
INSERT INTO PC VALUES (1005, 3.20, 512, 250);
INSERT INTO PC VALUES (1006, 3.20, 1024, 320);
INSERT INTO PC VALUES (1007, 2.20, 1024, 200);
INSERT INTO PC VALUES (1008, 2.20, 2048, 250);
INSERT INTO PC VALUES (1009, 2.00, 1024, 250);
INSERT INTO PC VALUES (1010, 2.80, 2048, 300);
INSERT INTO PC VALUES (1011, 1.86, 2048, 160);
INSERT INTO PC VALUES (1012, 2.80, 1024, 160);
INSERT INTO PC VALUES (1013, 3.06, 512, 80);

INSERT INTO Laptop VALUES (2001, 2.00, 2048, 240, 20.1);
INSERT INTO Laptop VALUES (2002, 1.73, 1024, 80, 17.0);
INSERT INTO Laptop VALUES (2003, 1.80, 512, 60, 15.4);
INSERT INTO Laptop VALUES (2004, 2.00, 512, 60, 13.3);
INSERT INTO Laptop VALUES (2005, 2.16, 1024, 120, 17.0);
INSERT INTO Laptop VALUES (2006, 2.00, 2048, 80, 15.4);
INSERT INTO Laptop VALUES (2007, 1.83, 1024, 120, 13.3);
INSERT INTO Laptop VALUES (2008, 1.60, 1024, 100, 15.4);
INSERT INTO Laptop VALUES (2009, 1.60, 512, 80, 14.1);
INSERT INTO Laptop VALUES (2010, 2.00, 2048, 160, 15.4);

INSERT INTO Printer VALUES (3001, 1, 'ink-jet');
INSERT INTO Printer VALUES (3002, 0, 'laser');
INSERT INTO Printer VALUES (3003, 1, 'laser');
INSERT INTO Printer VALUES (3004, 1, 'ink-jet');
INSERT INTO Printer VALUES (3005, 0, 'laser');
INSERT INTO Printer VALUES (3006, 1, 'ink-jet');
INSERT INTO Printer VALUES (3007, 1, 'laser');
