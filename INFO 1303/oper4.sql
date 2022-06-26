-- Query 4: List seminars that are organised in June and August

SELECT name, fDate FROM seminar
WHERE EXTRACT(MONTH FROM fDate) = 6
OR EXTRACT(MONTH FROM fDate) = 8;