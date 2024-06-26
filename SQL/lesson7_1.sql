SELECT *
FROM gate_count
WHERE 站點編號 = '7040'


/*進站人數最多的一筆*/

/*1.建立關聯性資料表*/
SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號

/*2.找出進站人數最大值*/
/*錯誤-無法執行，因SQL語法聚合函數不能放到WHERE後方*/
SELECT *
FROM gate_count
WHERE 進站人數 = MAX(進站人數)

/*正確*/
SELECT MAX(進站人數)
FROM gate_count

/*3.2個語法合併成1個：使用subquery概念*/
SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 進站人數 = (
 SELECT MAX (進站人數)
 FROM gate_count
);


/*各站點進站人數最多的一筆*/
SELECT 名稱,站點編號,進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號

SELECT 站點編號,MAX(進站人數)
FROM gate_count
GROUP BY 站點編號;


SELECT 名稱,站點編號,進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE (站點編號,進站人數) IN(
	SELECT 站點編號,MAX(進站人數)
	FROM gate_count
	GROUP BY 站點編號)
GROUP BY 名稱,站點編號,進站人數;