TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `before_insert_pro` BEFORE INSERT ON `product_attributes` FOR EACH ROW BEGIN\n    DECLARE last_id INT;\n    -- Get the last used numeric part of ASNID\n    SET last_id = COALESCE((SELECT MAX(SUBSTRING(ASNID, 5)) FROM product_attributes), 0);\n    -- Increment the last used numeric part\n    SET last_id = last_id + 1;\n    -- Set the new ASNID for the inserting row\n    SET NEW.ASNID = CONCAT(\'NJOY\', LPAD(last_id, 5, \'0\'));\nEND'
sql_modes=524288
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=1698900234761200
