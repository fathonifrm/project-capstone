-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 08:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `certificate`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `name_certificate` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `events` varchar(255) NOT NULL,
  `name_of_signatory` varchar(255) NOT NULL,
  `certificate_png` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `name_certificate`, `full_name`, `events`, `name_of_signatory`, `certificate_png`, `user_id`, `created_at`, `updated_at`) VALUES
(49, '6+oAXzb3N8x3OUY67+D+f06O0HXWizkYQet5eqCfeuKWhISWXILbM+ZIjD+tMlO4SqPj3n+1xWEMwp38n40j98NihA65l4hRDYsw+JJledjNHpQcBJnJHFjwD7tf4rpLW9Vghwk+isG7ChKWtq9h+6VFsNnQTD2D/VZli1uY6L+uVqnX3+evei59tUY/fg==', 'XissZ5AaeXMqzZOI06XCiktq7F81Xo6S3s92vwZC8HwMpzbv0qA+D/X4WaZmEzWrFq6TBS/cde9ZwKo+3byh3DZrgZUrN8qJpNSYpMQWqEYwZQWt0mIrloKSHR5xDDEOg9q/5aA+0g==', 'INo4w00AOshWaumsNfVlmczt3hz3emg2aqFFAvgKKmQdsuUDsDJOaO9AVLy078G3VSWoMFXSjY/kj+n5EKcwOk2JXRpvcTXjFhgQSP0QcVeWPEfiMI145A8UW97KfJfOYK215T3WvE/+EHHlwsVycUXGre/D4w==', 'Ig44iou66jQKBDmvh6W0MrGFAcO9jzseeb/w4BJT+LGflFF8+dOAMPHExthXwc1c3B85tC2JLg0r+unK/3WAmkgItFFI34eclCPC+WG3Q9GBFLmK7Ciq3A==', 'wV64mFlWPd6zOOWZuVPs0xASNkfMyoAivWfNWKQUhuAeC0P41lC6vnJIjJTnFNDKxebGNRbj8dw0Whs+JdG2OAR8+EOLAeP5mMiuq0vbKQAmeH+q1Fb2YySSnkofVQpu+2UYmyk22WPtTiw367qHm57f/kAoxiU+mLMY3NeVRxWRVdJg66FN6HayyOkoEkVKBtTCKx04AgkDo3U8lgT3d7ncVGBIxo6Fxb53JQ==', 19, '2024-06-02 10:33:29', '2024-06-02 10:33:29'),
(50, '6+oAXzb3N8x3OUY67+D+f06O0HXWizkYQet5eqCfeuKWhISWXILbM+ZIjD+tMlO4SqPj3n+1xWEMwp38n40j98NihA65l4hRDYsw+JJledjNHpQcBJnJHFjwD7tf4rpLW9Vghwk+isG7ChKWtq9h+6VFsNnQTD2D/VZli1uY6L+uVqnX3+evei59tUY/fg==', 'XissZ5AaeXMqzZOI06XCiktq7F81Xo6S3s92vwZC8HwMpzbv0qA+D/X4WaZmEzWrFq6TBS/cde9ZwKo+3byh3DZrgZUrN8qJpNSYpMQWqEYwZQWt0mIrloKSHR5xDDEOg9q/5aA+0g==', 'INo4w00AOshWaumsNfVlmczt3hz3emg2aqFFAvgKKmQdsuUDsDJOaO9AVLy078G3VSWoMFXSjY/kj+n5EKcwOk2JXRpvcTXjFhgQSP0QcVeWPEfiMI145A8UW97KfJfOYK215T3WvE/+EHHlwsVycUXGre/D4w==', 'Ig44iou66jQKBDmvh6W0MrGFAcO9jzseeb/w4BJT+LGflFF8+dOAMPHExthXwc1c3B85tC2JLg0r+unK/3WAmkgItFFI34eclCPC+WG3Q9GBFLmK7Ciq3A==', 'wV64mFlWPd6zOOWZuVPs0xASNkfMyoAivWfNWKQUhuAeC0P41lC6vnJIjJTnFNDKxebGNRbj8dw0Whs+JdG2OAR8+EOLAeP5mMiuq0vbKQAmeH+q1Fb2YySSnkofVQpu+2UYmyk22WPtTiw367qHm57f/kAoxiU+mLMY3NeVRxWRVdJg66FN6HayyOkoEkVKBtTCKx04AgkDo3U8lgT3d7ncVGBIxo6Fxb53JQ==', 21, '2024-06-02 10:33:29', '2024-06-02 10:33:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
