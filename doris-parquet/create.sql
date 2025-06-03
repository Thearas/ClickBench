CREATE DATABASE IF NOT EXISTS hits;
CREATE VIEW hits.hits
AS 
SELECT * FROM local(
    "file_path" = "hits_*.parquet", 
    "shared_storage" = "true", -- omit "backend_id" = "be_id",
    "format" = "parquet"
);
