CREATE TABLE galaxy (
  galaxy_id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  galaxy_type VARCHAR(10) NOT NULL,
  age_in_millions_of_years NUMERIC NOT NULL,
  distance_from_earth_in_ly BIGINT,
  UNIQUE (name)
);

insert into galaxy (name, galaxy_type, age_in_millions_of_years, distance_from_earth_in_ly) values ('Andromeda', 'Irregular', 61538, 7762);
insert into galaxy (name, galaxy_type, age_in_millions_of_years, distance_from_earth_in_ly) values ('Antennae', 'Elliptical', 68972, 263);
insert into galaxy (name, galaxy_type, age_in_millions_of_years, distance_from_earth_in_ly) values ('Backward', 'Peculiar', 11187, 8277);
insert into galaxy (name, galaxy_type, age_in_millions_of_years, distance_from_earth_in_ly) values ('Black Eye', 'Irregular', 10855, 8546);
insert into galaxy (name, galaxy_type, age_in_millions_of_years, distance_from_earth_in_ly) values ('Bode''s', 'Irregular', 346, 4330);
insert into galaxy (name, galaxy_type, age_in_millions_of_years, distance_from_earth_in_ly) values ('Butterfly', 'Elliptical', 27145, 2759);

CREATE TABLE star (
  star_id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  star_type VARCHAR(10) NOT NULL,
  age_in_millions_of_years NUMERIC NOT NULL,
  distance_from_earth_in_ly BIGINT,
  galaxy_id BIGINT REFERENCES galaxy(galaxy_id) NOT NULL,
  UNIQUE (galaxy_id),
  UNIQUE (name)
);

insert into star (name, star_type, age_in_millions_of_years, distance_from_earth_in_ly, galaxy_id) values ('Acamar', 'F', 3123, 6724, 1);
insert into star (name, star_type, age_in_millions_of_years, distance_from_earth_in_ly, galaxy_id) values ('Electra', 'M', 6013, 2515, 2);
insert into star (name, star_type, age_in_millions_of_years, distance_from_earth_in_ly, galaxy_id) values ('Absolutno', 'M', 9500, 6391, 3);
insert into star (name, star_type, age_in_millions_of_years, distance_from_earth_in_ly, galaxy_id) values ('Achird', 'G', 5270, 7951, 4);
insert into star (name, star_type, age_in_millions_of_years, distance_from_earth_in_ly, galaxy_id) values ('Achernar', 'B', 8361, 4386, 5);
insert into star (name, star_type, age_in_millions_of_years, distance_from_earth_in_ly, galaxy_id) values ('Diphda', 'O', 8438, 3303, 6);

CREATE TABLE planet (
  planet_id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT,
  has_life BOOLEAN NOT NULL,
  has_water BOOLEAN NOT NULL,
  population_in_millions INT,
  water_in_millions_of_liters INT,
  planet_type VARCHAR(50) NOT NULL,
  age_in_millions_of_years NUMERIC NOT NULL,
  distance_from_earth_in_ly BIGINT,
  star_id BIGINT REFERENCES star(star_id) NOT NULL,
  UNIQUE (name)
);

insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Canis aureus', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 'Gas Giant', false, true, 0, 388, 807, 790, 1);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Manouria emys', 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', 'Super-Earth', true, false, 0, 0, 874, 163, 3);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Anitibyx armatus', 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', 'Neptune-like', false, true, 0, 409, 719, 748, 3);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Panthera tigris', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis', 'Terrestrial', true, true, 438, 216, 210, 310, 5);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Motacilla aguimp', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla', 'Gas Giant', false, false, 0, 0, 103, 365, 1);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Kobus defassa', 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', 'Super-Earth', true, false, 0, 0, 372, 763, 6);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Delphinus delphis', 'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', 'Neptune-like', false, true, 0, 619, 73, 233, 4);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('unavailable', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 'Terrestrial', true, false, 0, 0, 807, 730, 1);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Alouatta seniculus', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 'Gas Giant', false, false, 0, 0, 363, 205, 2);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Speotyte cuniculata', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit', 'Super-Earth', true, false, 0, 0, 920, 978, 4);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Microcebus murinus', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit', 'Neptune-like', false, false, 0, 0, 299, 373, 4);
insert into planet (name, description, planet_type, has_life, has_water, population_in_millions, water_in_millions_of_liters, age_in_millions_of_years, distance_from_earth_in_ly, star_id) values ('Phalacrocorax albiventer', 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', 'Terrestrial', true, false, 0, 0, 956, 200, 6);

CREATE TABLE moon (
  moon_id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  age_in_millions_of_years NUMERIC NOT NULL,
  distance_from_earth_in_ly BIGINT,
  distance_from_planet_in_millions_of_km INT NOT NULL,
  planet_id BIGINT REFERENCES planet(planet_id) NOT NULL,
  UNIQUE (name)
);

insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Nama aretioides (Hook. & Arn.) Brand', 846, 354, 5000, 4);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Helianthus giganteus L.', 455, 567, 818, 1);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Leucanthemum Mill.', 469, 880, 4253, 11);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Huperzia filiformis (Sw.) Holub', 191, 752, 349, 3);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Geranium cuneatum Hook.', 737, 433, 977, 1);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Lespedeza capitata Michx.', 521, 513, 1599, 5);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Ludwigia linearis Walter', 921, 87, 4179, 3);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Cordylanthus kingii S. Watson ssp. helleri (Ferris) T.I. Chuang & Heckard', 889, 476, 578, 5);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Pteridium aquilinum (L.) Kuhn var. pseudocaudatum (Clute) A. Heller', 938, 617, 1478, 8);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Hepatica nobilis Schreb.', 387, 573, 137, 1);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Hexastylis shuttleworthii (Britten & Baker f.) Small', 395, 736, 133, 2);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Micarea ternaria (Nyl.) Vezda', 819, 309, 4663, 7);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Oligoneuron nitidum (Torr. & A. Gray) Small', 684, 821, 993, 7);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Helietta Tul.', 14, 644, 634, 10);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Cryptantha humilis (A. Gray) Payson', 925, 669, 4505, 12);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Eleocharis montevidensis Kunth', 515, 898, 4455, 11);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Stachys annua (L.) L.', 737, 678, 1742, 2);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Falcataria (I.C. Nielsen) Barneby & Grimes', 249, 871, 4068, 10);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Colocasia esculenta (L.) Schott var. antiquorum (Schott) Hubbard & Rehder', 232, 50, 4878, 5);
insert into moon (name, age_in_millions_of_years, distance_from_earth_in_ly, distance_from_planet_in_millions_of_km, planet_id) values ('Bidens reptans (L.) G. Don', 226, 913, 257, 5);

CREATE TABLE comet (
  comet_id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  radius_in_km INT NOT NULL,
  color VARCHAR(10) NOT NULL,
  is_far_from_earth BOOLEAN NOT NULL,
  UNIQUE (name)
);

insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Kobus vardonii vardoni', 3739, 'Yellow', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Eumetopias jubatus', 4820, 'Purple', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Camelus dromedarius', 10, 'Purple', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Alopex lagopus', 2405, 'Purple', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Canis aureus', 3046, 'Blue', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Phalacrocorax albiventer', 4754, 'Purple', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Bubalus arnee', 4100, 'Purple', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Bison bison', 187, 'Purple', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Spizaetus coronatus', 749, 'Pink', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Macropus rufogriseus', 8567, 'Pink', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Tetracerus quadricornis', 6787, 'Blue', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Deroptyus accipitrinus', 7110, 'Green', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Bubulcus ibis', 9049, 'White', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Gymnorhina tibicen', 6353, 'Green', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Ciconia episcopus', 7716, 'Blue', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Nyctea scandiaca', 521, 'Pink', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Macaca radiata', 6307, 'White', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Spilogale gracilis', 6673, 'White', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Crotaphytus collaris', 4588, 'Yellow', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Genetta genetta', 9115, 'Pink', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Libellula quadrimaculata', 3506, 'White', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Pseudoleistes virescens', 4867, 'Blue', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Sylvicapra grimma', 7575, 'Blue', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Colobus guerza', 4518, 'Green', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Litrocranius walleri', 5373, 'Green', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Butorides striatus', 911, 'Pink', false);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Acridotheres tristis', 8113, 'Yellow', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Spermophilus richardsonii', 7710, 'Green', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Dendrocitta vagabunda', 1890, 'Green', true);
insert into comet (name, radius_in_km, color, is_far_from_earth) values ('Macropus rufus', 6729, 'Blue', false);