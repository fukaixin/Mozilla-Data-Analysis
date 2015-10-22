create table tabwho select Who ,COUNT(Who) as SubmitNum from 2011_mozilla.activity_level2 GROUP BY Who ;
create table top10_tabwho select * FROM tabwho ORDER BY SubmitNum DESC LIMIT 1,10
