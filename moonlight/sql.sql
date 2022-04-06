CREATE TABLE IF NOT EXISTS `moonlight` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL, 
  `liveid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `xbl` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `hwid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bantrue` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;