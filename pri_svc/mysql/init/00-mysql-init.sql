-- === Nextcloud ===
CREATE DATABASE IF NOT EXISTS `nextcloud_db`
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'next_admin'@'192.168.%' IDENTIFIED BY 'next_pass';
GRANT ALL PRIVILEGES ON `nextcloud_db`.* TO 'next_admin'@'192.168.%';

-- === WordPress ===
CREATE DATABASE IF NOT EXISTS `wordpress_db`
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'wp_admin'@'10.0.0.100' IDENTIFIED BY 'wp_pass';
GRANT ALL PRIVILEGES ON `wordpress_db`.* TO 'wp_admin'@'10.0.0.100';

-- === MediaWiki ===
CREATE DATABASE IF NOT EXISTS `mediawiki_db`
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'wiki_admin'@'10.0.0.100' IDENTIFIED BY 'wiki_pass';
GRANT ALL PRIVILEGES ON `mediawiki_db`.* TO 'wiki_admin'@'10.0.0.100';

FLUSH PRIVILEGES;
