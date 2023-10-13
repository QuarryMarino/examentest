-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2023 a las 23:21:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminusuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_13_185245_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 'Darwin', 'Nicolas', 'alegros@bailey.info', '2007-11-16 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(2, 'Meta', 'Orn', 'htrantow@hotmail.com', '2001-12-22 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(3, 'Ellen', 'Wyman', 'koss.phoebe@white.info', '2018-06-26 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(4, 'Britney', 'Murray', 'turcotte.jaida@okon.org', '1973-10-16 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(5, 'Elwyn', 'Bogisich', 'maximillian.dare@gmail.com', '1975-11-06 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(6, 'Ressie', 'Friesen', 'barrows.reyes@yahoo.com', '1970-12-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(7, 'Brenden', 'Langworth', 'quigley.arvid@yahoo.com', '1986-12-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(8, 'Mollie', 'Goyette', 'mikel.kuvalis@nitzsche.com', '1973-07-07 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(9, 'Gabriella', 'Schmitt', 'mschultz@lowe.com', '2016-01-11 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(10, 'Rebeca', 'Watsica', 'odooley@oreilly.biz', '2005-11-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(11, 'Freida', 'Corwin', 'nlueilwitz@feil.com', '1979-08-08 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(12, 'Zoey', 'Nienow', 'cbeahan@connelly.biz', '1971-10-01 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(13, 'Florine', 'Schuster', 'witting.maxine@gutmann.net', '2018-08-22 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(14, 'Freda', 'Grady', 'runte.alysha@hotmail.com', '1975-02-11 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(15, 'Kiarra', 'Schoen', 'deon21@lind.com', '2002-02-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(16, 'Granville', 'O\'Keefe', 'romaguera.sammy@cummerata.com', '1994-05-03 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(17, 'Sterling', 'Strosin', 'estell45@gmail.com', '1983-01-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(18, 'Mozell', 'Kulas', 'effertz.mya@fahey.info', '1996-12-17 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(19, 'Stephany', 'Torphy', 'sgreen@gmail.com', '1984-04-21 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(20, 'Geovany', 'Gorczany', 'hgrant@gmail.com', '2018-07-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(21, 'Felipe', 'Stark', 'dokeefe@yahoo.com', '2015-03-01 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(22, 'Mckayla', 'Weber', 'rempel.guy@windler.com', '2023-10-09 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(23, 'Sabrina', 'Corkery', 'arely.robel@corwin.com', '2015-08-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(24, 'Salvador', 'Jast', 'grayce61@hotmail.com', '1988-05-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(25, 'Cielo', 'Bergnaum', 'katlyn96@yahoo.com', '2000-01-17 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(26, 'Kennedi', 'Dickens', 'lcummerata@feeney.com', '2010-01-21 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(27, 'Lourdes', 'Stamm', 'casper.antwon@harvey.biz', '2009-10-06 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(28, 'Rafaela', 'Gusikowski', 'mbayer@gmail.com', '1997-08-29 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(29, 'Fae', 'Mills', 'erling.daugherty@kassulke.net', '2005-03-01 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(30, 'Kenna', 'Wehner', 'ardith96@yahoo.com', '1995-02-02 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(31, 'Freeda', 'Gottlieb', 'ylemke@gmail.com', '1976-04-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(32, 'Marjory', 'Ruecker', 'nwuckert@beahan.com', '2009-06-18 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(33, 'Reggie', 'Barton', 'doyle.leonardo@gmail.com', '1976-11-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(34, 'Jovany', 'Feest', 'oleta57@yahoo.com', '1990-09-09 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(35, 'Allison', 'Hegmann', 'christy.leuschke@huels.com', '2001-09-02 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(36, 'Derick', 'Buckridge', 'hosea87@harvey.org', '1988-11-10 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(37, 'Loyce', 'Kertzmann', 'jacobs.dane@yahoo.com', '1990-03-22 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(38, 'Elliot', 'Schroeder', 'erika18@dickinson.org', '1975-01-30 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(39, 'Scottie', 'Prosacco', 'therzog@funk.com', '1984-02-28 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(40, 'Georgianna', 'Hahn', 'mallie.lindgren@yahoo.com', '1971-03-30 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(41, 'Fletcher', 'Swaniawski', 'lavonne.mueller@hotmail.com', '2018-08-18 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(42, 'Deshawn', 'Strosin', 'hermina.schimmel@anderson.com', '1998-01-03 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(43, 'Tania', 'Barrows', 'juliana59@gmail.com', '2021-08-06 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(44, 'Christine', 'Willms', 'ahoppe@yahoo.com', '2014-06-05 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(45, 'Jana', 'Pagac', 'imetz@aufderhar.net', '2022-07-07 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(46, 'Zechariah', 'Kilback', 'spencer.garrett@gulgowski.com', '1974-04-21 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(47, 'Constantin', 'Hayes', 'joesph.lind@hotmail.com', '2009-09-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(48, 'Creola', 'Larkin', 'howe.kyla@yahoo.com', '2001-03-18 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(49, 'Tamia', 'Sawayn', 'enrique.block@yahoo.com', '1989-07-04 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(50, 'Adella', 'Lynch', 'ola.prosacco@yahoo.com', '1987-10-06 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(51, 'Sigmund', 'Rosenbaum', 'cordell.wisoky@halvorson.info', '1980-08-24 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(52, 'Jameson', 'Considine', 'ramon94@stamm.com', '1996-04-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(53, 'Penelope', 'Toy', 'angelita82@lynch.com', '2017-11-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(54, 'Stuart', 'Herzog', 'guillermo77@funk.com', '1988-12-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(55, 'Annamarie', 'Lehner', 'aric.cummings@hammes.org', '1992-04-10 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(56, 'Torrey', 'Bahringer', 'oreilly.margarett@hotmail.com', '1991-02-06 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(57, 'Toni', 'Rohan', 'jblock@yahoo.com', '1988-05-31 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(58, 'Jaden', 'Koss', 'stanton.kenton@yahoo.com', '2013-01-02 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(59, 'Marcel', 'Johnson', 'badams@vonrueden.com', '1998-07-23 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(60, 'Larue', 'Ernser', 'kade.jacobi@hotmail.com', '1986-06-24 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(61, 'Rosendo', 'Kohler', 'brown.stacy@bechtelar.biz', '1973-05-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(62, 'Wilford', 'Klein', 'caroline.lehner@grimes.com', '2016-02-01 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(63, 'Ramona', 'Leuschke', 'lakin.andre@hickle.com', '2009-12-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(64, 'Felicia', 'Brekke', 'vwest@bailey.net', '1998-07-07 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(65, 'Madalyn', 'Shields', 'haylee49@runolfsson.info', '2022-06-15 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(66, 'Odell', 'Runte', 'conn.anissa@hotmail.com', '1984-11-21 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(67, 'Sterling', 'Padberg', 'hazle.pfannerstill@oberbrunner.com', '1977-05-03 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(68, 'Andrew', 'Ratke', 'balistreri.amie@yahoo.com', '1991-10-14 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(69, 'Thalia', 'Barrows', 'eula.okuneva@bergstrom.com', '1973-09-28 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(70, 'Herminia', 'Kuvalis', 'herta17@wisoky.net', '2005-07-30 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(71, 'Justyn', 'Wolf', 'kulas.breana@yahoo.com', '2012-07-18 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(72, 'Carlie', 'Wilkinson', 'casey.cremin@hotmail.com', '2007-04-13 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(73, 'Karson', 'Schaden', 'quitzon.leann@gislason.com', '1977-06-04 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(74, 'Americo', 'Renner', 'jcollins@yahoo.com', '1990-12-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(75, 'Orrin', 'Russel', 'zulauf.madilyn@yahoo.com', '2015-09-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(76, 'Roman', 'Padberg', 'moses.jones@gmail.com', '1971-09-07 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(77, 'Deanna', 'Volkman', 'deckow.dean@hotmail.com', '1982-07-18 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(78, 'Isabel', 'Douglas', 'pcormier@gmail.com', '2008-10-19 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(79, 'Ally', 'Hintz', 'zackery53@spinka.net', '1996-04-28 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(80, 'Fredy', 'Sipes', 'qrunolfsson@hotmail.com', '2015-12-21 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(81, 'Fanny', 'Zemlak', 'hartmann.winston@trantow.biz', '1991-03-09 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(82, 'Everardo', 'Auer', 'langworth.lora@yahoo.com', '1970-08-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(83, 'Mariah', 'Mante', 'heathcote.sam@yahoo.com', '1996-11-13 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(84, 'Ines', 'Will', 'hhackett@marvin.com', '1997-01-14 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(85, 'Orlando', 'Hudson', 'kaci.eichmann@yahoo.com', '2005-11-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(86, 'Abdiel', 'Barrows', 'william.jones@pagac.net', '2000-01-11 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(87, 'Ila', 'Hamill', 'pbrown@gmail.com', '1972-12-21 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(88, 'Dameon', 'Runolfsson', 'valerie.stokes@oconnell.com', '1982-10-18 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(89, 'Dixie', 'Turcotte', 'runte.gerson@gmail.com', '1989-01-26 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(90, 'Marie', 'Runte', 'pouros.darien@yahoo.com', '2021-08-29 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(91, 'Jimmie', 'Okuneva', 'nschamberger@hyatt.com', '2008-06-11 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(92, 'Braden', 'Runolfsdottir', 'ebba80@gmail.com', '2006-04-27 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(93, 'Rosario', 'Lockman', 'hhansen@waters.net', '1978-09-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(94, 'Edwina', 'O\'Kon', 'spencer.kailey@yahoo.com', '2012-04-17 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(95, 'Corrine', 'Kovacek', 'smitham.karlie@yahoo.com', '2019-11-12 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(96, 'Bruce', 'Krajcik', 'virgie13@pouros.com', '2020-01-09 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(97, 'Ricky', 'Towne', 'aorn@hotmail.com', '2002-06-20 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(98, 'Ocie', 'Keebler', 'lemmerich@kemmer.com', '1999-05-03 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(99, 'Ova', 'Klein', 'vschowalter@yahoo.com', '1973-02-07 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46'),
(100, 'Emelie', 'Fay', 'dicki.brandt@yahoo.com', '2009-07-29 03:00:00', '2023-10-13 22:48:46', '2023-10-13 22:48:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
