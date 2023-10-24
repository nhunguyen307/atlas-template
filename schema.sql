CREATE TABLE `users` (
  `id` bigint,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `repos` (
  `id` bigint,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NULL,
  `owner_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
);

CREATE TABLE `commits` (
  `id` bigint,
  `message` varchar(255) NOT NULL,
  `repo_id` bigint NOT NULL,
  `author_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `repo_id` FOREIGN KEY (`repo_id`) REFERENCES `repos` (`id`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
);