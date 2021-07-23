CREATE VIEW `view_pattern_detail` AS
SELECT a.RT_ID,b.SN_B ,b.STOP_CD_B, a.SN as SN_E, a.STOP_CD as STOP_CD_E, a.DIST, a.LMT_SPD   FROM pattern_detail a INNER JOIN (SELECT RT_ID, MAX(SN) SN_E , MIN(SN) SN_B, STOP_CD as STOP_CD_B, LMT_SPD    FROM pattern_detail GROUP BY RT_ID) b ON a.RT_ID = b.RT_ID AND a.SN = b.SN_E
