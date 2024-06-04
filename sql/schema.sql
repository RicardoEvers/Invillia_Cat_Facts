/* CREATE TABLE ON BIGQUERY */
CREATE TABLE cat_facts (
    "status" STRING,
    _id STRING PRIMARY KEY,
    user STRING,
    "text" STRING,
    __v INTEGER,
    source STRING,
    updated_at DATETIME,
    "type" STRING,
    created_at DATETIME,
    deleted BOOLEAN,
    used BOOLEAN
);


/* CREATE TABLE ON ANOTHER DATABASES*/
CREATE TABLE cat_facts (
    "status" VARCHAR(255),
    _id VARCHAR(255) PRIMARY KEY,
    user VARCHAR(255),
    "text" TEXT,
    __v INTEGER,
    source VARCHAR(255),
    updated_at DATETIME,
    "type" VARCHAR(255),
    created_at DATETIME,
    deleted BOOLEAN,
    used BOOLEAN
);