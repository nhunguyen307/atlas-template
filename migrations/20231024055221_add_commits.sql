-- Modify "repos" table
ALTER TABLE `repos` ADD COLUMN `description` varchar(255) NULL;
-- Create "commits" table
CREATE TABLE `commits` (
  `id` bigint NOT NULL,
  `message` varchar(255) NOT NULL,
  `repo_id` bigint NOT NULL,
  `author_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `author_id` (`author_id`),
  INDEX `repo_id` (`repo_id`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `repo_id` FOREIGN KEY (`repo_id`) REFERENCES `repos` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
