-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 31, 2025 lúc 06:30 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kdt_music`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_songs`
--

CREATE TABLE `admin_songs` (
  `id` int(11) NOT NULL,
  `itunes_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `stream_url` varchar(500) DEFAULT NULL,
  `duration` int(11) DEFAULT 0,
  `lyrics_start_time` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_songs`
--

INSERT INTO `admin_songs` (`id`, `itunes_id`, `title`, `artist`, `thumbnail`, `category`, `stream_url`, `duration`, `lyrics_start_time`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Cho Anh Ve', 'Bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', 'V-Pop Thịnh Hành', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1765886328/CH%E1%BB%9C_ANH_V%E1%BB%80_txnwin.mp3', 180, 15000, '2025-12-31 06:37:36', '2025-12-31 10:25:52'),
(4, NULL, 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 'https://i1.sndcdn.com/artworks-ylsBh7cHHpW4ptVa-1fN6mA-t500x500.png', 'V-Pop Thịnh Hành', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1765887995/%C4%90O%E1%BA%A0N_K%E1%BB%8ACH_C%C3%82M_iu0cit.mp3', 180, 0, '2025-12-31 17:17:42', '2025-12-31 17:17:42'),
(5, NULL, 'Buong doi tay nhau ra', 'sơn tùng m-tp', 'https://photo-resize-zmp3.zadn.vn/w600_r1x1_jpeg/cover/e/d/d/a/edda9844722bd0484b317662754e7417.jpg', 'V-Pop Thịnh Hành', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1766056933/Bu%C3%B4ng_%C4%90%C3%B4i_Tay_Nhau_Ra_kmmrua.mp3', 180, 0, '2025-12-31 17:18:51', '2025-12-31 17:23:49'),
(6, NULL, 'âm thầm bên em', 'Son Tung MTP', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvrrNfBZZbTx4Phs0PQ5oIxxZnAiybAr9ieQ&s', 'V-Pop Thịnh Hành', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1766251509/%C3%82m_Th%E1%BA%A7m_B%C3%AAn_Em_fvemdw.mp3', 180, 0, '2025-12-31 17:24:45', '2025-12-31 17:24:45'),
(7, NULL, 'Exit Sign', 'HIEUTHUHAI', 'https://i.ytimg.com/vi/sJt_i0hOugA/maxresdefault.jpg', 'V-Pop Thịnh Hành', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1765896654/Exit_Sign_hjblu0.mp3', 180, 0, '2025-12-31 17:26:27', '2025-12-31 17:26:27'),
(8, NULL, 'Som Muon Thi ', 'HUSTLANG Robber, Nhâm Phương Nam, Mason Nguyễn, KHOI VU, Jaysonlei, Lamoon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfOhsoUfjdndk2UWCi0lOMaV6NiJ9vi3y7_g&s', 'Tuyệt Phẩm Bolero', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1765896314/S%E1%BB%9AM_MU%E1%BB%98N_TH%C3%8C_pp4aaq.mp3', 180, 0, '2025-12-31 17:27:36', '2025-12-31 17:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_type` enum('admin','itunes') NOT NULL,
  `song_id` varchar(255) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `song_type`, `song_id`, `song_title`, `artist_name`, `comment_text`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 1, 'itunes', '1790702667', 'Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)', 'Quách Tuấn Du', 'Hay qa', 1, '2025-12-31 06:29:30', '2025-12-31 06:29:30'),
(6, 1, 'admin', '3', 'chờ anh về', 'bray', 'Bray hay', 1, '2025-12-31 06:37:59', '2025-12-31 06:37:59'),
(7, 1, 'admin', '4', 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 'Hay qua dii', 1, '2025-12-31 17:28:03', '2025-12-31 17:28:03'),
(8, 1, 'admin', '4', 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 'Dang cap', 1, '2025-12-31 17:28:07', '2025-12-31 17:28:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `downloads`
--

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_type` varchar(50) NOT NULL,
  `song_id` varchar(255) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `artwork_url` text DEFAULT NULL,
  `download_url` text DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `downloads`
--

INSERT INTO `downloads` (`id`, `user_id`, `song_type`, `song_id`, `song_title`, `artist_name`, `artwork_url`, `download_url`, `file_size`, `duration`, `created_at`, `updated_at`) VALUES
(1, 1, 'itunes', '1790702667', 'Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)', 'Quách Tuấn Du', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/04/ff/51/04ff5182-f664-2bb0-9fa6-e45e4373da27/3616557643859.jpg/512x512bb.jpg', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/a7/e0/4a/a7e04a03-c1c2-cd4e-d4a1-54d8c67cf35c/mzaf_2692510584802974000.plus.aac.p.m4a', NULL, NULL, '2025-12-31 06:35:42', '2025-12-31 06:35:42'),
(2, 1, 'admin', '3', 'chờ anh về', 'bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1765886328/CH%E1%BB%9C_ANH_V%E1%BB%80_txnwin.mp3', NULL, NULL, '2025-12-31 06:37:50', '2025-12-31 06:37:50'),
(3, 1, 'admin', '4', 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 'https://i1.sndcdn.com/artworks-ylsBh7cHHpW4ptVa-1fN6mA-t500x500.png', 'https://res.cloudinary.com/dy0rox9id/video/upload/v1765887995/%C4%90O%E1%BA%A0N_K%E1%BB%8ACH_C%C3%82M_iu0cit.mp3', NULL, NULL, '2025-12-31 17:27:55', '2025-12-31 17:27:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listening_history`
--

CREATE TABLE `listening_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_type` enum('admin','itunes') NOT NULL,
  `song_id` varchar(255) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `listened_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `listen_date` date NOT NULL,
  `duration_listened` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `listening_history`
--

INSERT INTO `listening_history` (`id`, `user_id`, `song_type`, `song_id`, `song_title`, `artist_name`, `thumbnail`, `listened_at`, `listen_date`, `duration_listened`) VALUES
(1, 1, 'itunes', '1790702667', 'Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)', 'Quách Tuấn Du', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/04/ff/51/04ff5182-f664-2bb0-9fa6-e45e4373da27/3616557643859.jpg/512x512bb.jpg', '2025-12-31 06:35:57', '2025-12-31', 17),
(2, 1, 'admin', '3', 'chờ anh về', 'bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', '2025-12-31 06:38:06', '2025-12-31', 22),
(3, 1, 'admin', '3', 'chờ anh về', 'bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', '2025-12-31 06:40:58', '2025-12-31', 15),
(4, 1, 'admin', '3', 'chờ anh về', 'bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', '2025-12-31 06:48:58', '2025-12-31', 15),
(5, 1, 'admin', '3', 'Cho Anh Ve', 'Bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', '2025-12-31 10:30:28', '2025-12-31', 30),
(6, 1, 'admin', '3', 'Cho Anh Ve', 'Bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', '2025-12-31 10:38:31', '2025-12-31', 54),
(7, 1, 'itunes', '1699043485', 'Liên khúc V-pop Hits (Có Ai Thương Em Như Anh - Sao Người Ta Nỡ Làm Mình Đau - Không Sao Mà, Em Đây Rồi)', 'Hứa Kim Tuyền, LyLy & XHTĐRLX', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/1f/71/a6/1f71a600-7d8f-ae46-7799-641f834e7c1a/197187664108.jpg/512x512bb.jpg', '2025-12-31 17:23:29', '2025-12-31', 36),
(8, 1, 'admin', '4', 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 'https://i1.sndcdn.com/artworks-ylsBh7cHHpW4ptVa-1fN6mA-t500x500.png', '2025-12-31 17:28:13', '2025-12-31', 22),
(9, 1, 'itunes', '1708740818', 'Nơi Này Có Anh', 'Sơn Tùng M-TP', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/13/5c/57/135c57dd-5297-81f3-0f56-1ac5dad47f8c/23UM1IM10890.rgb.jpg/512x512bb.jpg', '2025-12-31 17:29:03', '2025-12-31', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) NOT NULL,
  `receiver_type` enum('admin','user','all') DEFAULT 'user',
  `notification_type` enum('comment','listening','download','new_song','new_user','system') NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `related_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`related_data`)),
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `sender_id`, `receiver_id`, `receiver_type`, `notification_type`, `title`, `message`, `related_data`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'admin', 'comment', 'B├¼nh luß║¡n mß╗øi', 'Test User ─æ├ú b├¼nh luß║¡n b├ái h├ít \"Bu├┤ng ─É├┤i Tay Nhau Ra\"', '{\"song_id\": \"9\", \"song_title\": \"Bu├┤ng ─É├┤i Tay Nhau Ra\", \"artist\": \"Sãín T├╣ng M-TP\", \"comment_text\": \"B├ái h├ít hay qu├í!\"}', 1, '2025-12-30 17:26:37', '2025-12-31 12:03:50'),
(2, 2, 1, 'admin', 'listening', 'Lã░ß╗út nghe mß╗øi', 'Test User ─æ├ú nghe b├ái h├ít \"NG├üO NGãá\"', '{\"song_id\": \"8\", \"song_title\": \"NG├üO NGãá\", \"artist\": \"Sãín T├╣ng M-TP\"}', 1, '2025-12-30 17:26:37', '2025-12-31 12:03:50'),
(3, 1, 2, 'user', 'new_song', 'B├ái h├ít mß╗øi', 'Admin ─æ├ú th├¬m b├ái h├ít mß╗øi: \"Ch├║ng Ta Cß╗ºa Hiß╗çn Tß║íi\"', '{\"song_id\": \"10\", \"song_title\": \"Ch├║ng Ta Cß╗ºa Hiß╗çn Tß║íi\", \"artist\": \"Sãín T├╣ng M-TP\"}', 0, '2025-12-30 17:26:37', '2025-12-30 17:26:37'),
(4, 1, 1, 'admin', 'comment', 'Bình luận mới', 'KDT Music Admin đã bình luận bài hát \"Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)\"', '{\"song_id\":\"1790702667\",\"song_title\":\"Li\\u00ean Kh\\u00fac M\\u1eb9 T\\u00f4i\\/C\\u1ea3m \\u01a0n M\\u1eb9 (feat. Quang L\\u00ea)\",\"artist_name\":\"Qu\\u00e1ch Tu\\u1ea5n Du\",\"comment_text\":\"Hay qa\",\"commenter_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:29:30', '2025-12-31 12:03:50'),
(5, 1, 5, 'admin', 'comment', 'Bình luận mới', 'KDT Music Admin đã bình luận bài hát \"Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)\"', '{\"song_id\":\"1790702667\",\"song_title\":\"Li\\u00ean Kh\\u00fac M\\u1eb9 T\\u00f4i\\/C\\u1ea3m \\u01a0n M\\u1eb9 (feat. Quang L\\u00ea)\",\"artist_name\":\"Qu\\u00e1ch Tu\\u1ea5n Du\",\"comment_text\":\"Hay qa\",\"commenter_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:29:30', '2025-12-31 12:03:50'),
(6, 1, 1, 'admin', 'download', 'Tải xuống mới', 'KDT Music Admin đã tải bài hát \"Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)\"', '{\"song_id\":\"1790702667\",\"song_type\":\"itunes\",\"song_title\":\"Li\\u00ean Kh\\u00fac M\\u1eb9 T\\u00f4i\\/C\\u1ea3m \\u01a0n M\\u1eb9 (feat. Quang L\\u00ea)\",\"artist_name\":\"Qu\\u00e1ch Tu\\u1ea5n Du\",\"downloader_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:35:42', '2025-12-31 12:03:50'),
(7, 1, 5, 'admin', 'download', 'Tải xuống mới', 'KDT Music Admin đã tải bài hát \"Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)\"', '{\"song_id\":\"1790702667\",\"song_type\":\"itunes\",\"song_title\":\"Li\\u00ean Kh\\u00fac M\\u1eb9 T\\u00f4i\\/C\\u1ea3m \\u01a0n M\\u1eb9 (feat. Quang L\\u00ea)\",\"artist_name\":\"Qu\\u00e1ch Tu\\u1ea5n Du\",\"downloader_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:35:43', '2025-12-31 12:03:50'),
(8, NULL, 1, 'all', 'new_song', 'Bài hát mới', 'Có bài hát mới: \"chờ anh về \" - bray', '{\"song_id\":\"3\",\"song_title\":\"ch\\u1edd anh v\\u1ec1 \",\"artist_name\":\"bray\",\"thumbnail\":\"https:\\/\\/encrypted-tbn0.gstatic.com\\/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s\",\"category\":\"V-Pop Th\\u1ecbnh H\\u00e0nh\"}', 1, '2025-12-31 06:37:36', '2025-12-31 12:03:50'),
(9, 1, 1, 'admin', 'download', 'Tải xuống mới', 'KDT Music Admin đã tải bài hát \"chờ anh về\"', '{\"song_id\":\"3\",\"song_type\":\"admin\",\"song_title\":\"ch\\u1edd anh v\\u1ec1\",\"artist_name\":\"bray\",\"downloader_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:37:50', '2025-12-31 12:03:50'),
(10, 1, 5, 'admin', 'download', 'Tải xuống mới', 'KDT Music Admin đã tải bài hát \"chờ anh về\"', '{\"song_id\":\"3\",\"song_type\":\"admin\",\"song_title\":\"ch\\u1edd anh v\\u1ec1\",\"artist_name\":\"bray\",\"downloader_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:37:50', '2025-12-31 12:03:50'),
(11, 1, 1, 'admin', 'comment', 'Bình luận mới', 'KDT Music Admin đã bình luận bài hát \"chờ anh về\"', '{\"song_id\":\"3\",\"song_title\":\"ch\\u1edd anh v\\u1ec1\",\"artist_name\":\"bray\",\"comment_text\":\"Bray hay\",\"commenter_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:37:59', '2025-12-31 12:03:50'),
(12, 1, 5, 'admin', 'comment', 'Bình luận mới', 'KDT Music Admin đã bình luận bài hát \"chờ anh về\"', '{\"song_id\":\"3\",\"song_title\":\"ch\\u1edd anh v\\u1ec1\",\"artist_name\":\"bray\",\"comment_text\":\"Bray hay\",\"commenter_name\":\"KDT Music Admin\"}', 1, '2025-12-31 06:37:59', '2025-12-31 12:03:50'),
(13, NULL, 1, 'all', 'new_song', 'Bài hát mới', 'Có bài hát mới: \"ĐOẠN KỊCH CÂM\" - CONGB,Negav', '{\"song_id\":\"4\",\"song_title\":\"\\u0110O\\u1ea0N K\\u1ecaCH C\\u00c2M\",\"artist_name\":\"CONGB,Negav\",\"thumbnail\":\"https:\\/\\/i1.sndcdn.com\\/artworks-ylsBh7cHHpW4ptVa-1fN6mA-t500x500.png\",\"category\":\"V-Pop Th\\u1ecbnh H\\u00e0nh\"}', 0, '2025-12-31 17:17:42', '2025-12-31 17:17:42'),
(14, NULL, 1, 'all', 'new_song', 'Bài hát mới', 'Có bài hát mới: \"https://photo-resize-zmp3.zadn.vn/w600_r1x1_jpeg/cover/e/d/d/a/edda9844722bd0484b317662754e7417.jpg\" - sơn tùng m-tp ', '{\"song_id\":\"5\",\"song_title\":\"https:\\/\\/photo-resize-zmp3.zadn.vn\\/w600_r1x1_jpeg\\/cover\\/e\\/d\\/d\\/a\\/edda9844722bd0484b317662754e7417.jpg\",\"artist_name\":\"s\\u01a1n t\\u00f9ng m-tp \",\"thumbnail\":\"https:\\/\\/photo-resize-zmp3.zadn.vn\\/w600_r1x1_jpeg\\/cover\\/e\\/d\\/d\\/a\\/edda9844722bd0484b317662754e7417.jpg\",\"category\":\"V-Pop Th\\u1ecbnh H\\u00e0nh\"}', 0, '2025-12-31 17:18:51', '2025-12-31 17:18:51'),
(15, NULL, 1, 'all', 'new_song', 'Bài hát mới', 'Có bài hát mới: \"âm thầm bên em\" - Son Tung MTP', '{\"song_id\":\"6\",\"song_title\":\"\\u00e2m th\\u1ea7m b\\u00ean em\",\"artist_name\":\"Son Tung MTP\",\"thumbnail\":\"https:\\/\\/encrypted-tbn0.gstatic.com\\/images?q=tbn:ANd9GcSvrrNfBZZbTx4Phs0PQ5oIxxZnAiybAr9ieQ&s\",\"category\":\"V-Pop Th\\u1ecbnh H\\u00e0nh\"}', 0, '2025-12-31 17:24:45', '2025-12-31 17:24:45'),
(16, NULL, 1, 'all', 'new_song', 'Bài hát mới', 'Có bài hát mới: \"Exit Sign\" - HIEUTHUHAI', '{\"song_id\":\"7\",\"song_title\":\"Exit Sign\",\"artist_name\":\"HIEUTHUHAI\",\"thumbnail\":\"https:\\/\\/i.ytimg.com\\/vi\\/sJt_i0hOugA\\/maxresdefault.jpg\",\"category\":\"V-Pop Th\\u1ecbnh H\\u00e0nh\"}', 0, '2025-12-31 17:26:27', '2025-12-31 17:26:27'),
(17, NULL, 1, 'all', 'new_song', 'Bài hát mới', 'Có bài hát mới: \"Som Muon Thi \" - HUSTLANG Robber, Nhâm Phương Nam, Mason Nguyễn, KHOI VU, Jaysonlei, Lamoon', '{\"song_id\":\"8\",\"song_title\":\"Som Muon Thi \",\"artist_name\":\"HUSTLANG Robber, Nh\\u00e2m Ph\\u01b0\\u01a1ng Nam, Mason Nguy\\u1ec5n, KHOI VU, Jaysonlei, Lamoon\",\"thumbnail\":\"https:\\/\\/encrypted-tbn0.gstatic.com\\/images?q=tbn:ANd9GcQfOhsoUfjdndk2UWCi0lOMaV6NiJ9vi3y7_g&s\",\"category\":\"Tuy\\u1ec7t Ph\\u1ea9m Bolero\"}', 0, '2025-12-31 17:27:36', '2025-12-31 17:27:36'),
(18, 1, 1, 'admin', 'download', 'Tải xuống mới', 'Admin đã tải bài hát \"ĐOẠN KỊCH CÂM\"', '{\"song_id\":\"4\",\"song_type\":\"admin\",\"song_title\":\"\\u0110O\\u1ea0N K\\u1ecaCH C\\u00c2M\",\"artist_name\":\"CONGB,Negav\",\"downloader_name\":\"Admin\"}', 0, '2025-12-31 17:27:55', '2025-12-31 17:27:55'),
(19, 1, 5, 'admin', 'download', 'Tải xuống mới', 'Admin đã tải bài hát \"ĐOẠN KỊCH CÂM\"', '{\"song_id\":\"4\",\"song_type\":\"admin\",\"song_title\":\"\\u0110O\\u1ea0N K\\u1ecaCH C\\u00c2M\",\"artist_name\":\"CONGB,Negav\",\"downloader_name\":\"Admin\"}', 0, '2025-12-31 17:27:55', '2025-12-31 17:27:55'),
(20, 1, 1, 'admin', 'comment', 'Bình luận mới', 'Admin đã bình luận bài hát \"ĐOẠN KỊCH CÂM\"', '{\"song_id\":\"4\",\"song_title\":\"\\u0110O\\u1ea0N K\\u1ecaCH C\\u00c2M\",\"artist_name\":\"CONGB,Negav\",\"comment_text\":\"Hay qua dii\",\"commenter_name\":\"Admin\"}', 0, '2025-12-31 17:28:03', '2025-12-31 17:28:03'),
(21, 1, 5, 'admin', 'comment', 'Bình luận mới', 'Admin đã bình luận bài hát \"ĐOẠN KỊCH CÂM\"', '{\"song_id\":\"4\",\"song_title\":\"\\u0110O\\u1ea0N K\\u1ecaCH C\\u00c2M\",\"artist_name\":\"CONGB,Negav\",\"comment_text\":\"Hay qua dii\",\"commenter_name\":\"Admin\"}', 0, '2025-12-31 17:28:03', '2025-12-31 17:28:03'),
(22, 1, 1, 'admin', 'comment', 'Bình luận mới', 'Admin đã bình luận bài hát \"ĐOẠN KỊCH CÂM\"', '{\"song_id\":\"4\",\"song_title\":\"\\u0110O\\u1ea0N K\\u1ecaCH C\\u00c2M\",\"artist_name\":\"CONGB,Negav\",\"comment_text\":\"Dang cap\",\"commenter_name\":\"Admin\"}', 0, '2025-12-31 17:28:07', '2025-12-31 17:28:07'),
(23, 1, 5, 'admin', 'comment', 'Bình luận mới', 'Admin đã bình luận bài hát \"ĐOẠN KỊCH CÂM\"', '{\"song_id\":\"4\",\"song_title\":\"\\u0110O\\u1ea0N K\\u1ecaCH C\\u00c2M\",\"artist_name\":\"CONGB,Negav\",\"comment_text\":\"Dang cap\",\"commenter_name\":\"Admin\"}', 0, '2025-12-31 17:28:07', '2025-12-31 17:28:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `song_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlists`
--

INSERT INTO `playlists` (`id`, `user_id`, `name`, `description`, `cover_image`, `is_public`, `song_count`, `created_at`, `updated_at`) VALUES
(1, 1, 'VPOP', NULL, NULL, 0, 0, '2025-12-31 06:30:37', '2025-12-31 06:30:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist_songs`
--

CREATE TABLE `playlist_songs` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `song_id` varchar(50) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist_songs`
--

INSERT INTO `playlist_songs` (`id`, `playlist_id`, `song_id`, `song_title`, `artist_name`, `thumbnail`, `duration`, `position`, `added_at`) VALUES
(1, 1, '1790702667', 'Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)', 'Quách Tuấn Du', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/04/ff/51/04ff5182-f664-2bb0-9fa6-e45e4373da27/3616557643859.jpg/512x512bb.jpg', 500246, 1, '2025-12-31 06:30:49'),
(2, 1, '3', 'chờ anh về ', 'bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', NULL, 2, '2025-12-31 06:37:53'),
(3, 1, '4', 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 'https://i1.sndcdn.com/artworks-ylsBh7cHHpW4ptVa-1fN6mA-t500x500.png', NULL, 3, '2025-12-31 17:28:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song_lyrics`
--

CREATE TABLE `song_lyrics` (
  `id` int(11) NOT NULL,
  `song_id` varchar(50) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `lyrics_content` longtext DEFAULT NULL,
  `lyrics_start_time` int(11) DEFAULT 0,
  `has_sync_lyrics` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `song_lyrics`
--

INSERT INTO `song_lyrics` (`id`, `song_id`, `song_title`, `artist_name`, `lyrics_content`, `lyrics_start_time`, `has_sync_lyrics`, `created_at`, `updated_at`) VALUES
(2, '3', 'Test Song', 'Test Artist', 'Em chờ anh về đã bao lâu nay\n\nTìm anh về ở trong cơn say\n\nChờ người lúc đi đã biết sẽ không thể trở về\n\nMặc dù là thế nhưng trong tim vẫn không thể thay thế\n\nEm chờ anh về đã quá nhiều ngày\n\nTìm anh về ở những cơn say\n\nMột người lúc đi đã biết sẽ không thể trở về\n\nMặc dù là thế nhưng trong tim vẫn không thể thay thế\n\nBaby i know, anh đang kiếm đường về\n\nAnh sẽ không quên lời anh đã từng thề\n\nỞ nơi em anh mới kiếm được bình yên\n\nÁnh đèn hào quang đôi lúc khiến cho mình điên\n\nThành phố này không ngủ, anh cũng vậy\n\nNgã bao nhiêu lần anh cũng bật dậy\n\nAnh vẫn là anh chưa một phút nào ngừng cháy\n\nChấp cánh ước mơ, nhưng sự thật lại biết bay\n\nQuá khôn để có thể là con mồi\n\nKhông đủ nhẫn tâm để mà đi theo bầy sói\n\nCứ mỗi bước chân, là mỗi con đường mới\n\nNhưng mọi đường đi, em là đích để về tới\n\nHọ nói anh ngoài kia, là người rap không thuộc lời\n\nVì khi diễn cho họ xem, đầu anh chỉ nghĩ về em\n\nTới người đã thương, đã chờ, đã đợi\n\nNgày anh về, nó sẽ sớm thôi em ơi\n\nEm chờ anh về đã bao lâu nay\n\nTìm anh về ở trong cơn say\n\nChờ người lúc đi đã biết sẽ không thể trở về\n\nMặc dù là thế nhưng trong tim vẫn không thể thay thế\n\nEm chờ anh về đã quá nhiều ngày\n\nTìm anh về ở những cơn say\n\nMột người lúc đi đã biết sẽ không thể trở về\n\nMặc dù là thế nhưng trong tim vẫn không thể thay thế\n\nAnh phải lớn thật nhanh khi con tim mang hiềm khích\n\nLá gan to nên anh luôn liều lĩnh\n\nLớn lên do làm những gì mình thích\n\nChẳng hiểu sao anh vẫn luôn về đích\n\nAnh rót champagne chỉ để xóa phiền lo\n\nTrái tim, dù có khối người cho\n\nMỗi khi cô đơn, anh lại thấy giằng co\n\nVì dù thắng hay thua, em vẫn chẳng ở đó\n\nAnh chỉ lo sao cho cái túi mình đầy\n\nYoung rap star with the 808s\n\nAnh đến anh đi, không thể cố định ngày\n\nDo anh không quen dùng lời nói trình bày\n\nI\'m a rolling stone, a shooting stars\n\nChẳng hiểu sao anh là Underdogs\n\nLời hứa khi xưa anh vẫn luôn cất giữ\n\nCause baby it\'s always you\n\nMình em nơi đây, chờ anh mau quay trở về\n\nChờ anh không hay biết là anh có nhớ hay quên\n\nMỗi khi về đêm đoạn nhạc đó vang lên\n\nIt sound like love, but feels like pain\n\nEm luôn luôn tin mọi thứ anh xây\n\nLuôn luôn biết anh sẽ về đây\n\nTrao anh con tim, chẳng chút lung lay\n\nCứ như anh vẫn ở đây\n\nYou\'re always on my mind\n\nCould you hit me up, cause I\'m trying to fight time\n\nEvery call\'s a flashback vibe\n\nAnd every silence feels alive\n\nYou\'r always on my mind\n\nStill I press play, and try rewindin\'\n\nEm chờ anh về đã quá nhiều ngày\n\nTìm anh về ở những cơn say\n\nMột người lúc đi đã biết sẽ không thể trở về\n\nMặc dù là thế nhưng trong tim vẫn không thể thay thế', 15000, 0, '2025-12-31 07:20:22', '2025-12-31 01:20:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song_plays`
--

CREATE TABLE `song_plays` (
  `id` int(11) NOT NULL,
  `song_type` enum('admin','itunes') NOT NULL,
  `song_id` varchar(255) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `play_count` int(11) NOT NULL DEFAULT 0,
  `last_played_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `song_plays`
--

INSERT INTO `song_plays` (`id`, `song_type`, `song_id`, `song_title`, `artist_name`, `play_count`, `last_played_at`, `created_at`, `updated_at`) VALUES
(5, 'itunes', '1790702667', 'Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)', 'Quách Tuấn Du', 1, '2025-12-31 06:48:00', '2025-12-31 06:48:00', '2025-12-31 06:48:00'),
(6, 'itunes', '1636730104', 'Bên Trên Tầng Lầu (Vinahouse Remix)', 'Tăng Duy Tân', 1, '2025-12-31 06:48:22', '2025-12-31 06:48:22', '2025-12-31 06:48:22'),
(7, 'admin', '3', 'chờ anh về ', 'bray', 3, '2025-12-31 10:38:31', '2025-12-31 06:49:00', '2025-12-31 10:38:31'),
(8, 'admin', '4', 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 1, '2025-12-31 17:28:13', '2025-12-31 17:28:13', '2025-12-31 17:28:13'),
(9, 'itunes', '1708740818', 'Nơi Này Có Anh', 'Sơn Tùng M-TP', 1, '2025-12-31 17:29:01', '2025-12-31 17:29:01', '2025-12-31 17:29:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sync_lyrics`
--

CREATE TABLE `sync_lyrics` (
  `id` int(11) NOT NULL,
  `song_id` varchar(50) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `text` text NOT NULL,
  `line_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `avatar` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_verified` tinyint(1) DEFAULT 0,
  `verification_token` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expires` datetime DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `token_expires_at` datetime DEFAULT NULL,
  `refresh_token_expires_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `avatar`, `phone`, `date_of_birth`, `gender`, `is_active`, `is_verified`, `verification_token`, `reset_token`, `reset_token_expires`, `auth_token`, `refresh_token`, `token_expires_at`, `refresh_token_expires_at`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@kdtmusic.com', '$2y$10$N8ZeYekDUHZ6xkmFR9ApTejFdY.13dZQpFR5HQTXaJW7wA6FWfvVC', 'admin', NULL, NULL, NULL, 'male', 1, 1, NULL, NULL, NULL, '613427bdd44e4c61749e231d67a2700a36ecc9666a0c4a04b3bbdb2c24b30fe4', '342903862af354f9c34caaccff0eeb4081274b143002c669b21710ce19df0ad6', '2026-01-01 11:29:34', '2026-01-07 11:29:34', '2025-12-31 11:29:34', '2025-12-30 17:26:37', '2025-12-31 10:29:34'),
(2, 'Test User', 'user@kdtmusic.com', '$2y$12$rZ.9V1QN1h0JN0g0R1h0JN0g0R1h0JN0g0R1h0JN0g0R1h0JN0g0R1', 'user', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-30 17:26:37', '2025-12-30 17:26:37'),
(4, 'Test User', 'test@test.com', '$2y$10$tx92lGoQeWgVJtGggglz6.VPGWQ/6YAbqVYpMFJGbt6dcTE0yFcgW', 'user', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'a6be954bf7b7091d6e47f3bae8991613e6297b460bdbd0b1b790a688516554ed', '79ea8296d587b0e0da14583c5902639aca2002f5557f33d7a63d8c589eb261bc', '2025-12-31 18:51:13', NULL, '2025-12-31 00:51:13', '2025-12-30 17:51:06', '2025-12-30 17:51:13'),
(5, 'Admin User', 'admin2@test.com', '$2y$10$68Re20QNXQ.AcxNs6/R8/O/twjeGZ7Y9EQzvUNmM38iWqA/C6wmU.', 'admin', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '954d0d27a7d2109168c7a315e836b11b6fc5a8291c4ab6175bfc7399429f8ff1', '7ec10b4ca1a30f6171a85441801ca6c66ce6a7f18cec4fe95dfe747778a220ed', '2025-12-31 18:52:49', NULL, '2025-12-31 00:52:49', '2025-12-30 17:51:47', '2025-12-30 17:52:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` varchar(50) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favorites`
--

INSERT INTO `user_favorites` (`id`, `user_id`, `song_id`, `song_title`, `artist_name`, `thumbnail`, `duration`, `created_at`) VALUES
(1, 1, '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/1f/71/a6/1f71a600-7d8f-ae46-7799-641f834e7c1a/197187664108.jpg/600x600bb.jpg', 393, '2025-12-30 18:30:04'),
(2, 1, '1699043485', 'Liên khúc V-pop Hits (Có Ai Thương Em Như Anh - Sao Người Ta Nỡ Làm Mình Đau - Không Sao Mà, Em Đây Rồi)', 'Hứa Kim Tuyền, LyLy & XHTĐRLX', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/1f/71/a6/1f71a600-7d8f-ae46-7799-641f834e7c1a/197187664108.jpg/512x512bb.jpg', 393, '2025-12-31 06:28:05'),
(3, 1, '1790702667', 'Liên Khúc Mẹ Tôi/Cảm Ơn Mẹ (feat. Quang Lê)', 'Quách Tuấn Du', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/04/ff/51/04ff5182-f664-2bb0-9fa6-e45e4373da27/3616557643859.jpg/512x512bb.jpg', 500, '2025-12-31 06:29:08'),
(5, 1, '3', 'Cho Anh Ve', 'Bray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppWqCsuSA0safJZvGLJv4Nndt4AS24ApAKg&s', NULL, '2025-12-31 10:33:21'),
(6, 1, '4', 'ĐOẠN KỊCH CÂM', 'CONGB,Negav', 'https://i1.sndcdn.com/artworks-ylsBh7cHHpW4ptVa-1fN6mA-t500x500.png', NULL, '2025-12-31 17:27:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_play_sessions`
--

CREATE TABLE `user_play_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_type` enum('admin','itunes') NOT NULL,
  `song_id` varchar(255) NOT NULL,
  `session_start` timestamp NOT NULL DEFAULT current_timestamp(),
  `session_end` timestamp NULL DEFAULT NULL,
  `play_duration` int(11) DEFAULT 0,
  `counted_as_play` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_play_sessions`
--

INSERT INTO `user_play_sessions` (`id`, `user_id`, `song_type`, `song_id`, `session_start`, `session_end`, `play_duration`, `counted_as_play`, `created_at`) VALUES
(1, 1, 'itunes', '1790702667', '2025-12-31 06:47:48', '2025-12-31 06:48:00', 11, 1, '2025-12-31 06:47:48'),
(2, 1, 'itunes', '1636730104', '2025-12-31 06:48:10', '2025-12-31 06:48:22', 12, 1, '2025-12-31 06:48:10'),
(3, 1, 'admin', '3', '2025-12-31 06:48:43', '2025-12-31 06:49:00', 17, 1, '2025-12-31 06:48:43'),
(4, 1, 'admin', '3', '2025-12-31 07:20:27', '2025-12-31 07:20:37', 9, 0, '2025-12-31 07:20:27'),
(5, 1, 'admin', '3', '2025-12-31 07:20:53', '2025-12-31 07:21:03', 9, 0, '2025-12-31 07:20:53'),
(6, 1, 'admin', '3', '2025-12-31 10:29:58', '2025-12-31 10:33:31', 212, 1, '2025-12-31 10:29:58'),
(7, 1, 'admin', '3', '2025-12-31 10:37:37', '2025-12-31 10:38:31', 54, 1, '2025-12-31 10:37:37'),
(8, 1, 'admin', '5', '2025-12-31 17:19:05', '2025-12-31 17:19:18', 12, 1, '2025-12-31 17:19:05'),
(9, 1, 'admin', '4', '2025-12-31 17:27:51', '2025-12-31 17:28:13', 22, 1, '2025-12-31 17:27:51'),
(10, 1, 'itunes', '472761656', '2025-12-31 17:28:19', NULL, 0, 0, '2025-12-31 17:28:19'),
(11, 1, 'itunes', '472761656', '2025-12-31 17:28:19', NULL, 0, 0, '2025-12-31 17:28:19'),
(12, 1, 'itunes', '472761656', '2025-12-31 17:28:19', NULL, 0, 0, '2025-12-31 17:28:19'),
(13, 1, 'itunes', '472761656', '2025-12-31 17:28:19', NULL, 0, 0, '2025-12-31 17:28:19'),
(14, 1, 'itunes', '472761656', '2025-12-31 17:28:19', NULL, 0, 0, '2025-12-31 17:28:19'),
(15, 1, 'itunes', '472761656', '2025-12-31 17:28:19', NULL, 0, 0, '2025-12-31 17:28:19'),
(16, 1, 'itunes', '472761656', '2025-12-31 17:28:19', '2025-12-31 17:28:25', 5, 0, '2025-12-31 17:28:19'),
(17, 1, 'itunes', '472761656', '2025-12-31 17:28:19', '2025-12-31 17:28:25', 5, 0, '2025-12-31 17:28:19'),
(18, 1, 'itunes', '472761656', '2025-12-31 17:28:19', '2025-12-31 17:28:24', 4, 0, '2025-12-31 17:28:19'),
(19, 1, 'itunes', '1441771726', '2025-12-31 17:28:19', '2025-12-31 17:28:23', 3, 0, '2025-12-31 17:28:19'),
(20, 1, 'itunes', '1441771726', '2025-12-31 17:28:19', '2025-12-31 17:28:22', 2, 0, '2025-12-31 17:28:19'),
(21, 1, 'itunes', '1749963740', '2025-12-31 17:28:35', '2025-12-31 17:28:42', 7, 0, '2025-12-31 17:28:35'),
(22, 1, 'itunes', '1708740818', '2025-12-31 17:28:44', '2025-12-31 17:29:01', 16, 1, '2025-12-31 17:28:44'),
(23, 1, 'itunes', '1708863561', '2025-12-31 17:29:05', '2025-12-31 17:29:08', 2, 0, '2025-12-31 17:29:05'),
(24, 1, 'itunes', '1744991040', '2025-12-31 17:29:10', '2025-12-31 17:29:14', 3, 0, '2025-12-31 17:29:10'),
(25, 1, 'itunes', '1708741523', '2025-12-31 17:29:16', '2025-12-31 17:29:18', 2, 0, '2025-12-31 17:29:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL,
  `device_info` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `user_id`, `session_token`, `device_info`, `ip_address`, `expires_at`, `created_at`) VALUES
(8, 1, '613427bdd44e4c61749e231d67a2700a36ecc9666a0c4a04b3bbdb2c24b30fe4', 'Dart/3.10 (dart:io)', '127.0.0.1', '2025-12-31 13:29:34', '2025-12-31 10:29:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_songs`
--
ALTER TABLE `admin_songs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itunes_id` (`itunes_id`),
  ADD KEY `idx_admin_songs_category` (`category`),
  ADD KEY `idx_admin_songs_itunes_id` (`itunes_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_song_type_id` (`song_type`,`song_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Chỉ mục cho bảng `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_song` (`user_id`,`song_type`,`song_id`),
  ADD KEY `idx_user_downloads` (`user_id`),
  ADD KEY `idx_song_lookup` (`song_type`,`song_id`);

--
-- Chỉ mục cho bảng `listening_history`
--
ALTER TABLE `listening_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id_date` (`user_id`,`listen_date`),
  ADD KEY `idx_listened_at` (`listened_at`),
  ADD KEY `idx_song_type` (`song_type`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `idx_receiver_type` (`receiver_id`,`receiver_type`),
  ADD KEY `idx_notification_type` (`notification_type`),
  ADD KEY `idx_is_read` (`is_read`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Chỉ mục cho bảng `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_playlist_song` (`playlist_id`,`song_id`),
  ADD KEY `idx_playlist_id` (`playlist_id`),
  ADD KEY `idx_song_id` (`song_id`),
  ADD KEY `idx_position` (`position`);

--
-- Chỉ mục cho bảng `song_lyrics`
--
ALTER TABLE `song_lyrics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_song_lyrics` (`song_id`),
  ADD KEY `idx_song_id` (`song_id`),
  ADD KEY `idx_has_sync_lyrics` (`has_sync_lyrics`);

--
-- Chỉ mục cho bảng `song_plays`
--
ALTER TABLE `song_plays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_song` (`song_type`,`song_id`),
  ADD KEY `idx_play_count` (`play_count`),
  ADD KEY `idx_song_type_id` (`song_type`,`song_id`),
  ADD KEY `idx_last_played_at` (`last_played_at`);

--
-- Chỉ mục cho bảng `sync_lyrics`
--
ALTER TABLE `sync_lyrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_song_id` (`song_id`),
  ADD KEY `idx_start_time` (`start_time`),
  ADD KEY `idx_line_order` (`line_order`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_email` (`email`),
  ADD KEY `idx_users_role` (`role`),
  ADD KEY `idx_users_is_active` (`is_active`);

--
-- Chỉ mục cho bảng `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_song` (`user_id`,`song_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_song_id` (`song_id`);

--
-- Chỉ mục cho bảng `user_play_sessions`
--
ALTER TABLE `user_play_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_song_type_id` (`song_type`,`song_id`),
  ADD KEY `idx_counted_as_play` (`counted_as_play`),
  ADD KEY `idx_session_start` (`session_start`);

--
-- Chỉ mục cho bảng `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_token` (`session_token`),
  ADD KEY `idx_session_token` (`session_token`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_expires_at` (`expires_at`),
  ADD KEY `idx_sessions_expires` (`expires_at`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_songs`
--
ALTER TABLE `admin_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `listening_history`
--
ALTER TABLE `listening_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `playlist_songs`
--
ALTER TABLE `playlist_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `song_lyrics`
--
ALTER TABLE `song_lyrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `song_plays`
--
ALTER TABLE `song_plays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sync_lyrics`
--
ALTER TABLE `sync_lyrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user_play_sessions`
--
ALTER TABLE `user_play_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `downloads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `listening_history`
--
ALTER TABLE `listening_history`
  ADD CONSTRAINT `listening_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD CONSTRAINT `playlist_songs_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sync_lyrics`
--
ALTER TABLE `sync_lyrics`
  ADD CONSTRAINT `sync_lyrics_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song_lyrics` (`song_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD CONSTRAINT `user_favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_play_sessions`
--
ALTER TABLE `user_play_sessions`
  ADD CONSTRAINT `user_play_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
