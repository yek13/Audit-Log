
CREATE TABLE "public"."{0}EventLogs"(
	"EventLogID"  serial NOT NULL,
	"LevelID" integer NOT NULL,
	"Message" character varying(255) NULL,
	"OperationID" integer NOT NULL,
	"StackTrace" character varying(255) NULL,
	"Exception" character varying(255) NULL,
 CONSTRAINT "PK_{0}EventLogs" PRIMARY KEY CLUSTERED 
(
	"EventLogID" ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"
) ON "PRIMARY"


CREATE TABLE "public"."{0}Levels"(
	"LevelID" serial NOT NULL,
	"Description" character varying(255) NOT NULL,
 CONSTRAINT "PK_{0}Levels" PRIMARY KEY CLUSTERED 
(
	"LevelID" ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"
) ON "PRIMARY"


CREATE TABLE "public"."{0}ObjectLogDetails"(
	"ObjectLogDetailID" serial NOT NULL,
	"ObjectLogID" integer NOT NULL,
	"OperationID" integer NOT NULL,
	"LevelID" integer NOT NULL,
	"PropertyName" character varying(255) NOT NULL,
	"PropertyValue" character varying(255)NULL,
	"PropertyType" character varying(255)NULL,
 CONSTRAINT "PK_{0}ObjectLogDetails" PRIMARY KEY CLUSTERED 
(
	"ObjectLogDetailID" ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"
) ON "PRIMARY"


CREATE TABLE "public"."{0}ObjectLogs"(
	"ObjectLogID" serial NOT NULL,
	"Name" character varying(255) NOT NULL,
	"ObjectType" character varying(255) NOT NULL,
 CONSTRAINT "PK_{0}ObjectLogs" PRIMARY KEY CLUSTERED 
(
	"ObjectLogID" ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"
) ON "PRIMARY"


CREATE TABLE "public"."{0}Operations"(
	"OperaionID" serial NOT NULL,
	"User" character varying(255) NULL,
	"Guid" UniqueIdentifier NULL,
	"PcName" ncharacter varying(255)NULL,
	"TimeStamp" datetime NOT NULL,
	"KeyValue" character varying(255) NULL,
 CONSTRAINT "PK_{0}Operations" PRIMARY KEY CLUSTERED 
(
	"OperaionID" ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"
) ON "PRIMARY"


ALTER TABLE "public"."{0}EventLogs"  WITH CHECK ADD  CONSTRAINT "FK_{0}EventLogs_{0}Levels" FOREIGN KEY("LevelID")
REFERENCES "public"."{0}Levels" ("LevelID")

ALTER TABLE "public"."{0}EventLogs" CHECK CONSTRAINT "FK_{0}EventLogs_{0}Levels"

ALTER TABLE "public"."{0}EventLogs"  WITH CHECK ADD  CONSTRAINT "FK_{0}EventLogs_{0}Operations" FOREIGN KEY("OperationID")
REFERENCES "public"."{0}Operations" ("OperaionID")

ALTER TABLE "public"."{0}EventLogs" CHECK CONSTRAINT "FK_{0}EventLogs_{0}Operations"

ALTER TABLE "public"."{0}ObjectLogDetails"  WITH CHECK ADD  CONSTRAINT "FK_{0}ObjectLogDetails_{0}Levels" FOREIGN KEY("LevelID")
REFERENCES "public"."{0}Levels" ("LevelID")

ALTER TABLE "public"."{0}ObjectLogDetails" CHECK CONSTRAINT "FK_{0}ObjectLogDetails_{0}Levels"

ALTER TABLE "public"."{0}ObjectLogDetails"  WITH CHECK ADD  CONSTRAINT "FK_{0}ObjectLogDetails_{0}ObjectLogs" FOREIGN KEY("ObjectLogID")
REFERENCES "public"."{0}ObjectLogs" ("ObjectLogID")

ALTER TABLE "public"."{0}ObjectLogDetails" CHECK CONSTRAINT "FK_{0}ObjectLogDetails_{0}ObjectLogs"

ALTER TABLE "public"."{0}ObjectLogDetails"  WITH CHECK ADD  CONSTRAINT "FK_{0}ObjectLogDetails_{0}Operations" FOREIGN KEY("OperationID")
REFERENCES "public"."{0}Operations" ("OperaionID")

ALTER TABLE "public"."{0}ObjectLogDetails" CHECK CONSTRAINT "FK_{0}ObjectLogDetails_{0}Operations"
