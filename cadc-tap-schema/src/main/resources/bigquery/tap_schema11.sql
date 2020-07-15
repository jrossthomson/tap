
-- minimal tap_schema creation

-- assumes that the tap_schema schema exists

-- sizes for fields are rather arbitrary and generous

-- tested with: PostgreSQL 9.x, 10.x

create table tap_schema.schemas11
(
	schema_name   STRING,
	utype         STRING,
	description   STRING,
        schema_index  INT64,
	
-- extension: permissions for user-created content
    owner_id        STRING,
    read_anon       INT64,
    read_only_group  STRING,
    read_write_group STRING

)
;


create table tap_schema.tables11
(
	schema_name   STRING  NOT NULL,
	table_name    STRING NOT NULL,
        table_type    STRING   NOT NULL,
	utype         STRING,
	description   STRING,
	table_index   INT64,

-- extension: permissions for user-created content
    owner_id        STRING,
    read_anon       INT64,
    read_only_group  STRING,
    read_write_group STRING
)
;

create table tap_schema.columns11
(
	table_name    STRING NOT NULL,
	column_name   STRING  NOT NULL,
	utype         STRING,
	ucd           STRING,
	unit          STRING,
	description   STRING,
	datatype      STRING  NOT NULL,
-- TAP-1.1 arraysize
	arraysize     STRING,
-- TAP-1.1 xtype
        xtype         STRING,
-- TAP-1.1 size is deprecated
	size          INT64,
	principal     INT64      NOT NULL,
	indexed       INT64      NOT NULL,
	std           INT64      NOT NULL,
-- TAP-1.1 column_index
	column_index   INT64,
-- extension: globally unique columnID for use as an XML ID attribute on the FIELD in VOTable output
        id            STRING,
	
-- extension: permissions for user-created content
    owner_id        STRING,
    read_anon       INT64,
    read_only_group  STRING,
    read_write_group STRING

)
;

create table tap_schema.keys11
(
	key_id        STRING  NOT NULL,
	from_table    STRING NOT NULL,
	target_table  STRING NOT NULL,
	utype         STRING,
	description   STRING
)
;

create table tap_schema.key_columns11
(
	key_id          STRING NOT NULL,
	from_column     STRING NOT NULL,
	target_column   STRING NOT NULL
)
;


