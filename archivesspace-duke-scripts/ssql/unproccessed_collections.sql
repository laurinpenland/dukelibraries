SELECT 
    accession.identifier AS 'Accession Number',
    accession.title AS 'Title',
	enumeration_value.value AS 'Processing Status'
FROM
    accession
        LEFT JOIN
    collection_management ON accession.id = collection_management.accession_id 
		LEFT JOIN
	enumeration_value ON collection_management.processing_status_id = enumeration_value.id
WHERE
	enumeration_value.id=61153
    AND repo_id = 2
	AND accession.accession_date >= '20190101'
    AND accession.accession_date <= '20191209'
