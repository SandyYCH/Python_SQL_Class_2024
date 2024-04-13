/*全省各站點2022年進站總人數*/
SELECT EXTRACT(YEAR FROM 日期)AS 年,名稱,
SUM(進站人數) AS 總和 
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE (日期 BETWEEN '2022-01-01' AND '2022-12-31')
GROUP BY EXTRACT(YEAR FROM 日期),名稱
ORDER BY 總和 DESC


/*全省各站點2022年進站總人數大於5佰萬人的站點*/
SELECT EXTRACT(YEAR FROM 日期)AS 年,名稱,
SUM(進站人數) AS 總和 
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE (日期 BETWEEN '2022-01-01' AND '2022-12-31')
GROUP BY EXTRACT(YEAR FROM 日期),名稱
HAVING SUM(進站人數) > 5000000
ORDER BY 總和 DESC


/*基隆火車站2020年,每月份進站人數*/
SELECT 名稱,EXTRACT(YEAR FROM 日期)AS 年,
	   EXTRACT(MONTH FROM 日期)AS 月份,
	   SUM(進站人數) AS 每月進站人數
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE 名稱 ='基隆' AND EXTRACT(YEAR FROM 日期)='2020'
GROUP BY 名稱,EXTRACT(YEAR FROM 日期),
		 EXTRACT(MONTH FROM 日期)
ORDER BY 月份 ASC


/*基隆火車站2020年,每月份進站人數,由多至少*/
SELECT 名稱,EXTRACT(YEAR FROM 日期)AS 年,
	   EXTRACT(MONTH FROM 日期)AS 月份,
	   SUM(進站人數) AS 每月進站人數
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE 名稱 ='基隆' AND EXTRACT(YEAR FROM 日期)='2020'
GROUP BY 名稱,EXTRACT(YEAR FROM 日期),
		 EXTRACT(MONTH FROM 日期)
ORDER BY 每月進站人數 DESC


/*基隆火車站2020,2021,2022,每年進站人數*/
SELECT 名稱,EXTRACT(YEAR FROM 日期)AS 年,
	   SUM(進站人數) AS 每年進站人數
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE 名稱 ='基隆' AND (日期 BETWEEN '2020-01-01' AND '2022-12-31')
GROUP BY 名稱,EXTRACT(YEAR FROM 日期)


/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/
SELECT 名稱,EXTRACT(YEAR FROM 日期)AS 年,
	   SUM(進站人數) AS 每年進站人數
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE 名稱 IN ('基隆','臺北') AND (日期 BETWEEN '2020-01-01' AND '2022-12-31')
GROUP BY 名稱,EXTRACT(YEAR FROM 日期)
ORDER BY 名稱, 年


