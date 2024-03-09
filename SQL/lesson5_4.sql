CREATE TABLE basket_a(
	a INT PRIMARY KEY,
	fruit_a VARCHAR(100) NOT NULL
);

CREATE TABLE basket_b(
	b INT PRIMARY KEY,
	fruit_b VARCHAR(100) NOT NULL
);

INSERT INTO basket_a (a, fruit_a)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');

INSERT INTO basket_b (b, fruit_b)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');

SELECT * FROM basket_a;
SELECT * FROM basket_b;

/*INNER JOIN:2個以上資料表的重複數值另外顯示在1個資料表中*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a INNER JOIN basket_b ON fruit_a = fruit_b

/*LEFT JOIN -1:左邊資料表有的資料全部都要出現 且 右邊資料表和左邊資料表重複的數值才要出現*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b

/*LEFT JOIN -2*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b
WHERE b IS NULL

/*RIGHT JOIN -1*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b

/*RIGHT JOIN -2*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b
WHERE a IS NULL

/*FULL OUTER JOIN -1:全部資料皆顯示*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a FULL OUTER JOIN basket_b ON fruit_a = fruit_b

/*FULL OUTER JOIN -2: 左右兩邊資料表有相同的資料不出現*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a FULL OUTER JOIN basket_b ON fruit_a = fruit_b	
WHERE a IS NULL OR b IS NULL