-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 06:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basicflask`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2024-10-08 14:50:22', 'firstpost@gmail.com'),
(2, 'kunal', '7474747474', 'hlo database.', '2024-10-08 15:54:38', 'kunal@gmail.com'),
(3, 'akshay', '4545454545', 'hlo database', '2024-10-08 15:56:39', 'akshay@gmail.com'),
(4, 'aruan', '1234123422', 'hi database', '2024-10-09 12:02:00', 'arun@gmail.com'),
(5, 'aruan', '1234123422', 'hi database', '2024-10-09 12:02:37', 'arun@gmail.com'),
(6, 'kunal', '7878787878', 'hi mail ', '2024-10-09 12:04:35', 'kunal@gmail.com'),
(7, 'kunal', '7878787878', 'hi mail ', '2024-10-09 12:05:32', 'kunal@gmail.com'),
(8, 'kual', '7878787878', 'hi database', '2024-10-09 12:06:36', 'kunal@gmail.com'),
(9, 'dfdf', 'dsffdfs', 'sd mail send please', '2024-10-09 12:10:08', 'dfdf@df.dfd'),
(10, 'Arpit', '4141414141', 'hi bro', '2024-10-09 12:19:07', 'arpit@gmail.com'),
(11, 'dfdf', '7878787878', 'hi', '2024-10-09 15:08:59', 'dfdf@df.dfd'),
(12, 'nitin', '7878787878', 'hi database...', '2024-10-09 16:01:09', 'nitin@gmail.com'),
(13, 'nitin', '7878787878', 'ggfdsgdfsg', '2024-10-09 16:04:46', 'nitin@gmail.com'),
(14, 'nitin', '7878787878', 'fgdsfg', '2024-10-09 16:13:56', 'nitin@gmail.com'),
(15, 'shubham', '7878787878', 'hi', '2024-10-09 17:08:57', 'shubham@gmail.com'),
(16, 'kunal', '8994545454', 'hoijlkj', '2024-10-10 11:03:13', 'kunal@gmail.com'),
(17, 'kunal', '8994545454', 'hoijlkj', '2024-10-10 11:12:02', 'kunal@gmail.com'),
(18, 'nitin', '7878787878', 'hi nitin mail is recieved or not?', '2024-10-10 11:38:53', 'nitin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets Learn about stocks.', 'This is first post.', 'first-post', 'A stock market(is made by ritik), equity market, or share market is the aggregation of buyers and sellers of stocks (also called shares).', 'about-bg1.jp', '2024-10-16 12:42:16'),
(2, 'This is second post', 'coolest post ever.', 'second-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\n\n', '', '2024-10-14 11:05:01'),
(3, 'Variables', 'lets discuss about jinja varibles.', 'Third-post', 'Template variables are defined by the context dictionary passed to the template.\r\n\r\nYou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.', '', '2024-10-14 11:16:23'),
(4, 'Filters', 'lets read about filter in jinja.', 'fourth-post', 'Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.', '', '2024-10-14 11:18:43'),
(5, 'Test', 'Let\'s read about tests of jinja...', 'fifth-post', 'Beside filters, there are also so-called “tests” available. Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.', '', '2024-10-14 11:20:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
