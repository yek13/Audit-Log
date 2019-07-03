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
				   INNER JOIN 
				   (
					   SELECT
					   		op."KeyValue",
					   		ol."Name",
					   		ol."ObjectType",
					   		ld."PropertyName",
					   		MAX(op."TimeStamp") AS "TimeStamp"
						from "ObjectLogDetails" ld
					   		INNER JOIN {0}"Operations" op on op."OperaionID" = ld."OperationID"
					   		INNER JOIN {0}"ObjectLogs" ol ON ol."ObjectLogID" = ld."ObjectLogID"
					   		GROUP BY op."KeyValue",
					   				ld."PropertyName",
					   				ol."Name",
					   				ol."ObjectType"
				   			) tbl1 ON tbl1."PropertyName" = ld."PropertyName" AND tbl1."TimeStamp" = op."TimeStamp"