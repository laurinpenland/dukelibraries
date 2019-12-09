SELECT 
    accession.identifier AS 'Accession Number',
    accession.title AS 'Title',
    boolean_2 AS 'Not Ready for TS', 
    enumeration_value.value AS 'Curator'
FROM
    accession
        LEFT JOIN
    user_defined ON accession.id = user_defined.accession_id 
		LEFT JOIN
	enumeration_value ON user_defined.enum_1_id = enumeration_value.id
WHERE
	boolean_2 = 0
    AND repo_id = 2
	AND accession.accession_date >= '20190101'
    AND accession.accession_date <= '20191209';