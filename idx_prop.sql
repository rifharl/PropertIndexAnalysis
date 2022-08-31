CREATE VIEW pvt_idx AS
SELECT * FROM property_index..prop$
UNPIVOT(
	price FOR quarter IN ([Q I],[Q II],QIII,QIV,
	QI,QII,QIII1,QIV1,
	QI1,QII1,QIII2,QIV2,
	QI2,QII2,QIII3,QIV3,
	QI3,[QII*])) AS unpv;

SELECT * from pvt_idx

