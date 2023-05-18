-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 01:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `book_name` text DEFAULT NULL,
  `borrow_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `username`, `book_name`, `borrow_date`, `return_date`, `last_login`, `reg_date`, `logout`) VALUES
(1, 'Sarvesh', NULL, NULL, NULL, '2023-05-02 08:55:49', NULL, NULL),
(2, 'Sarvesh', NULL, NULL, NULL, NULL, NULL, '2023-05-12 00:00:00'),
(3, 'Sarvesh', NULL, NULL, NULL, '2023-05-14 09:52:34', NULL, NULL),
(4, 'Sarvesh', NULL, NULL, NULL, NULL, NULL, '2023-05-14 09:56:41'),
(5, 'Sarvesh', 'The Great Gatsby', '2023-05-14 11:38:37', NULL, NULL, NULL, NULL),
(6, 'Sarvesh', 'The Great Gatsby', NULL, '2023-05-14 12:42:10', NULL, NULL, NULL),
(7, 'Sarvesh', NULL, NULL, NULL, '2023-05-14 16:14:25', NULL, NULL),
(8, 'Sarvesh', NULL, NULL, NULL, NULL, NULL, '2023-05-14 16:15:17'),
(9, 'Sarvesh', NULL, NULL, NULL, '2023-05-14 16:22:03', NULL, NULL),
(10, 'Sarvesh', NULL, NULL, NULL, NULL, NULL, '2023-05-14 16:22:57'),
(11, 'Sarvesh', NULL, NULL, NULL, '2023-05-14 16:41:53', NULL, NULL),
(12, 'Sarvesh', NULL, NULL, NULL, NULL, NULL, '2023-05-14 16:43:50'),
(13, 'Sarvesh', 'The Girl with the Dragon Tattoo', '2023-05-14 16:50:17', NULL, NULL, NULL, NULL),
(14, 'Sarvesh', 'The Girl with the Dragon Tattoo', NULL, '2023-05-14 16:50:47', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Email`, `Password`) VALUES
(1, 'raunak', 'ron@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `publisher` text NOT NULL,
  `book_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `author` text NOT NULL,
  `copies_available` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `added_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `publisher`, `book_id`, `category`, `author`, `copies_available`, `price`, `status`, `added_on`) VALUES
(1, 'The Great Gatsby', 'Penguin Books', 1234, 'Fiction', 'F. Scott Fitzgerald', 6, 499, 'available', '2023-05-08'),
(2, 'To Kill a Mockingbird', 'HarperCollins Publishers', 5678, 'Fiction', 'Harper Lee', 2, 399, 'available', '2023-05-08'),
(3, '1984', 'Penguin Books', 91011, 'Science Fiction', 'George Orwell', 6, 299, 'available', '2023-05-08'),
(4, 'The Catcher in the Rye', 'Little, Brown and Company', 121314, 'Fiction', 'J.D. Salinger', 1, 349, 'available', '2023-05-08'),
(5, 'Pride and Prejudice', 'Penguin Classics', 151617, 'Romance', 'Jane Austen', 3, 199, 'available', '2023-05-08'),
(6, 'The Hobbit', 'HarperCollins Publishers', 181920, 'Fantasy', 'J.R.R. Tolkien', 5, 299, 'available', '2023-05-08'),
(7, 'The Lord of the Rings', 'HarperCollins Publishers', 212223, 'Fantasy', 'J.R.R. Tolkien', 3, 499, 'available', '2023-05-08'),
(8, 'Harry Potter and the Philosopher\'s Stone', 'Bloomsbury Publishing', 242526, 'Fantasy', 'J.K. Rowling', 8, 599, 'available', '2023-05-08'),
(9, 'The Da Vinci Code', 'Transworld Publishers', 272829, 'Mystery', 'Dan Brown', 3, 449, 'available', '2023-05-14'),
(10, 'The Girl with the Dragon Tattoo', 'Vintage Books', 303132, 'Mystery', 'Stieg Larsson', 2, 399, 'available', '2023-05-22'),
(18, 'Tejas Hav', 'ssda', 1235, 'Romance', 'abcd', 23, 320, 'Available', '2023-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `reg_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FullName`, `Username`, `Email`, `Password`, `reg_on`) VALUES
(1, 'Sarvesh Sutar', 'Sarvesh', 'dasad@rsg.ij', '1', '2023-05-14 07:48:12'),
(2, 'Ron', 'Rox', 'lolr@gmail.com ', '1', '2023-05-11 11:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_books`
--

CREATE TABLE `user_books` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `submitted_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_books`
--

INSERT INTO `user_books` (`id`, `user_id`, `book_id`, `borrow_date`, `return_date`, `submitted_date`) VALUES
(18, 1, 1234, '2023-05-09', '2023-05-16', '2023-05-14'),
(19, 1, 151617, '2023-05-09', '2023-05-16', '2023-05-09'),
(20, 1, 212223, '2023-05-09', '2023-05-16', '2023-05-09'),
(21, 1, 303132, '2023-05-09', '2023-05-16', '2023-05-14'),
(22, 1, 1234, '2023-05-09', '2023-05-16', '2023-05-14'),
(23, 1, 5678, '2023-05-09', '2023-05-16', '2023-05-09'),
(24, 1, 91011, '2023-05-09', '2023-05-16', '2023-05-09'),
(25, 1, 121314, '2023-05-09', '2023-05-16', '2023-05-09'),
(30, 1, 242526, '2023-04-24', '2023-05-30', NULL),
(33, 1, 5678, '2023-05-13', '2023-05-20', NULL),
(34, 1, 91011, '2023-05-13', '2023-05-20', NULL),
(35, 1, 121314, '2023-05-10', '2023-05-20', NULL),
(36, 1, 181920, '2023-05-13', '2023-05-20', NULL),
(37, 1, 151617, '2023-05-12', '2023-05-20', NULL),
(38, 1, 212223, '2023-05-13', '2023-05-20', NULL),
(39, 1, 272829, '2023-05-13', '2023-05-20', '2023-05-13'),
(40, 1, 1234, '2023-05-14', '2023-05-21', '2023-05-14'),
(41, 1, 303132, '2023-05-14', '2023-05-21', '2023-05-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `constraint_name` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_books`
--
ALTER TABLE `user_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_books`
--
ALTER TABLE `user_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_books`
--
ALTER TABLE `user_books`
  ADD CONSTRAINT `user_books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
