CREATE TABLE dest1(key INT, value STRING);

FROM src
INSERT OVERWRITE TABLE dest1 SELECT src.key, src.value WHERE src.key < 100;

SELECT dest1.* FROM dest1;