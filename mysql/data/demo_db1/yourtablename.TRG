TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `insert_custom_id` BEFORE INSERT ON `yourtablename` FOR EACH ROW BEGIN\n    DECLARE next_id INT;\n    SET next_id = 1 + COALESCE((SELECT MAX(SUBSTRING(custom_id, 5)) FROM YourTableName), 0);\n    SET NEW.custom_id = CONCAT(\'NJOY\', LPAD(next_id, 4, \'0\'));\nEND'
sql_modes=524288
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=1701327555472775
