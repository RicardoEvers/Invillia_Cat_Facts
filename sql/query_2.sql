EXPORT DATA OPTIONS(
  uri='gs://catbucket/catfolder/*.csv',
  format='CSV',
  overwrite=true,
  header=true,
  field_delimiter=',') 
  AS 
  SELECT text, created_at, updated_at
    FROM `cat_project.cat_dataset.cat_facts`
    LIMIT 100;
