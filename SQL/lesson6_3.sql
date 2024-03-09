/*取出payment的所有客戶的customer_id(不重複)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id

/*取出payment的所有客戶的應收帳款總和,SUM()*/
SELECT customer_id, SUM(amount) AS 總和
FROM payment
GROUP BY customer_id
ORDER BY 總和 DESC;

/*連結payment和customer table，並總和各客戶的應收帳款*/
SELECT first_name || ' ' || last_name AS full_name,
SUM(amount) AS 總和
FROM payment LEFT JOIN customer ON payment.customer_id=customer.customer_id
GROUP BY full_name
ORDER BY 總和 DESC;

/*連結payment和customer table，並總和各客戶的應收帳款 另外一種寫法*/
SELECT first_name || ' ' || last_name AS full_name,
SUM(amount) AS 總和
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
ORDER BY 總和 DESC;

/*連結payment和customer table，總和各客戶的應收帳款，並取出總和大於等於200的資料*/
SELECT first_name || ' ' || last_name AS full_name,
SUM(amount) AS 總和
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
HAVING SUM(amount) >= 200
ORDER BY 總和 DESC;