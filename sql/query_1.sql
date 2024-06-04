SELECT *
FROM `cat_project.cat_dataset.cat_facts`
WHERE DATE(updated_at) >= '2020-08-01' AND DATE(updated_at) < '2020-09-01';
