SELECT 
	ld."ObjectLogDetailID",
	ld."ObjectLogID",
	ld."OperationID",
	ld."LevelID",
	ld."PropertyName",
	ld."PropertyType",
	ld."PropertyValue",
	l."Name" AS "ObjectName",
	l."ObjectType" AS "ObjectType", 
	op."User",
	op."TimeStamp" AS "LastModified",
	op."KeyValue",
	lev."Description" AS "Level"
FROM {0}"ObjectLogDetails" ld
LEFT JOIN {0}"ObjectLogs" l ON l."ObjectLogID" = ld."ObjectLogID"
LEFT JOIN {0}"Operations" op ON op."OperaionID" = ld."OperationID"
LEFT JOIN {0}"Levels" lev ON lev."LevelID" = ld."LevelID"