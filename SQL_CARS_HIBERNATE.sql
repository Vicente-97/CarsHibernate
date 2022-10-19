create table Brand (
	name VARCHAR(50),
	country VARCHAR(50),
	address VARCHAR(50),
	
CONSTRAINT pk_name PRIMARY KEY (name)
);


create table CAR_DATA (
	model_year VARCHAR(50),
	model_auto VARCHAR(50),
	car_make VARCHAR(13),
	availability VARCHAR(50),
	price DECIMAL(8,2),
	entry_date DATE,
	id VARCHAR(50),
	
	
CONSTRAINT pk_id PRIMARY KEY (id),
CONSTRAINT fk_car_make FOREIGN KEY (car_make) REFERENCES Brand (name)
);

create table USERS (
	name VARCHAR(50),
	pass VARCHAR(50),
CONSTRAINT PK_USERS PRIMARY KEY (name)
);


insert into USERS (name, pass) values ('pilar', 'pilar');
insert into USERS (name, pass) values ('vicente', 'vicente');
insert into USERS (name, pass) values ('javi', 'javi');
insert into USERS (name, pass) values ('sergio', 'sergio');
insert into USERS (name, pass) values ('antonio', 'antonio');


insert into Brand (name, country, address) values ('Toyota', 'Bulgaria', '4199 Veith Way');
insert into Brand (name, country, address) values ('Mazda', 'Paraguay', '8 Annamark Junction');
insert into Brand (name, country, address) values ('Lincoln', 'Mozambique', '04775 Alpine Court');
insert into Brand (name, country, address) values ('Ford', 'Russia', '1 Luster Place');
insert into Brand (name, country, address) values ('Land Rover', 'Indonesia', '676 Summer Ridge Trail');
insert into Brand (name, country, address) values ('Chrysler', 'Portugal', '28480 Melrose Point');
insert into Brand (name, country, address) values ('Mercedes-Benz', 'Peru', '4869 Forest Dale Hill');
insert into Brand (name, country, address) values ('Chevrolet', 'Indonesia', '6599 Blue Bill Park Avenue');
insert into Brand (name, country, address) values ('Hyundai', 'Guatemala', '28 Pennsylvania Drive');
insert into Brand (name, country, address) values ('Dodge', 'Serbia', '6 Dorton Alley');


insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1986, '4000s Quattro', 'Chevrolet', true, 135750.25, '1992-10-26', '157-97-0788');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1998, 'Dakota', 'Ford', false, 16863.52, '2003-02-14', '374-47-6957');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2008, 'Explorer Sport Trac', 'Hyundai', false, 91852.69, '1994-05-23', '830-80-1747');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2004, 'Classic', 'Mercedes-Benz', false, 44333.79, '2008-05-29', '436-44-1134');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1993, 'Suburban 2500', 'Chrysler', true, 102985.11, '2006-02-18', '160-60-7646');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2007, 'XJ', 'Hyundai', true, 165569.03, '2005-11-12', '641-83-8281');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1995, '9000', 'Chevrolet', true, 110922.93, '2002-11-10', '858-62-5497');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2003, 'Tribute', 'Chrysler', true, 29741.39, '2006-12-09', '107-78-5068');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2007, 'Avalanche', 'Ford', true, 21457.75, '2022-03-27', '381-34-1670');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1993, 'Celica', 'Lincoln', true, 72321.63, '1990-07-08', '519-55-9389');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1999, 'Metro', 'Dodge', false, 124521.78, '2018-10-15', '755-18-0479');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1993, 'Elan', 'Mercedes-Benz', true, 124424.31, '1982-11-21', '125-95-8667');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2001, 'Yukon XL 2500', 'Land Rover', false, 160070.95, '2019-06-14', '227-32-7152');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2005, 'Murano', 'Mazda', false, 3356.16, '2019-09-10', '335-87-7241');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1996, 'Prelude', 'Ford', true, 57804.82, '2006-08-03', '810-35-1781');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'CLK-Class', 'Mercedes-Benz', true, 193805.01, '2013-03-31', '643-01-7147');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'SRX', 'Mercedes-Benz', false, 58377.71, '1987-05-24', '571-96-7336');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1995, 'Ram Van 2500', 'Dodge', false, 32507.67, '1980-01-12', '569-94-9776');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1990, 'Bonneville', 'Dodge', false, 99485.04, '2021-11-16', '840-72-7274');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1980, 'Grand Prix', 'Lincoln', false, 61775.9, '2011-06-30', '772-66-0341');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2010, 'Maxima', 'Mercedes-Benz', true, 114440.86, '2006-08-17', '719-59-9365');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1995, 'Caprice', 'Ford', false, 120610.97, '1995-09-19', '873-43-1219');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2005, 'CL-Class', 'Dodge', true, 80984.62, '1980-08-06', '621-02-5628');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2003, 'SSR', 'Lincoln', true, 86908.21, '2013-02-19', '843-90-9686');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1998, 'Talon', 'Lincoln', true, 188625.32, '2009-07-11', '324-56-6993');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1991, 'Sidekick', 'Chrysler', false, 183849.74, '2007-10-10', '544-28-4439');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1984, 'Biturbo', 'Ford', true, 67866.92, '1984-06-29', '674-61-6333');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1996, 'XJ Series', 'Dodge', true, 155578.01, '2002-07-04', '271-38-9660');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'Ion', 'Dodge', false, 121513.04, '1983-05-15', '532-83-8944');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2002, 'Cabriolet', 'Chrysler', false, 150918.37, '1995-12-16', '321-30-3129');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1998, 'Century', 'Chevrolet', false, 103511.09, '2013-10-31', '680-70-5122');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2000, 'Ram Van 3500', 'Hyundai', true, 45560.78, '2016-02-17', '375-83-2279');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'XL-7', 'Hyundai', true, 53660.63, '1998-07-24', '162-64-5334');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1998, 'Regal', 'Chevrolet', false, 98215.48, '1980-10-20', '835-42-7395');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'Lucerne', 'Hyundai', false, 190672.15, '1980-05-05', '694-12-3193');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'Pathfinder', 'Ford', false, 828.77, '2021-11-27', '724-95-8932');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1992, 'Bronco', 'Land Rover', false, 168497.86, '2006-12-28', '546-50-0960');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2004, 'Bravada', 'Chevrolet', true, 23387.63, '1982-01-06', '373-81-0506');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'Crossfire Roadster', 'Chevrolet', false, 196735.49, '1986-08-27', '105-54-5928');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2000, 'Tiburon', 'Chrysler', false, 147406.88, '1992-07-02', '677-18-3364');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2012, 'Sorento', 'Mazda', true, 65219.95, '1996-08-03', '236-32-1262');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2005, 'Yukon', 'Mercedes-Benz', false, 102459.67, '2003-06-05', '455-76-6765');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1999, 'Neon', 'Dodge', false, 71129.19, '2015-12-02', '579-53-5134');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1960, 'Corvair', 'Chevrolet', false, 165551.89, '1986-07-17', '187-38-6466');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1969, 'Charger', 'Hyundai', false, 137652.49, '1990-04-08', '820-70-3829');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1989, 'Civic', 'Mazda', false, 82307.93, '2006-08-19', '102-76-1961');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'Elantra', 'Ford', false, 55307.93, '2001-10-13', '765-78-6074');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1986, 'Tempo', 'Dodge', false, 56541.02, '2008-10-20', '530-74-6911');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1998, 'Oasis', 'Mazda', false, 28377.54, '2003-11-24', '778-03-2083');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2005, 'Tucson', 'Land Rover', true, 180560.99, '2007-03-24', '872-40-0682');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1986, 'Fiero', 'Mercedes-Benz', false, 42571.47, '1986-05-01', '289-51-1144');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1993, 'Mirage', 'Lincoln', true, 80085.73, '1993-08-29', '555-89-1386');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2002, 'Protege5', 'Ford', true, 169605.24, '2003-08-17', '696-74-9664');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2007, 'H2', 'Lincoln', false, 122993.29, '1983-04-30', '387-43-6946');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2010, 'A5', 'Dodge', false, 126996.59, '1992-09-03', '537-73-4039');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2013, 'Yukon XL 2500', 'Land Rover', false, 75024.07, '2009-09-09', '705-71-8301');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1999, 'Nubira', 'Mazda', false, 55068.36, '2021-12-15', '150-70-0349');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1998, 'Park Avenue', 'Mercedes-Benz', false, 96615.88, '2016-07-26', '186-21-6935');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'Vantage', 'Land Rover', false, 30896.89, '1987-05-06', '573-35-7177');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1997, 'CL', 'Mazda', true, 141486.84, '2018-04-15', '839-38-8640');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2004, 'Silverado 2500', 'Chevrolet', false, 150324.66, '1994-12-30', '492-11-4360');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2008, 'Uplander', 'Mazda', true, 76681.95, '1981-12-01', '438-68-2212');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1991, 'W201', 'Dodge', false, 118389.43, '2005-08-15', '119-53-5657');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'Baja', 'Chevrolet', false, 111865.95, '2001-09-10', '727-93-0318');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1993, 'Viper', 'Chrysler', false, 108553.22, '2003-02-10', '890-12-2468');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2010, '599 GTB Fiorano', 'Ford', false, 1064.87, '2006-12-22', '271-77-9825');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'G-Class', 'Ford', false, 69525.96, '2010-05-12', '210-21-9008');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2006, 'V50', 'Mazda', true, 62344.65, '1994-04-07', '396-39-1333');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1988, 'Courier', 'Dodge', false, 59296.27, '1986-05-23', '283-94-5332');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2005, 'Grand Cherokee', 'Mercedes-Benz', true, 145880.06, '1982-10-15', '372-64-3416');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2003, 'Caravan', 'Chevrolet', true, 101438.63, '2006-08-13', '854-67-7962');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2004, 'Avalanche 1500', 'Mercedes-Benz', true, 69613.43, '2003-12-21', '801-89-3603');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1994, 'Alcyone SVX', 'Dodge', true, 77182.95, '2009-04-05', '166-55-3170');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1992, '98', 'Chevrolet', false, 130379.1, '1994-02-27', '771-62-0418');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1992, '3 Series', 'Land Rover', false, 31925.16, '2001-04-30', '181-55-4984');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1995, 'Probe', 'Hyundai', true, 81668.13, '1988-05-12', '769-42-0086');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1996, 'Firebird', 'Dodge', false, 179348.01, '2017-12-08', '734-14-3563');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2010, 'F-Series', 'Chrysler', true, 65754.84, '1996-09-05', '621-35-2074');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2000, 'B-Series', 'Ford', false, 191617.92, '1986-03-12', '799-28-1525');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1986, 'Gemini', 'Ford', false, 143289.62, '2014-02-19', '297-64-9673');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2008, 'Land Cruiser', 'Mazda', true, 172595.27, '2004-08-02', '368-49-1841');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2010, 'Golf', 'Land Rover', true, 34985.71, '2021-01-19', '257-08-0011');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1993, 'Ram 50', 'Ford', true, 50161.19, '1995-11-05', '303-60-4558');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1985, 'XR4Ti', 'Chrysler', false, 88762.04, '1998-02-23', '459-04-4257');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2011, 'MDX', 'Ford', false, 110033.42, '1989-06-23', '750-38-5896');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2009, 'Cooper', 'Ford', false, 46126.17, '1995-06-13', '363-87-5644');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2005, 'RX', 'Chevrolet', true, 77976.41, '2009-05-26', '649-80-1809');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2004, 'A6', 'Hyundai', false, 196384.96, '2007-07-14', '121-59-0068');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2009, 'Murciélago', 'Hyundai', false, 87775.74, '1982-11-29', '560-70-1364');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1987, 'Somerset', 'Dodge', false, 76661.66, '1989-11-15', '654-69-7061');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2004, 'Land Cruiser', 'Hyundai', false, 179179.21, '2022-06-17', '864-48-0585');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2004, 'C8 Spyder Wide Body', 'Land Rover', false, 118658.67, '1998-12-25', '807-40-9966');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1992, 'RX-7', 'Hyundai', false, 172348.59, '2015-08-04', '176-69-3034');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2009, 'Amanti', 'Chevrolet', false, 156888.24, '2013-06-12', '382-49-9776');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1995, 'Mighty Max', 'Mazda', false, 18323.59, '2013-10-23', '647-30-3558');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1983, '626', 'Hyundai', true, 33476.8, '1999-08-04', '867-34-3781');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1995, 'Ram 3500', 'Chevrolet', false, 188779.81, '1994-03-14', '137-11-7242');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (2009, 'LX', 'Ford', false, 118534.58, '2016-03-17', '453-75-6586');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1993, 'Vision', 'Mercedes-Benz', true, 143287.61, '1999-10-13', '670-43-2208');
insert into CAR_DATA (model_year, model_auto, car_make, availability, price, entry_date, id) values (1953, 'Corvette', 'Chrysler', false, 172319.32, '2011-08-16', '547-75-0612');















