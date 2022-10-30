SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS literasenia DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE literasenia;

CREATE TABLE posts (
  id int(11) NOT NULL,
  title text NOT NULL,
  imgPath text NOT NULL,
  date date NOT NULL DEFAULT current_timestamp(),
  review longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO posts (id, title, imgPath, date, review) VALUES
(1, 'Primer Post', '/literasenia/assets/img/post-bg.jpg', '2022-10-29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit pretium ex, a tempor est rutrum id. Curabitur vel enim odio. Nunc risus dolor, bibendum non laoreet at, congue ac tellus. Aliquam tristique auctor urna. Sed lobortis ex vitae convallis imperdiet. Nulla semper non nisi ut fermentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam sagittis augue et risus sollicitudin, vitae bibendum leo dictum. Donec sed urna ipsum. Proin a enim ante. Aenean venenatis diam lacus. Ut nulla sem, volutpat at tellus vitae, consequat mollis libero. Vestibulum eget libero eget velit tempor consectetur. Vivamus pretium augue nec velit fermentum finibus.\r\n\r\nNam dolor urna, tincidunt sit amet purus sed, iaculis tristique mauris. Etiam viverra nisi dolor, aliquet malesuada nulla suscipit ac. Phasellus velit metus, viverra vel magna id, imperdiet hendrerit augue. Nullam eu magna porta, fermentum sem sit amet, convallis velit. In volutpat sollicitudin massa et molestie. Maecenas scelerisque nibh nisi, quis elementum justo aliquet in. Phasellus sed laoreet nisi. Vestibulum a gravida felis. Proin dui diam, sollicitudin et tincidunt a, sollicitudin at ex. Vivamus dui diam, sagittis quis lectus elementum, tristique molestie diam. Quisque placerat ornare bibendum. Integer vitae mollis mi. Nulla aliquam felis viverra magna ultrices gravida. Proin vel leo euismod, accumsan elit eget, sodales elit. Vivamus feugiat nibh sed augue commodo, ut venenatis sem vestibulum. Pellentesque sapien nisl, mattis nec ipsum sit amet, elementum laoreet urna.\r\n\r\nNunc rutrum, dui imperdiet blandit dignissim, est nisi finibus leo, at elementum odio nibh mollis neque. Nam ullamcorper ex augue, quis aliquet magna condimentum vel. Cras aliquet odio in lectus interdum ornare. Integer felis est, rutrum ac diam in, efficitur cursus purus. Ut ac scelerisque ipsum. Aenean posuere enim eu ante laoreet dignissim. Nunc ut lectus at nisl sagittis mattis quis vitae turpis. Aliquam volutpat dapibus lorem, id feugiat tellus volutpat vitae.'),
(2, 'Segundo Post', '/literasenia/assets/img/post-bg.jpg', '2022-10-29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit pretium ex, a tempor est rutrum id. Curabitur vel enim odio. Nunc risus dolor, bibendum non laoreet at, congue ac tellus. Aliquam tristique auctor urna. Sed lobortis ex vitae convallis imperdiet. Nulla semper non nisi ut fermentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam sagittis augue et risus sollicitudin, vitae bibendum leo dictum. Donec sed urna ipsum. Proin a enim ante. Aenean venenatis diam lacus. Ut nulla sem, volutpat at tellus vitae, consequat mollis libero. Vestibulum eget libero eget velit tempor consectetur. Vivamus pretium augue nec velit fermentum finibus.\r\n\r\nNam dolor urna, tincidunt sit amet purus sed, iaculis tristique mauris. Etiam viverra nisi dolor, aliquet malesuada nulla suscipit ac. Phasellus velit metus, viverra vel magna id, imperdiet hendrerit augue. Nullam eu magna porta, fermentum sem sit amet, convallis velit. In volutpat sollicitudin massa et molestie. Maecenas scelerisque nibh nisi, quis elementum justo aliquet in. Phasellus sed laoreet nisi. Vestibulum a gravida felis. Proin dui diam, sollicitudin et tincidunt a, sollicitudin at ex. Vivamus dui diam, sagittis quis lectus elementum, tristique molestie diam. Quisque placerat ornare bibendum. Integer vitae mollis mi. Nulla aliquam felis viverra magna ultrices gravida. Proin vel leo euismod, accumsan elit eget, sodales elit. Vivamus feugiat nibh sed augue commodo, ut venenatis sem vestibulum. Pellentesque sapien nisl, mattis nec ipsum sit amet, elementum laoreet urna.\r\n\r\nNunc rutrum, dui imperdiet blandit dignissim, est nisi finibus leo, at elementum odio nibh mollis neque. Nam ullamcorper ex augue, quis aliquet magna condimentum vel. Cras aliquet odio in lectus interdum ornare. Integer felis est, rutrum ac diam in, efficitur cursus purus. Ut ac scelerisque ipsum. Aenean posuere enim eu ante laoreet dignissim. Nunc ut lectus at nisl sagittis mattis quis vitae turpis. Aliquam volutpat dapibus lorem, id feugiat tellus volutpat vitae.');


ALTER TABLE posts
  ADD PRIMARY KEY (id);


ALTER TABLE posts
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
