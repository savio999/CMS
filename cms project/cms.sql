-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2017 at 06:04 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(150) NOT NULL,
  `contact_email` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `status` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`contact_id`, `contact_name`, `contact_email`, `message`, `status`) VALUES
(1, 'savio', 'savio@gmail.com', 'This is a test.', 1),
(2, 'sam', 'sam@gmail.com', 'This is a test.', 1),
(3, 'Hemanth', 'hemanthkumar@gmail.com', 'I love your writing. Keep writing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_body` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_body`, `date`) VALUES
(12, 'All About Google', '<p><strong>Google</strong>&nbsp;is an American&nbsp;<a href="https://en.wikipedia.org/wiki/Multinational_corporation">multinational</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Technology_company">technology company</a>&nbsp;specializing in&nbsp;<a href="https://en.wikipedia.org/wiki/Internet">Internet</a>-related services and products that include&nbsp;<a href="https://en.wikipedia.org/wiki/Online_advertising">online advertising</a>&nbsp;technologies,&nbsp;<a href="https://en.wikipedia.org/wiki/Web_search_engine">search</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Cloud_computing">cloud computing</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Software">software</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Computer_hardware">hardware</a>.</p><p>Google was founded in 1996 by&nbsp;<a href="https://en.wikipedia.org/wiki/Larry_Page">Larry Page</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Sergey_Brin">Sergey Brin</a>&nbsp;while they were&nbsp;<a href="https://en.wikipedia.org/wiki/Doctor_of_Philosophy">Ph.D.</a>&nbsp;students at&nbsp;<a href="https://en.wikipedia.org/wiki/Stanford_University">Stanford University</a>, California. Together, they own about 14 percent of its shares and control 56 percent of the stockholder voting power through&nbsp;<a href="https://en.wikipedia.org/wiki/Supervoting_stock">supervoting stock</a>. They incorporated Google as a privately held company on September 4, 1998. An&nbsp;<a href="https://en.wikipedia.org/wiki/Initial_public_offering">initial public offering</a>&nbsp;(IPO) took place on August 19, 2004, and Google moved to its new headquarters in&nbsp;<a href="https://en.wikipedia.org/wiki/Mountain_View,_California">Mountain View, California</a>, nicknamed the&nbsp;<a href="https://en.wikipedia.org/wiki/Googleplex">Googleplex</a>.<a href="https://en.wikipedia.org/wiki/Google#cite_note-6">[6]</a></p><p>In August 2015, Google announced plans to reorganize its various interests as a&nbsp;<a href="https://en.wikipedia.org/wiki/Conglomerate_(company)">conglomerate</a>&nbsp;called&nbsp;<a href="https://en.wikipedia.org/wiki/Alphabet_Inc.">Alphabet</a>. Google, Alphabet&#39;s leading subsidiary, will continue to be the umbrella company for Alphabet&#39;s Internet interests. Upon completion of the restructure,&nbsp;<a href="https://en.wikipedia.org/wiki/Sundar_Pichai">Sundar Pichai</a>&nbsp;became&nbsp;<a href="https://en.wikipedia.org/wiki/Chief_executive_officer">CEO</a>&nbsp;of Google, replacing&nbsp;<a href="https://en.wikipedia.org/wiki/Larry_Page">Larry Page</a>, who became CEO of Alphabet.<a href="https://en.wikipedia.org/wiki/Google#cite_note-Alphabet_introduction-7">[7]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-Alphabet_Bloomberg-8">[8]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-Alphabet_WSJ-9">[9]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-Alphabet_NYT-10">[10]</a></p><p>Rapid growth since incorporation has triggered a chain of products,&nbsp;<a href="https://en.wikipedia.org/wiki/Mergers_and_acquisitions">acquisitions</a>&nbsp;and partnerships beyond&nbsp;<a href="https://en.wikipedia.org/wiki/Google_Search">Google&#39;s core search engine</a>&nbsp;(<a href="https://en.wikipedia.org/wiki/Google_Search">Google Search</a>). It offers services designed for work and productivity (<a href="https://en.wikipedia.org/wiki/Google_Docs,_Sheets_and_Slides">Google Docs, Sheets and Slides</a>),&nbsp;<a href="https://en.wikipedia.org/wiki/Webmail">email</a>&nbsp;(<a href="https://en.wikipedia.org/wiki/Gmail">Gmail</a>/<a href="https://en.wikipedia.org/wiki/Inbox_by_Gmail">Inbox</a>), scheduling and time management (<a href="https://en.wikipedia.org/wiki/Google_Calendar">Google Calendar</a>),&nbsp;<a href="https://en.wikipedia.org/wiki/File_hosting_service">cloud storage</a>&nbsp;(<a href="https://en.wikipedia.org/wiki/Google_Drive">Google Drive</a>),&nbsp;<a href="https://en.wikipedia.org/wiki/Social_networking_service">social networking</a>&nbsp;(<a href="https://en.wikipedia.org/wiki/Google%2B">Google+</a>), instant messaging and video chat (<a href="https://en.wikipedia.org/wiki/Google_Allo">Google Allo</a>/<a href="https://en.wikipedia.org/wiki/Google_Duo">Duo</a>/<a href="https://en.wikipedia.org/wiki/Google_Hangouts">Hangouts</a>), language translation (<a href="https://en.wikipedia.org/wiki/Google_Translate">Google Translate</a>), mapping and turn-by-turn navigation (<a href="https://en.wikipedia.org/wiki/Google_Maps">Google Maps</a>), video sharing (<a href="https://en.wikipedia.org/wiki/YouTube">YouTube</a>), taking notes (<a href="https://en.wikipedia.org/wiki/Google_Keep">Google Keep</a>), and organizing and&nbsp;<a href="https://en.wikipedia.org/wiki/Image_editing">editing photos</a>&nbsp;(<a href="https://en.wikipedia.org/wiki/Google_Photos">Google Photos</a>). The company leads the development of the&nbsp;<a href="https://en.wikipedia.org/wiki/Android_(operating_system)">Android</a>&nbsp;mobile&nbsp;<a href="https://en.wikipedia.org/wiki/Operating_system">operating system</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Google_Chrome">Google Chrome</a>&nbsp;web browser and&nbsp;<a href="https://en.wikipedia.org/wiki/Chrome_OS">Chrome OS</a>, a lightweight operating system based around the Chrome browser. Google has moved increasingly into hardware; from 2010 to 2015, it partnered with major electronics manufacturers in the production of its&nbsp;<a href="https://en.wikipedia.org/wiki/Google_Nexus">Nexus</a>&nbsp;devices,<a href="https://en.wikipedia.org/wiki/Google#cite_note-Hardware_company-11">[11]</a>&nbsp;and in October 2016, it launched multiple hardware products (the&nbsp;<a href="https://en.wikipedia.org/wiki/Pixel_(smartphone)">Google Pixel</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Google_Home">Home</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Google_Wifi">Wifi</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Google_Daydream">Daydream View</a>),<a href="https://en.wikipedia.org/wiki/Google#cite_note-Google_Pixel_announcement-12">[12]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-Google_Home_announcement-13">[13]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-Google_Wifi_announcement-14">[14]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-Daydream_View_announcement-15">[15]</a>&nbsp;with new hardware chief Rick Osterloh stating that &quot;a lot of the innovation that we want to do now ends up requiring controlling the end-to-end user experience&quot;.<a href="https://en.wikipedia.org/wiki/Google#cite_note-The_Google_Phone_Interview-16">[16]</a>&nbsp;Google has also experimented with becoming an Internet network operator. In February 2010, it announced&nbsp;<a href="https://en.wikipedia.org/wiki/Google_Fiber">Google Fiber</a>, a fiber-optic infrastructure that was installed in&nbsp;<a href="https://en.wikipedia.org/wiki/Kansas_City,_Kansas">Kansas City</a>;<a href="https://en.wikipedia.org/wiki/Google#cite_note-Google_Fiber-17">[17]</a>&nbsp;in April 2015, it launched&nbsp;<a href="https://en.wikipedia.org/wiki/Project_Fi">Project Fi</a>, combining Wi-Fi and cellular networks from different providers in an effort to create a seamless and fast wireless Internet experience;<a href="https://en.wikipedia.org/wiki/Google#cite_note-Project_Fi-18">[18]</a>&nbsp;and in 2016, the company launched the Google Station initiative to make public &quot;high-quality, secure, easily accessible Wi-Fi&quot; around the world, which had already been deployed in&nbsp;<a href="https://en.wikipedia.org/wiki/India">India</a>.<a href="https://en.wikipedia.org/wiki/Google#cite_note-Google_Station-19">[19]</a></p><p>An August 2011 report estimated that Google had almost one million servers in data centers around the world.<a href="https://en.wikipedia.org/wiki/Google#cite_note-Server_count-20">[20]</a>&nbsp;It processed over one billion search requests per day in 2009,<a href="https://en.wikipedia.org/wiki/Google#cite_note-More_than_a_billion_searches-21">[21]</a>&nbsp;and about 20&nbsp;<a href="https://en.wikipedia.org/wiki/Petabyte">petabytes</a>&nbsp;of data each day in 2008.<a href="https://en.wikipedia.org/wiki/Google#cite_note-20_PB_of_data_each_day_1-22">[22]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-20_PB_of_data_each_day_2-23">[23]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-20_PB_of_data_each_day_3-24">[24]</a></p><p><a href="https://en.wikipedia.org/wiki/Alexa_Internet">Alexa</a>, a company that monitors commercial web traffic, lists Google.com as the most visited website in the world.<a href="https://en.wikipedia.org/wiki/Google#cite_note-Google_most_visited-25">[25]</a>&nbsp;Several other Google services also figure in the top 100 most visited websites, including YouTube<a href="https://en.wikipedia.org/wiki/Google#cite_note-YouTube_most_visited-26">[26]</a>&nbsp;and Blogger.<a href="https://en.wikipedia.org/wiki/Google#cite_note-Blogger_most_visited-27">[27]</a>&nbsp;Google has been the second most valuable brand in the world for 4 consecutive years,<a href="https://en.wikipedia.org/wiki/Google#cite_note-2013_Interbrand-28">[28]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-2014_Interbrand-29">[29]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-2015_Interbrand-30">[30]</a>&nbsp;and has a valuation in 2016 at $133 billion.<a href="https://en.wikipedia.org/wiki/Google#cite_note-2016_Interbrand-31">[31]</a></p><p>Google&#39;s&nbsp;<a href="https://en.wikipedia.org/wiki/Mission_statement">mission statement</a>&nbsp;from the outset was &quot;to organize the world&#39;s information and make it universally accessible and useful,&quot; and its unofficial slogan was &quot;<a href="https://en.wikipedia.org/wiki/Don%27t_be_evil">Don&#39;t be evil</a>&quot;.<a href="https://en.wikipedia.org/wiki/Google#cite_note-corporate-32">[32]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-33">[33]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-34">[34]</a>&nbsp;In October 2015, the motto was replaced in the Alphabet corporate code of conduct by the phrase: &quot;Do the right thing&quot;.<a href="https://en.wikipedia.org/wiki/Google#cite_note-35">[35]</a>&nbsp;Google&#39;s commitment to such robust idealism has been increasingly called into doubt due to a number of actions and behaviours which appear to contradict this.<a href="https://en.wikipedia.org/wiki/Google#cite_note-36">[36]</a><a href="https://en.wikipedia.org/wiki/Google#cite_note-37">[37]</a></p>', '2017-01-20'),
(13, 'Mountain View, California', '<p><strong>Mountain View</strong>&nbsp;is a city located in&nbsp;<a href="https://en.wikipedia.org/wiki/Santa_Clara_County,_California">Santa Clara County, California</a>, United States, named for its views of the&nbsp;<a href="https://en.wikipedia.org/wiki/Santa_Cruz_Mountains">Santa Cruz Mountains</a>.<a href="https://en.wikipedia.org/wiki/Mountain_View,_California#cite_note-9">[9]</a>&nbsp;From its origins as a stagecoach stop, it grew to a large suburb with a pedestrian-friendly downtown, free wi-fi, and a population of 74,066. The city borders&nbsp;<a href="https://en.wikipedia.org/wiki/Palo_Alto">Palo Alto</a>&nbsp;and the&nbsp;<a href="https://en.wikipedia.org/wiki/San_Francisco_Bay">San Francisco Bay</a>&nbsp;to the north,&nbsp;<a href="https://en.wikipedia.org/wiki/Los_Altos,_California">Los Altos</a>&nbsp;to the south, and&nbsp;<a href="https://en.wikipedia.org/wiki/Moffett_Federal_Airfield">Moffett Federal Airfield</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Sunnyvale,_California">Sunnyvale</a>&nbsp;to the east.</p><p>Situated in the southern end of the&nbsp;<a href="https://en.wikipedia.org/wiki/San_Francisco_Peninsula">San Francisco Peninsula</a>&nbsp;in the&nbsp;<a href="https://en.wikipedia.org/wiki/San_Francisco_Bay_Area">San Francisco Bay Area</a>, Mountain View is home to many&nbsp;<a href="https://en.wikipedia.org/wiki/High_technology">high technology</a>&nbsp;companies. In 1956,&nbsp;<a href="https://en.wikipedia.org/wiki/Shockley_Semiconductor_Laboratory">Shockley Semiconductor Laboratory</a>, the first company to develop silicon semiconductor devices in what came to be known as&nbsp;<a href="https://en.wikipedia.org/wiki/Silicon_Valley">Silicon Valley</a>, was established in the city by&nbsp;<a href="https://en.wikipedia.org/wiki/William_Shockley">William Shockley</a>. Today, many of the largest technology companies in the world are headquartered in the city, including&nbsp;<a href="https://en.wikipedia.org/wiki/Google">Google</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Mozilla_Foundation">Mozilla Foundation</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Symantec">Symantec</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Intuit">Intuit</a>. The original&nbsp;<a href="https://en.wikipedia.org/wiki/Byte_Shop">Byte Shop</a>&nbsp;computer store was opened at 1063 El Camino Real, Mountain View by&nbsp;<a href="https://en.wikipedia.org/wiki/Paul_Terrell">Paul Terrell</a>, and the first 50&nbsp;<a href="https://en.wikipedia.org/wiki/Apple_I">Apple I</a>&nbsp;computers were sold from that location. The&nbsp;<a href="https://en.wikipedia.org/wiki/Santa_Clara_Valley_Transportation_Authority">Santa Clara Valley Transportation Authority</a>&nbsp;integrates the city with the neighboring cities of&nbsp;<a href="https://en.wikipedia.org/wiki/Palo_Alto,_California">Palo Alto</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Los_Altos,_California">Los Altos</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Sunnyvale,_California">Sunnyvale</a>.</p>', '2017-01-20'),
(14, 'Jochen Rindt', '<p><strong>Karl Jochen Rindt</strong>&nbsp;(<a href="https://en.wikipedia.org/wiki/Help:IPA_for_German">[kaÊl ËˆjÉ”&chi;nÌ© Ê€Éªnt]</a>; 18 April 1942 &ndash; 5 September 1970) was a German-born racing driver who&nbsp;<a href="https://en.wikipedia.org/wiki/Formula_One_drivers_from_Austria">represented Austria during his career</a>. In&nbsp;<a href="https://en.wikipedia.org/wiki/1970_Formula_One_season">1970</a>, he was killed during practice for the&nbsp;<a href="https://en.wikipedia.org/wiki/1970_Italian_Grand_Prix">Italian Grand Prix</a>&nbsp;and became the only driver to be posthumously awarded the&nbsp;<a href="https://en.wikipedia.org/wiki/Formula_One">Formula One</a>&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_Formula_One_World_Drivers%27_Champions">World Drivers&#39; Championship</a>.</p><p>Rindt started motor racing in 1961. Switching to&nbsp;<a href="https://en.wikipedia.org/wiki/Open-wheel_car">single-seaters</a>&nbsp;in 1963, he was successful in both&nbsp;<a href="https://en.wikipedia.org/wiki/Formula_Junior">Formula Junior</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Formula_Two">Formula Two</a>. In&nbsp;<a href="https://en.wikipedia.org/wiki/1964_Formula_One_season">1964</a>, Rindt made his debut in Formula One at the&nbsp;<a href="https://en.wikipedia.org/wiki/1964_Austrian_Grand_Prix">Austrian Grand Prix</a>, before securing a full drive with&nbsp;<a href="https://en.wikipedia.org/wiki/Cooper_Car_Company">Cooper</a>&nbsp;for&nbsp;<a href="https://en.wikipedia.org/wiki/1965_Formula_One_season">1965</a>. After mixed results with the team, he moved to&nbsp;<a href="https://en.wikipedia.org/wiki/Brabham">Brabham</a>&nbsp;for&nbsp;<a href="https://en.wikipedia.org/wiki/1968_Formula_One_season">1968</a>&nbsp;and then&nbsp;<a href="https://en.wikipedia.org/wiki/Team_Lotus">Lotus</a>&nbsp;in&nbsp;<a href="https://en.wikipedia.org/wiki/1969_Formula_One_season">1969</a>. It was at Lotus that Rindt found a competitive car, although he was often concerned about the security of the notoriously unreliable Lotus vehicles. He won his first Formula One race at the&nbsp;<a href="https://en.wikipedia.org/wiki/1969_United_States_Grand_Prix">1969 United States Grand Prix</a>. He had a very successful 1970 season, mainly racing the revolutionary&nbsp;<a href="https://en.wikipedia.org/wiki/Lotus_72">Lotus 72</a>, and won five of the first nine races. In practice for the Italian Grand Prix at&nbsp;<a href="https://en.wikipedia.org/wiki/Autodromo_Nazionale_Monza">Monza</a>, he spun into the guardrails after a failure on his brake shaft. Rindt was killed owing to severe throat injuries caused by his seat belt; he was pronounced dead while on the way to hospital. As his closest competitor&nbsp;<a href="https://en.wikipedia.org/wiki/Jacky_Ickx">Jacky Ickx</a>&nbsp;was unable to score sufficient points in the remaining races of the season, Rindt was awarded the World Championship posthumously.</p><p>Overall, he competed in 62 Grands Prix, winning six and achieving 13 podium finishes. He was also successful in&nbsp;<a href="https://en.wikipedia.org/wiki/Sports_car_racing">sports car racing</a>, winning the&nbsp;<a href="https://en.wikipedia.org/wiki/1965_24_Hours_of_Le_Mans">1965 24 Hours of Le Mans</a>&nbsp;paired with&nbsp;<a href="https://en.wikipedia.org/wiki/Masten_Gregory">Masten Gregory</a>&nbsp;in a&nbsp;<a href="https://en.wikipedia.org/wiki/Ferrari_P#250_LM">Ferrari 250LM</a>.</p><p>Rindt was a popular figure in Austria and his success resulted in increased interest in motorsport and Formula One in particular. He hosted a monthly television show titled&nbsp;<em>Motorama</em>&nbsp;and set up a successful exhibition of racing cars in Vienna. During his time in Formula One, he was involved, alongside&nbsp;<a href="https://en.wikipedia.org/wiki/Jackie_Stewart">Jackie Stewart</a>, in a campaign to improve safety in Formula One. Rindt left behind his wife, Nina, and a daughter, Natasha.</p>', '2017-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `isadmin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `isadmin`) VALUES
(1, 'savio', '4e298bd40057dc09e2785fdeb35ac9fd', 1),
(2, 'sam', 'savio@', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
