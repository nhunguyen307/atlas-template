-- Create "posts" table
CREATE TABLE `posts` (`id` int NOT NULL, `user_id` int NOT NULL, `title` varchar(255) NOT NULL, `body` text NOT NULL, PRIMARY KEY (`id`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- Create "users" table
CREATE TABLE `users` (`id1` int NOT NULL, `user_name` varchar(255) NOT NULL, `email` varchar(255) NOT NULL, PRIMARY KEY (`id1`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
