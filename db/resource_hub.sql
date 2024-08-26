-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2024 at 09:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resource_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_sem` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_sem`, `name`, `course_image`) VALUES
(1, 1, 'Mathematics', 'https://images.unsplash.com/photo-1721332154373-17e78d19b4a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8'),
(2, 1, 'Physics', 'https://images.unsplash.com/photo-1721332154373-17e78d19b4a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8'),
(3, 2, 'Chemistry', 'https://images.unsplash.com/photo-1721332154373-17e78d19b4a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8'),
(4, 2, 'Biology', 'https://images.unsplash.com/photo-1719937206667-ac87c15ad3e9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D'),
(5, 3, 'Computer Science', 'https://images.unsplash.com/photo-1721332154373-17e78d19b4a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8'),
(6, 1, 'PHP and MySQL ', 'https://images.unsplash.com/photo-1721332154373-17e78d19b4a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8'),
(7, 1, 'JAVA', 'https://images.unsplash.com/photo-1721332154373-17e78d19b4a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8'),
(8, 1, 'python', 'https://images.unsplash.com/photo-1721332154373-17e78d19b4a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `course_id`, `name`) VALUES
(1, 1, 'Algebra'),
(2, 1, 'Calculus'),
(3, 2, 'Mechanics'),
(4, 2, 'Thermodynamics'),
(5, 3, 'Organic Chemistry'),
(6, 3, 'Inorganic Chemistry'),
(7, 4, 'Genetics'),
(8, 4, 'Ecology'),
(9, 5, 'Data Structures'),
(10, 5, 'Operating Systems');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resource_id`, `topic_id`, `type`, `link`) VALUES
(1, 1, 'pdf', 'https://example.com/linear_equations.pdf'),
(2, 2, 'pdf', 'https://example.com/quadratic_equations.pdf'),
(3, 3, 'video', 'https://www.youtube.com/watch?v=YQHsXMglC9A'),
(4, 4, 'pdf', 'https://example.com/integration_notes.pdf'),
(5, 5, 'pdf', 'https://example.com/newtons_laws.pdf'),
(6, 6, 'video', 'https://example.com/kinematics_video.mp4'),
(7, 7, 'pdf', 'https://example.com/thermodynamics_laws.pdf'),
(8, 8, 'pdf', 'https://example.com/heat_transfer.pdf'),
(9, 9, 'pdf', 'https://example.com/hydrocarbons.pdf'),
(10, 10, 'pdf', 'https://example.com/aromatic_compounds.pdf'),
(11, 11, 'pdf', 'https://example.com/periodic_table.pdf'),
(12, 12, 'pdf', 'https://example.com/chemical_bonding.pdf'),
(13, 13, 'video', 'https://example.com/mendelian_genetics.mp4'),
(14, 14, 'pdf', 'https://example.com/dna_structure.pdf'),
(15, 15, 'pdf', 'https://example.com/ecosystems.pdf'),
(16, 16, 'video', 'https://example.com/biodiversity_video.mp4'),
(17, 17, 'pdf', 'https://example.com/arrays.pdf'),
(18, 18, 'pdf', 'https://example.com/linked_lists.pdf'),
(19, 19, 'pdf', 'https://example.com/processes.pdf'),
(20, 20, 'pdf', 'https://example.com/memory_management.pdf'),
(21, 4, 'pdf', 'https://www.google.com'),
(22, 4, 'video', 'https://www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `module_id`, `name`) VALUES
(1, 1, 'Linear Equations'),
(2, 1, 'Quadratic Equations'),
(3, 2, 'Differentiation'),
(4, 2, 'Integration'),
(5, 3, 'Newton\'s Laws'),
(6, 3, 'Kinematics'),
(7, 4, 'Laws of Thermodynamics'),
(8, 4, 'Heat Transfer'),
(9, 5, 'Hydrocarbons'),
(10, 5, 'Aromatic Compounds'),
(11, 6, 'Periodic Table'),
(12, 6, 'Chemical Bonding'),
(13, 7, 'Mendelian Genetics'),
(14, 7, 'DNA Structure'),
(15, 8, 'Ecosystems'),
(16, 8, 'Biodiversity'),
(17, 9, 'Arrays'),
(18, 9, 'Linked Lists'),
(19, 10, 'Processes'),
(20, 10, 'Memory Management');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `module_id` (`module_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`topic_id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
