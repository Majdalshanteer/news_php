-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 02:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `category` text NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`, `description`, `date_created`) VALUES
(1, 'Tech', 'Tech', '2020-11-16 09:52:44'),
(2, 'Science', 'Science', '2020-11-16 09:53:32'),
(3, 'Sport', 'Sport', '2020-11-16 09:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `post_list`
--

CREATE TABLE `post_list` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `category_id` int(30) NOT NULL,
  `content` text NOT NULL,
  `cover_img` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_published` datetime NOT NULL DEFAULT current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_list`
--

INSERT INTO `post_list` (`id`, `title`, `category_id`, `content`, `cover_img`, `status`, `date_published`, `date_created`) VALUES
(3, 'NFL play-offs: Cincinnati Bengals, New York Giants and Buffalo Bills earn nervy wins on wildcard weekend', 3, '												&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;img src=&quot;https://ichef.bbci.co.uk/onesport/cps/976/cpsprodpb/16D14/production/_128306439_tv081622337.jpg&quot; style=&quot;width: 50%;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-14.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;The New York Giants led for most of the game at Minnesota, the third seed in the NFC, as fourth-year quarterback Daniel Jones claimed a road victory in his first play-off appearance.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-15&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-15.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;Giants running back Saquon Barkley claimed a combined 109 yards and two rushing touchdowns, the first from 28 yards, as New York gained a half-time lead of 17-14.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-16&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-16.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;Each team scored a touchdown in the third quarter, before a Vikings field goal made it 24-24 early in the fourth.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-17&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-17.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;Barkley then capped a 12-play drive with a two-yard score to restore New York&rsquo;s lead and they held on for their first play-off victory since winning their fourth Super Bowl at the end of the 2011 season.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-18&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-18.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;Jones also became the first quarterback in play-off history to throw for more than 300 yards and two touchdowns while adding more than 70 rushing yards.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;&quot; data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-19&quot; style=&quot;margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; box-sizing: inherit; color: rgb(18, 18, 18); font-family: ReithSans, Arial, Helvetica, freesans, sans-serif;&quot;&gt;&lt;span data-reactid=&quot;.13ftwza4cr6.0.0.0.1.$paragraph-19.0&quot; style=&quot;box-sizing: inherit;&quot;&gt;Next weekend the Giants will travel to NFC East rivals the Philadelphia Eagles, who as the number one seeds had a bye to the divisional round.&lt;/span&gt;&lt;/p&gt;																					', '1673874600__128306443_tv081623708.jpg', 1, '2023-01-16 16:11:36', '2023-01-16 16:10:44'),
(4, 'How rare earth elements’ hidden properties make modern technology possible', 2, '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; font-size: 1.4375rem; line-height: 1.35; font-family: museo-sans, helvetica, arial, sans-serif; vertical-align: baseline; color: rgb(49, 49, 59);&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; font-size: 1.4375rem; line-height: 1.35; font-family: museo-sans, helvetica, arial, sans-serif; vertical-align: baseline; color: rgb(49, 49, 59);&quot;&gt;&lt;img src=&quot;https://www.sciencenews.org/wp-content/uploads/2023/01/011423_no-rareearths_table_desktop.png&quot; style=&quot;width: 680px;&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; font-size: 1.4375rem; line-height: 1.35; font-family: museo-sans, helvetica, arial, sans-serif; vertical-align: baseline; color: rgb(49, 49, 59);&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; font-size: 1.4375rem; line-height: 1.35; font-family: museo-sans, helvetica, arial, sans-serif; vertical-align: baseline; color: rgb(49, 49, 59);&quot;&gt;Rare earths&rsquo; superpowers come from their electrons&lt;/h4&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 1.75rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.55556; font-family: museo-sans, helvetica, arial, sans-serif; vertical-align: baseline; color: rgb(49, 49, 59);&quot;&gt;The rare earths are the lanthanides &mdash; lutetium and all 14 elements between lanthanum and ytterbium across one row of the periodic table &mdash; plus scandium and yttrium, which tend to occur in the same ore deposits and have similar chemical properties to the lanthanides. These gray to silvery metals are often malleable with high melting and boiling points.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 1.75rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.55556; font-family: museo-sans, helvetica, arial, sans-serif; vertical-align: baseline; color: rgb(49, 49, 59);&quot;&gt;Their secret powers lie in their electrons. All atoms have a nucleus surrounded by electrons, which inhabit zones called orbitals. Electrons in the orbitals farthest from the nucleus are the valence electrons, which participate in chemical reactions and form bonds with other atoms.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 1.75rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 1.55556; font-family: museo-sans, helvetica, arial, sans-serif; vertical-align: baseline; color: rgb(49, 49, 59);&quot;&gt;Most lanthanides possess another important set of electrons called the &ldquo;f-electrons,&rdquo; which dwell in a Goldilocks zone located near the valence electrons but slightly closer to the nucleus. &ldquo;It&rsquo;s these f-electrons that are responsible for both the magnetic and luminescent properties of the rare earth elements,&rdquo; says Ana de Bettencourt-Dias, an inorganic chemist at the University of Nevada, Reno.&lt;/p&gt;											', '1673874780_011423_no-rareearths_feat-1440x700.jpg', 1, '2023-01-16 16:13:45', '2023-01-16 16:13:45'),
(5, 'Should schools ban ChatGPT or embrace the technology instead?', 1, '&lt;p&gt;&lt;img src=&quot;https://images.newscientist.com/wp-content/uploads/2023/01/12200541/SEI_140049575.jpg?width=800&quot; style=&quot;width: 800px;&quot;&gt;&lt;span style=&quot;color: rgb(77, 77, 77); font-family: &amp;quot;Titillium Web&amp;quot;, Helvetica, &amp;quot;Trebuchet MS&amp;quot;, Arial, sans-serif; font-size: 24px; letter-spacing: -0.6px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(77, 77, 77); font-family: &amp;quot;Titillium Web&amp;quot;, Helvetica, &amp;quot;Trebuchet MS&amp;quot;, Arial, sans-serif; font-size: 24px; letter-spacing: -0.6px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(77, 77, 77); font-family: &amp;quot;Titillium Web&amp;quot;, Helvetica, &amp;quot;Trebuchet MS&amp;quot;, Arial, sans-serif; font-size: 24px; letter-spacing: -0.6px;&quot;&gt;School districts and universities are banning the ChatGPT AI that writes in a human-like fashion, but some teachers say a better approach may be to incorporate it into the curriculum&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px; font-family: &amp;quot;PT Serif&amp;quot;, Georgia, serif; font-size: 1.0625rem; margin-right: 0px; margin-bottom: 0.6875rem; margin-left: 0px; padding: 0px; vertical-align: baseline; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; text-size-adjust: none; scroll-behavior: smooth; line-height: 1.5625rem; color: rgb(77, 77, 77);&quot;&gt;Schools and educational institutions in the US and elsewhere are announcing bans on the recently released AI-powered chatbot ChatGPT out of fear that students could use the technology to complete their assignments. However, bans may be practically impossible given how difficult it is to detect when text is composed by ChatGPT. Is it instead time to rethink how students are taught and evaluated?&lt;/p&gt;&lt;p&gt;											&lt;/p&gt;&lt;p style=&quot;border: 0px; font-family: &amp;quot;PT Serif&amp;quot;, Georgia, serif; font-size: 1.0625rem; margin-right: 0px; margin-bottom: 0.6875rem; margin-left: 0px; padding: 0px; vertical-align: baseline; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; text-size-adjust: none; scroll-behavior: smooth; line-height: 1.5625rem; color: rgb(77, 77, 77);&quot;&gt;&ldquo;Educators are starting to question what it means to&hellip; assess student learning if an AI can write an essay &hellip;&lt;/p&gt;', '1673875560_SEI_140049575.webp', 1, '2023-01-16 16:26:53', '2023-01-16 16:26:53'),
(6, 'AI chatbots could hit a ceiling after 2026 as training data runs dry', 1, '&lt;p style=&quot;border: 0px; font-family: &amp;quot;PT Serif&amp;quot;, Georgia, serif; font-size: 1.0625rem; margin-right: 0px; margin-bottom: 0.6875rem; margin-left: 0px; padding: 0px; vertical-align: baseline; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; text-size-adjust: none; scroll-behavior: smooth; line-height: 1.5625rem; color: rgb(77, 77, 77);&quot;&gt;&lt;img src=&quot;http://localhost/news/assets/uploads/content_images/1673875680_SEI_139413818.webp&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px; font-family: &amp;quot;PT Serif&amp;quot;, Georgia, serif; font-size: 1.0625rem; margin-right: 0px; margin-bottom: 0.6875rem; margin-left: 0px; padding: 0px; vertical-align: baseline; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; text-size-adjust: none; scroll-behavior: smooth; line-height: 1.5625rem; color: rgb(77, 77, 77);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px; font-family: &amp;quot;PT Serif&amp;quot;, Georgia, serif; font-size: 1.0625rem; margin-right: 0px; margin-bottom: 0.6875rem; margin-left: 0px; padding: 0px; vertical-align: baseline; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; text-size-adjust: none; scroll-behavior: smooth; line-height: 1.5625rem; color: rgb(77, 77, 77);&quot;&gt;The supply of high-quality language data used to train machine-learning artificial intelligence models may run out in three years, leading AI advancement to stagnate.&lt;/p&gt;&lt;p style=&quot;border: 0px; font-family: &amp;quot;PT Serif&amp;quot;, Georgia, serif; font-size: 1.0625rem; margin-right: 0px; margin-bottom: 0.6875rem; margin-left: 0px; padding: 0px; vertical-align: baseline; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; text-size-adjust: none; scroll-behavior: smooth; line-height: 1.5625rem; color: rgb(77, 77, 77);&quot;&gt;Machine learning powers AI programs like text-prompted image generator Midjourney and OpenAI&rsquo;s chat-based text generator ChatGPT. Such&amp;nbsp;&lt;a href=&quot;https://www.newscientist.com/article/2311525-simple-mathematical-trick-could-slash-ai-development-time-in-half/&quot; style=&quot;border: 0px; font-size: 1.0625rem; margin: 0px; padding: 0px; vertical-align: baseline; color: rgb(0, 179, 229); text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; text-size-adjust: none; scroll-behavior: smooth; transition: color 0.15s cubic-bezier(0, 0, 0.33, 0.93) 0s; line-height: 1.5625rem;&quot;&gt;models train on vast reams of human-created data&lt;/a&gt;&amp;nbsp;from the internet to learn, for instance, when asked to draw a banana that it should be &hellip;&lt;/p&gt;											', '1673875680_SEI_139413818.webp', 1, '2023-01-16 16:28:08', '2023-01-16 16:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_list`
--
ALTER TABLE `post_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_list`
--
ALTER TABLE `post_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
