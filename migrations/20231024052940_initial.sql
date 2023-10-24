-- Drop "posts" table
DROP TABLE `posts`;
-- Modify "users" table
ALTER TABLE `users` DROP COLUMN `id1`, DROP COLUMN `user_name`, DROP COLUMN `email`, ADD COLUMN `id` bigint NOT NULL, ADD COLUMN `name` varchar(255) NOT NULL, DROP PRIMARY KEY, ADD PRIMARY KEY (`id`);
-- Create "repos" table
CREATE TABLE `repos` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `owner_id` (`owner_id`),
  CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
