-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2022 at 05:21 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_todo_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_04_195536_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `body`, `completed`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Eos id inventore et.', 'Sed nemo et voluptatibus et quidem sit omnis quidem. Ipsum ea temporibus aut rerum suscipit aut. Nobis et ut illum amet nostrum. Quam quia sit saepe deserunt.', 1, 7, '2022-02-05 02:39:43', '2022-02-05 02:39:43'),
(2, 'Itaque et error blanditiis expedita cupiditate.', 'Voluptas delectus numquam qui quo quod est a. Molestiae eaque eveniet laudantium est maiores impedit ex ullam. Eius ducimus sunt minima enim praesentium itaque aut quasi. Enim aut sequi et ipsam aperiam quas impedit.', 1, 5, '2022-02-05 02:39:43', '2022-02-05 02:39:43'),
(3, 'Voluptatem molestiae aliquid earum velit impedit.', 'Ratione sapiente consequuntur quibusdam placeat. Consectetur fuga ex optio perferendis. Sed sint et velit beatae iste omnis asperiores.', 0, 6, '2022-02-05 02:39:43', '2022-02-05 02:39:43'),
(4, 'Iste rerum enim quis.', 'Dignissimos enim voluptatem iste et ipsa odio. Et modi quo adipisci repellendus qui dolorum. Reiciendis quibusdam ea quia saepe. Fuga dolore repudiandae enim nostrum dolorum.', 1, 2, '2022-02-05 02:39:43', '2022-02-05 02:39:43'),
(5, 'Molestias doloremque reprehenderit velit quae quidem ea.', 'Odit et voluptatem eaque sunt repudiandae maxime rerum. Aut aut minima nihil aut molestiae. Libero quia quaerat officia non. Modi ut dolor natus blanditiis officiis qui nemo.', 0, 8, '2022-02-05 02:39:43', '2022-02-05 02:39:43'),
(6, 'Et enim est repellendus eaque aliquid.', 'Voluptatem dolor possimus asperiores impedit fuga dolor. Eum est voluptatem aspernatur ipsa voluptas accusantium ut voluptatem. Ut nulla sit voluptatem. Est alias non eum.', 1, 6, '2022-02-05 02:39:43', '2022-02-05 02:39:43'),
(7, 'Cupiditate ipsum nam architecto aspernatur dolore.', 'Sed temporibus et non et eum. Commodi accusamus in et aliquam et blanditiis. Iusto rerum non consequatur id laboriosam. Vel vel asperiores dignissimos est ea.', 1, 5, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(8, 'Dolore et temporibus ut.', 'Velit aut dicta unde. Sunt est sequi consequatur corrupti ut. Similique architecto saepe nesciunt pariatur voluptates ea. Cum possimus commodi tenetur et sapiente porro quasi.', 0, 8, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(9, 'Sapiente assumenda ab quasi odit.', 'Sapiente dolores quam impedit perspiciatis unde excepturi. Dolor inventore repudiandae voluptate odio laborum. Labore perferendis unde similique quis aut voluptates amet et. Est sit iste qui tenetur voluptates. Delectus expedita quae qui fugit excepturi.', 0, 1, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(10, 'Atque delectus enim sit esse quam est.', 'Tempore soluta sequi et nihil deleniti quisquam repudiandae. Itaque in necessitatibus voluptas sunt voluptatem voluptas. Inventore nulla aut aut autem accusantium suscipit. Est molestiae aliquid sit recusandae voluptas libero.', 1, 8, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(11, 'Fugiat rerum minima voluptatem excepturi dolorum eius.', 'Vel ut eaque consectetur et quod commodi nam. Facilis corrupti quis eaque vitae.', 0, 9, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(12, 'Ratione similique est voluptatibus exercitationem voluptas vero aspernatur.', 'Est facilis cum autem possimus non nisi. Illum eveniet enim et rem. Numquam soluta sit reprehenderit quaerat rerum consequatur.', 1, 8, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(13, 'Sed eius neque reprehenderit ratione consequatur nisi aut.', 'Magnam dolores quisquam nobis ab non est dolores. Dolores ratione quae est ad. Earum minus fugit omnis id aliquam temporibus. Error numquam facere ullam neque sapiente ex non.', 0, 8, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(14, 'Aliquam est sed quas nam.', 'Doloremque consequatur aut aliquam. Exercitationem qui rerum qui possimus eos. Minus aut aliquam sint velit qui consequatur in. Sit maxime aut vero.', 0, 6, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(15, 'Rerum dolor rerum et vero et.', 'Rerum commodi et enim laborum repellat aut. Sed sapiente saepe eum repellat omnis. Quaerat sed ab labore est cumque. Debitis quidem fugiat dolorum ea debitis ipsum.', 0, 1, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(16, 'Ut excepturi sunt velit omnis quae.', 'Eveniet sunt est iste quia molestias sint et. Et consequatur consequatur amet recusandae et. Omnis amet quia asperiores. Libero eum et voluptates id voluptas laudantium quo ratione.', 0, 4, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(17, 'Non et non ipsam.', 'Quos ut ducimus sed qui. Cupiditate iusto qui voluptatibus autem est.', 1, 1, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(18, 'Praesentium porro asperiores non ex nesciunt corrupti consequatur.', 'Excepturi eligendi voluptatem quisquam dolorum et. Beatae praesentium impedit possimus exercitationem quasi et laborum. Est velit itaque magnam excepturi ut nihil quis.', 0, 9, '2022-02-05 02:39:44', '2022-02-05 02:39:44'),
(19, 'Aut aspernatur eum animi nemo.', 'A pariatur quam et non dolores accusantium iure. Nisi perspiciatis aliquam sit praesentium deleniti repellat aspernatur. Dolores inventore culpa aut sit ut eius sed. Maiores rem quis illum adipisci sint.', 1, 10, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(20, 'Dolores facilis voluptas omnis a sapiente.', 'Voluptatem voluptas neque praesentium necessitatibus maiores hic. In et magni ratione explicabo saepe. Voluptate eum temporibus repellendus facere blanditiis.', 0, 5, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(21, 'Voluptatem sint magnam neque soluta at non.', 'Distinctio quia non possimus et. Repellendus in consequatur temporibus itaque aspernatur dolorum. Ut optio voluptatum nemo. Quos vel aspernatur repellat. Aut cumque quasi itaque reprehenderit soluta eius sit.', 0, 4, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(22, 'Explicabo et deserunt nemo et aliquid quos pariatur laborum.', 'Repellat fugit nobis iure illo qui enim. Eaque nostrum voluptatum et. Non earum dolor totam aut cupiditate. Eum qui ipsam quas ut ab.', 0, 8, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(23, 'Inventore facilis quibusdam molestiae voluptas.', 'Praesentium vel enim harum dolores tempora qui praesentium. Dolorum tenetur esse sequi dignissimos consequatur minima. Illo id sint dolores sit ut inventore.', 1, 4, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(24, 'Quia esse blanditiis qui necessitatibus.', 'Magni quas dolorem minus debitis. Placeat ipsa incidunt in doloribus molestias. Soluta facere sit est iure quo ab. Tenetur porro est nisi aut ut alias repudiandae ad. Provident dolorum voluptatem ipsa vel distinctio.', 1, 1, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(25, 'Explicabo labore quisquam accusamus pariatur iste omnis.', 'Iste aspernatur porro ut illo. Est est voluptatem voluptatem aliquid numquam quaerat adipisci consequatur. Ut dolore est nulla quia excepturi.', 1, 3, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(26, 'Nam a beatae odit ut assumenda repudiandae deleniti dignissimos.', 'Natus dignissimos sunt libero. Tenetur quis dicta error ea. Voluptatibus nostrum dolorem quos est eius voluptas.', 1, 5, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(27, 'Architecto est corporis minus excepturi laboriosam et quasi.', 'Molestias dignissimos sapiente a magnam est quia. Molestiae ex beatae placeat tenetur temporibus ad et culpa. Dolore facere fugiat omnis maiores sunt deleniti qui. Quis modi aliquid ut.', 0, 7, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(28, 'Ratione ut sunt expedita quo sit.', 'Sint qui laboriosam quas voluptas. Quos ut aliquid officiis ratione. Ea porro cupiditate culpa labore et autem ratione. Repellendus animi voluptatem explicabo dignissimos.', 1, 1, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(29, 'Adipisci assumenda natus vero pariatur.', 'Et sequi quis necessitatibus et. Tenetur reprehenderit ea quo. Debitis quasi velit hic.', 0, 6, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(30, 'Non quam debitis voluptatem qui est quod dolorem.', 'Qui quidem nisi provident et et laborum odio. Voluptatem illum illo quae. Modi eligendi dolores sapiente mollitia quam repellat dolor odit. Voluptas unde optio in minima sit.', 0, 10, '2022-02-05 02:39:45', '2022-02-05 02:39:45'),
(31, 'Quae quo quasi aut eum.', 'Inventore rem optio ut distinctio velit quidem a. Et et ut quos. Dolore et sed voluptatem minima odit.', 1, 2, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(32, 'Rem iste natus voluptatum odit.', 'Sed sint odio laudantium est molestias officia. Nesciunt rem eos minus molestias iure voluptas quia. Quos consequatur aspernatur aut consequatur ut.', 1, 2, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(33, 'Harum odit minima rerum sint dolores est velit.', 'Iste praesentium modi eveniet ullam. Ratione dolorum repudiandae natus neque velit. Omnis libero cupiditate at tempore vitae.', 0, 5, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(34, 'Iure voluptas sed repellendus explicabo quas.', 'Reiciendis blanditiis commodi similique consequatur aliquam iure eum. Excepturi non accusamus dolor cumque pariatur recusandae iste eius. Eius odio vel hic omnis illum doloremque doloribus molestiae. Laudantium cum consequatur earum.', 1, 9, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(35, 'Natus veritatis est aut.', 'Laudantium ipsa enim et minima aliquid. Temporibus consectetur distinctio quia autem est maiores repudiandae. Architecto harum nemo dolorum sit saepe dolores.', 0, 4, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(36, 'Sapiente neque consectetur officia sit et mollitia.', 'Aut temporibus magnam sunt est est qui. Amet perspiciatis est eos ut. Dolores nobis minima ut sapiente dolorum doloribus iste.', 0, 6, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(37, 'A repellendus corporis tempora qui dolor aperiam qui.', 'Aperiam magnam vero accusantium eius rem. Eos tempore omnis aut officia consequuntur alias. Et aspernatur et dignissimos est qui iste alias.', 1, 4, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(38, 'Aut officiis ipsa et ducimus quidem.', 'In eum deleniti sit veniam ab. Asperiores eveniet aliquid harum repellendus aut hic. Quae tempore eum molestiae aperiam possimus impedit laudantium. Animi itaque voluptate qui qui vero. Voluptatem fugit hic architecto consequatur quasi laboriosam.', 0, 2, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(39, 'Possimus deleniti eum voluptatibus.', 'A minima facere necessitatibus aspernatur reprehenderit fuga porro alias. Quas consequatur error at libero et. Doloribus error quia facilis corrupti pariatur quia adipisci.', 1, 7, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(40, 'Doloremque et nobis est consequatur voluptas.', 'Ducimus possimus aut dolorem ullam et aut. Nam consequatur quis minima corrupti et perferendis. Consequuntur corporis temporibus ea similique fugit voluptas.', 1, 9, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(41, 'Magni sed libero nihil quia voluptatem sit.', 'Praesentium quibusdam tempore ut ea nam. Doloribus modi repudiandae eos veritatis mollitia modi sunt dolorem. Est quia quia et nesciunt. Eius adipisci quaerat quibusdam impedit quasi cumque. Iusto nesciunt non ut at dolorem.', 1, 3, '2022-02-05 02:39:46', '2022-02-05 02:39:46'),
(42, 'Mollitia praesentium ut nulla molestiae.', 'Deserunt iusto qui itaque consequuntur nisi doloribus. Voluptatum doloribus unde molestiae maxime. Aut culpa occaecati sit quasi praesentium.', 0, 2, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(43, 'Doloremque enim tenetur quis eos repellat.', 'Unde enim aut esse aspernatur unde ea dolorem amet. Eum veniam dolor voluptatem voluptatem eius quasi. Alias non deserunt tempore aliquid ea cupiditate nesciunt aperiam.', 0, 7, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(44, 'Quis laborum eius molestias et tempora.', 'Dolore dolores sunt totam et. Nihil consequuntur odio sed beatae corporis in ut. Dolor et sint fugit consequatur omnis. Praesentium repudiandae voluptas modi sint dignissimos fuga unde.', 1, 5, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(45, 'Magni rem omnis voluptate repudiandae modi qui laborum molestiae.', 'Blanditiis reprehenderit beatae voluptates animi repudiandae. Itaque consequatur porro nihil. Eius repudiandae facere placeat consequatur amet eveniet et. Ex harum quibusdam placeat deleniti consequatur quia.', 0, 9, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(46, 'Non sequi magnam recusandae saepe.', 'Maiores ea ex dignissimos quam aliquid voluptatum iste sint. Omnis impedit facilis earum libero. Quidem voluptatem velit eos sunt esse ratione.', 0, 1, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(47, 'Autem molestiae omnis explicabo occaecati rem minima voluptates.', 'Vel ullam recusandae accusantium sequi deleniti nihil. Vel repellat vero est doloribus. Rerum labore assumenda ullam rerum rerum recusandae id. Et autem facilis sed non voluptatem.', 0, 3, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(48, 'Et quo nemo blanditiis molestiae ipsum odio vel.', 'In vel voluptatem officia reiciendis nemo aut. Suscipit eligendi culpa molestiae quos. Sint aperiam qui omnis voluptatem culpa. Recusandae omnis suscipit optio ut consectetur non.', 1, 7, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(49, 'Quam fuga eum commodi qui ab.', 'Laborum odit commodi veniam consectetur delectus labore. Recusandae quisquam voluptatibus molestias eum rerum. Dolorem ullam consequatur laboriosam maxime modi facilis ut sequi. Rerum debitis debitis quae placeat.', 1, 2, '2022-02-05 02:39:47', '2022-02-05 02:39:47'),
(50, 'Officia accusamus cumque blanditiis et.', 'Quod pariatur a id accusamus ad unde inventore. Accusantium accusantium vero modi. Et eveniet officia expedita.', 1, 8, '2022-02-05 02:39:47', '2022-02-05 02:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sammie Dare', 'mellie02@example.com', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SuQ702bLRs', '2022-02-05 02:31:08', '2022-02-05 02:31:08'),
(2, 'Alene Sawayn', 'tbraun@example.net', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PkMG4sbumr', '2022-02-05 02:31:08', '2022-02-05 02:31:08'),
(3, 'Geo Tremblay', 'georgette.pagac@example.org', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FYnfvK5yXH', '2022-02-05 02:31:08', '2022-02-05 02:31:08'),
(4, 'Raina Brown IV', 'madilyn45@example.com', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OcZlamOBm7', '2022-02-05 02:31:08', '2022-02-05 02:31:08'),
(5, 'Alexie Goldner', 'davion.franecki@example.net', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z7lgToyQRP', '2022-02-05 02:31:09', '2022-02-05 02:31:09'),
(6, 'Milan Stamm', 'llewellyn94@example.net', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YdCz31ramT', '2022-02-05 02:31:09', '2022-02-05 02:31:09'),
(7, 'Dion Crist', 'lueilwitz.angelo@example.com', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j3wnn6XkWC', '2022-02-05 02:31:09', '2022-02-05 02:31:09'),
(8, 'Timmothy Hermiston', 'adele69@example.org', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sTxwl8NI1y', '2022-02-05 02:31:09', '2022-02-05 02:31:09'),
(9, 'Leilani Bernier', 'jennifer03@example.net', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bmBprxMceb', '2022-02-05 02:31:09', '2022-02-05 02:31:09'),
(10, 'Adella Sipes', 'beer.evie@example.org', '2022-02-05 02:31:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '48A6X3gRhW', '2022-02-05 02:31:10', '2022-02-05 02:31:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_created_by_foreign` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
