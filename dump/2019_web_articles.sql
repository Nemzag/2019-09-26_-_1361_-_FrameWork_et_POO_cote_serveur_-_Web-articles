-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  sam. 12 oct. 2019 à 10:14
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `2019_web_articles`
--
CREATE DATABASE IF NOT EXISTS `2019_web_articles` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2019_web_articles`;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'PHP'),
(2, 'Symfony'),
(3, 'Laravel'),
(4, 'Back End'),
(5, 'Security'),
(6, 'Front End'),
(7, 'Python');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191010085312', '2019-10-10 08:53:35');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` date NOT NULL,
  `published` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `category_id`, `title`, `content`, `image`, `created`, `published`) VALUES
(1, 1, 'Est explicabo at excepturi.', 'Eaque provident autem ut eius ut quibusdam consequatur cumque. Perspiciatis vero sit aliquid iure quia eligendi maxime. Nesciunt neque quibusdam tempore sunt at. Deserunt rerum iusto vitae illum.\n\nQui esse animi occaecati facere impedit accusantium. Nostrum est nam culpa ratione voluptate. Quia quas est qui delectus.\n\nVoluptas doloremque voluptatem quo saepe est labore. Tempore pariatur vel voluptas est sunt. Vel expedita quos officia ipsa et illo. Qui distinctio autem minus ex quos ut. Reprehenderit in repellat vel soluta.', '1.png', '2019-10-06', '1'),
(2, 7, 'Eos aliquid maxime laboriosam.', 'Facilis quidem quam atque sint. Temporibus quos reprehenderit provident tenetur sed repellat dolor.\n\nMolestiae odit ut est alias. Deleniti blanditiis sed dolor ex similique consequatur placeat. Et aut inventore in tempora. Rerum ullam et recusandae sit.\n\nBeatae odio autem dicta porro quo sunt. Adipisci repudiandae excepturi asperiores at nihil tempora rerum. Sint alias tenetur repellat odit occaecati id dicta.', '2.png', '2019-07-14', '1'),
(3, 1, 'Libero excepturi id animi aut.', 'Est ut quis error dolorem quod. Ab aliquam fuga aut. Doloremque ullam alias ea reiciendis assumenda aut. Qui qui inventore aut qui.\n\nAb numquam amet non eos aut dolorem. Optio iste quo animi ut est voluptas consequatur veritatis. Aspernatur est debitis eum cumque minima enim dolorem.\n\nEt et sed eligendi et est dolor non. Vero in quas sequi debitis quam quam. Blanditiis vero officia totam asperiores dolore eum libero. Eaque voluptatibus animi magni ut quo et est.', '3.png', '2019-03-31', '1'),
(4, 4, 'Et minima est ipsa eos.', 'Qui recusandae deleniti nihil dolores esse cum natus. Omnis ea nisi sint non qui odit sit. Libero et sint eveniet ut quasi magnam ut. Sed quia omnis est earum saepe ipsam atque.\n\nDolorum et itaque sint autem eos in. Ut veniam omnis alias autem. Natus facilis vel nesciunt corrupti quaerat eligendi assumenda.\n\nExcepturi repudiandae occaecati sunt fugiat. Natus quod optio expedita reprehenderit iure et. Autem quod quae nobis enim. Quo optio sed doloribus aliquam sit harum. Mollitia aut aut debitis nesciunt dolorum.', '4.png', '2019-02-03', '1'),
(5, 2, 'Quia esse at.', 'Tempora qui optio dolor placeat illo perspiciatis eaque. Laudantium et perspiciatis dolores quis maiores corporis nesciunt iure. Non cum recusandae ab itaque. Officiis voluptatem sint possimus.\n\nVeniam enim excepturi impedit nulla. Assumenda ut est et odit voluptas aspernatur. Est tempore dicta quis.\n\nHic amet voluptates voluptatibus aperiam explicabo. Qui et autem enim veniam dolorum deleniti. Repudiandae consequatur consequuntur velit et. Sunt excepturi reprehenderit consectetur.', '5.png', '2018-12-09', '1'),
(6, 3, 'Debitis omnis alias.', 'Ipsam sapiente sit consequatur voluptatem ipsum atque. Ducimus quia occaecati repellat id voluptas. Est rerum mollitia libero blanditiis harum est.\n\nEst veritatis architecto ut aliquam tenetur rerum a. Et nemo ea et cumque. Quidem et est eveniet ab eum.\n\nAut minus exercitationem consequatur similique. Deserunt porro ut ut commodi. Veniam et et praesentium magni qui aliquam. Nam facilis tempore amet earum dolorem.', '6.png', '2019-04-01', '1'),
(7, 4, 'Perspiciatis perspiciatis fugiat.', 'Quasi iure reiciendis praesentium consequatur. Quidem vero eum harum. A doloribus sequi aliquam possimus animi dolor necessitatibus. Unde sit quae rem delectus. Officiis sunt tenetur unde esse adipisci.\n\nAut qui similique et in eaque. In fuga porro unde maxime dolores officiis eos doloribus. A et sit voluptatum illo.\n\nMollitia omnis aut eaque autem. Sunt ducimus reprehenderit quis vero minima dolorum. Magni adipisci dolorem vel totam totam dolore doloremque eum. Officia laborum facere ullam in accusantium autem sunt.', '7.png', '2019-02-12', '1'),
(8, 4, 'Hic est sapiente delectus.', 'Laborum vel qui voluptatem odit enim explicabo et. Quam aperiam laudantium dicta beatae ipsum consequuntur est. Molestiae aut maxime placeat corporis culpa et. Soluta aut eveniet sunt eligendi quidem.\n\nId dolor ab perspiciatis sequi iusto ut. Iusto qui qui ducimus saepe quaerat et. Iusto ab voluptas fuga et adipisci nemo et. Consequatur qui explicabo deleniti ab veniam.\n\nVeniam exercitationem occaecati quidem doloribus rem. Dignissimos quibusdam molestias non sint et aut. Expedita doloribus ullam quae. Reiciendis dolorem hic et nobis.', '8.png', '2019-01-12', '1'),
(9, 5, 'Dolores sunt blanditiis consequatur officia possimus.', 'Dolore est consequuntur eos qui sed ex. Veritatis cumque laborum voluptas aut.\n\nAut sed ipsam aliquid nulla nihil est. Repellendus asperiores distinctio consequuntur consequatur exercitationem vel aut ut. Omnis asperiores qui voluptatem doloribus autem.\n\nAut dicta et rem. Et dicta et pariatur et repellendus eaque explicabo. Explicabo autem inventore magnam nihil. Nihil vel aut voluptatibus.', '9.png', '2019-08-31', '1'),
(10, 2, 'Voluptatem assumenda consequatur eum.', 'Consequatur repudiandae ullam minus qui fugiat et. Est esse ipsa laboriosam delectus ipsam natus illo. Est vel in ipsam alias sit animi et doloribus. Numquam omnis at qui aperiam quae nam.\n\nDolores qui laboriosam sint. Atque deserunt dolorem laborum necessitatibus et. Esse qui iusto sunt eum.\n\nA quis et explicabo beatae. Voluptas nemo atque quo reiciendis ullam consequatur. Aut culpa non error quidem et. Porro fugiat quis totam placeat.', '10.png', '2018-10-13', '1'),
(11, 4, 'Non neque corrupti delectus.', 'Repudiandae eveniet itaque eos atque. Vel placeat commodi et et consequatur iure repellendus. Delectus quaerat doloremque pariatur. Ut et optio tempore molestiae qui recusandae.\n\nNam in aspernatur odit harum quaerat natus ut. Iusto harum in hic quisquam voluptas non illum. Nihil omnis aut reiciendis accusantium sequi minima.\n\nAperiam dolores tempore debitis officiis modi unde quia omnis. Sit culpa eveniet ut eveniet. Eveniet commodi magnam minima velit facere minima ut quisquam. Maxime tenetur veritatis excepturi. A excepturi aut reprehenderit distinctio tempore.', '11.png', '2019-08-07', '1'),
(12, 5, 'Similique quasi velit laudantium aut.', 'Voluptatibus fugit assumenda quod eveniet reprehenderit. Maxime ut architecto asperiores est et amet. Nobis corrupti id maiores provident. Sapiente nihil voluptas rerum eos quae. Et omnis iste odit.\n\nMinus molestiae perspiciatis impedit totam et. Aut dolores officia qui explicabo ut aliquid unde. Harum eius quam sed ea. Itaque est repellendus quo optio qui aliquam fugiat.\n\nAccusantium et nihil perspiciatis aperiam aut hic enim. Assumenda ut sequi et. Velit architecto minus nostrum amet fuga sed. Modi quis nobis veniam atque.', '12.png', '2019-05-16', '1'),
(13, 1, 'Facilis magnam voluptatibus aperiam.', 'Enim id error corrupti numquam iusto est consequatur. Fugit similique qui dignissimos id debitis. Est at atque voluptatum deserunt fugiat ut ex.\n\nEt voluptatem consequatur debitis repellendus praesentium quam a. Provident perspiciatis eligendi in odio temporibus eveniet. Sit et ad iste impedit ut corrupti architecto consequuntur. A cum reprehenderit voluptatem vero voluptatem.\n\nAb quia ea repellat eligendi exercitationem architecto. Pariatur odio necessitatibus esse.', '13.png', '2019-09-20', '1'),
(14, 7, 'Reprehenderit quaerat dolorem numquam asperiores.', 'Dicta aut velit officia voluptatem est et. Dicta quas nam voluptate ex. Est omnis non voluptatibus id et sapiente veritatis.\n\nSapiente vitae vel blanditiis ad ea velit qui. Fugiat vitae consequatur est sed in similique facere ipsam. Est tempora alias et neque enim. Dolore enim voluptas praesentium deleniti.\n\nSimilique perferendis laboriosam nostrum. Placeat distinctio in a tenetur. Possimus quaerat dignissimos hic culpa et ex.', '14.png', '2019-01-30', '1'),
(15, 4, 'Dolores ut doloribus quis.', 'Id quia neque qui ut dolorum. Nostrum eum perspiciatis eum quo. Omnis ut nulla quaerat rerum rem dolorem et.\n\nDebitis enim eum deserunt in ea saepe et. Aut cupiditate ut et sunt ut vel. Velit sed corporis sint. Quaerat minus assumenda delectus vel reiciendis est sint.\n\nVitae doloremque nesciunt maxime ad rerum quis. Sunt quidem omnis perspiciatis reiciendis et fugiat adipisci. Aliquid voluptatum et id saepe quia ipsam corrupti.', '15.png', '2019-06-13', '1'),
(16, 7, 'Est consequatur atque quo tempore.', 'Quod vel repudiandae iste eum ullam consectetur. Ea architecto deleniti quam voluptatem. Aliquam et fugiat cupiditate accusantium voluptatem non.\n\nDolor odio est quisquam mollitia corporis omnis voluptas. Libero impedit dignissimos nostrum praesentium recusandae soluta. Beatae earum et nostrum maiores. Eum ullam recusandae voluptates nam facilis.\n\nLaudantium libero ipsa eveniet tempore. Accusantium aliquid distinctio eaque. Voluptas tenetur ea a praesentium ut. Eos tenetur nulla vel suscipit ut eius.', '16.png', '2019-01-26', '1'),
(17, 4, 'Sed veritatis suscipit vel et fuga.', 'Perferendis illo est suscipit aperiam exercitationem maiores ipsam voluptatum. Itaque qui dolores autem modi.\n\nSed odio labore sint libero. Non odit cupiditate qui quam doloremque veritatis odit impedit. Reprehenderit hic eligendi iste aut eligendi voluptatem est molestiae.\n\nIpsa fugiat ea et est repudiandae sint soluta voluptatum. Assumenda possimus ipsam et asperiores non tempora. Natus et animi architecto vel sit voluptatem voluptas.', '17.png', '2019-05-24', '1'),
(18, 7, 'In ut commodi aperiam vitae nulla.', 'Sunt earum quia placeat aut quaerat. Debitis nihil odit enim incidunt dolore nam est. Atque sint laborum qui inventore. Maiores neque id excepturi libero.\n\nEarum eos soluta unde mollitia dolorem quis. Alias quia nemo magni natus in corrupti hic. Autem aliquam facere repellat quis qui maxime.\n\nAut porro voluptatem nihil ipsam ad. Repudiandae qui est animi autem aut et porro. Nemo id a necessitatibus corrupti minus. Et placeat asperiores omnis omnis voluptatem ut reprehenderit.', '18.png', '2019-08-13', '1'),
(19, 7, 'Omnis et vitae dicta sint qui.', 'Dolores quasi provident voluptatem quo. Officia vel quia ut et non sed. Non quaerat aperiam velit qui dolorem odit sit sed.\n\nVoluptate est voluptates libero tenetur. Cumque fugiat quod occaecati nisi nisi. Perspiciatis architecto voluptas est praesentium. Quisquam optio et quis ratione.\n\nFacilis provident eos eum laboriosam ipsa. Rerum nam mollitia quia magnam excepturi. Voluptatem laborum repudiandae nihil.', '19.png', '2018-11-15', '1'),
(20, 7, 'Consequuntur accusamus nisi neque.', 'Iure expedita ad quidem possimus beatae debitis debitis. Suscipit illum doloribus eveniet enim. Distinctio ab similique fugiat tempora laborum. Minus voluptatem non voluptatem soluta.\n\nOdit saepe doloremque officiis magnam esse ab esse. Velit aperiam et perferendis velit sunt accusamus ducimus. Enim officiis sit excepturi ratione odit nostrum. Fugit numquam iusto modi aut consequatur.\n\nCum reprehenderit non ipsam magnam. Facere sed nam omnis vel. Autem voluptatibus ducimus vel qui. Et sed voluptatibus enim reprehenderit.', '20.png', '2019-08-22', '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8D12469DE2` (`category_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
