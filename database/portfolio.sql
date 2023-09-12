-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 01:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `payment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `livelink` varchar(255) NOT NULL,
  `imageBanner` varchar(255) NOT NULL,
  `carouselImage1` varchar(255) NOT NULL,
  `carouselImage2` varchar(255) NOT NULL,
  `carouselImage3` varchar(255) NOT NULL,
  `carouselImage4` varchar(255) NOT NULL,
  `responsiveExample` varchar(255) NOT NULL,
  `xdBackbone` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `breadcrumb` varchar(100) NOT NULL,
  `quantity` int(20) NOT NULL,
  `compatibility` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `files` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `readme` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `banner` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `title`, `livelink`, `imageBanner`, `carouselImage1`, `carouselImage2`, `carouselImage3`, `carouselImage4`, `responsiveExample`, `xdBackbone`, `description`, `breadcrumb`, `quantity`, `compatibility`, `version`, `files`, `language`, `readme`, `layout`, `price`, `created_at`, `banner`, `status`, `code`) VALUES
(1, 'Codespace Project | Resume Anton Marais', 'Resume Project', 'http://www.studio81.info/websiteSamples/resume/index.html', 'resume/screenresume.jpg', 'resume/aboutscreen.jpg', 'resume/clientfeedback.jpg', 'resume/messagepopups.jpg', 'resume/portfolio.jpg', 'resume/Responsivedevice.jpg', 'resume/screenresume.jpg', '          Introducing our cutting-edge downloadable website project,\r\n          meticulously crafted to cater to modern users\' diverse needs. Our\r\n          site boasts a seamless, fully responsive design, ensuring optimal\r\n          functionality on both mobile and tablet devices. Powered by\r\n          Bootstrap, HTML, and CSS, it offers a user-friendly interface,\r\n          enhancing the overall experience. <img src=\"../img/resume/Responsivedevice.png\" alt=\"\" srcset=\"\" / class=\"w-100 my-4\"> The centerpiece of this project is the\r\n          downloadable resume feature, allowing users to effortlessly access\r\n          and save their professionally designed resumes. The site\'s\r\n          aesthetics are meticulously curated, with a UI/UX masterfully\r\n          crafted using Adobe XD, ensuring an intuitive and visually\r\n          captivating experience.\r\n          <img src=\"../img/resume/resumexd.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n          Furthermore, we provide a comprehensive Contact Us page, enabling\r\n          seamless communication, and social media integration for easy\r\n          connectivity. Embrace the future of web design with our\r\n          downloadable website project!', 'HTML & CSS', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Bootstrap', 'Yes', 'Responsive', '540', '2023-08-01 14:50:25', 'resume/product1resume.jpg', 1, 'sku01'),
(2, 'Codespace Project | Online Store', 'The Royal Runaway', 'http://studio81.info/websiteSamples/ecommerce/shop_pages/index.html', 'ecom/mainpage.jpg', 'ecom/gallery.jpg', 'ecom/productsection.jpg', 'ecom/theteam.jpg', 'ecom/brands.jpg', 'ecom/Responsivedevice.jpg', 'resume/screenresume.jpg', 'This HTML, CSS, Bootstrap, and JavaScript project showcases a harmonious fusion of design and functionality. All logos, graphics, and the user interface were meticulously crafted in-house, reflecting a commitment to creativity and originality.\r\n\r\nThe centerpiece is the product section, where data is dynamically pulled from an array, ensuring up-to-date information for users. This section also boasts various categories, enabling seamless sorting and navigation through the diverse range of products.\r\n\r\n<img src=\"../img/ecom/section.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nA visually captivating gallery section adds a delightful visual dimension to the project, offering users a captivating browsing experience. Importantly, the entire website is fully responsive, guaranteeing optimal viewing across devices.\r\n\r\n<img src=\"../img/ecom/Responsivedevice.png\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nThe shopping experience is further enhanced by an intuitive cart system. Users can effortlessly add products to their cart and remove items as needed. The cart dynamically calculates the total, streamlining the checkout process and ensuring transparency in pricing.\r\n\r\n<img src=\"../img/ecom/productscart.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nBeyond shopping, the project seamlessly integrates Google Maps, offering location information and easy navigation for users. This multifaceted project is a testament to the power of web development, combining creativity, functionality, and user-friendliness to provide an exceptional online experience.', 'HTML & Javascript', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Bootstrap', 'Yes', 'Responsive', '700', '2023-08-01 14:50:25', 'ecom/productecom.jpg', 1, 'sku02'),
(3, 'Codespace Project | Ordering System', 'Donut Shop', 'http://studio81.info/websiteSamples/ordering_system/index.html', 'donut/mainpage.jpg', 'donut/select.jpg', 'donut/login.jpg', 'donut/final.jpg', 'donut/logout.jpg', '', '', 'Introducing the Full PHP Ordering System—a versatile web solution that redefines the online ordering experience. Meticulously designed, this system seamlessly combines \r\nfunctionality with user-centric features for a truly exceptional ordering journey.\r\n\r\nOur user-friendly **Login System** offers a hassle-free start, seamlessly pulling user details from a JSON file, ensuring a personalized login experience.\r\n\r\n<img src=\"../img/donut/login.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nBrowse our extensive product catalog with ease. We\'ve intelligently categorized products for quick and intuitive navigation, enhancing the selection process.\r\n\r\nCustomize your pricing strategy to perfection. Our system accommodates various pricing models, whether you\'re running promotions, offering discounts, or implementing tiered pricing based on user roles or product categories.\r\n\r\nManage your selections effortlessly with our intuitive cart system. Add, remove, or modify items with ease before proceeding to checkout.\r\n\r\n<img src=\"../img/donut/final.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nOur streamlined **Checkout Process** dynamically compiles your chosen items, calculates subtotals, applies VAT or taxes, and presents a final total for a transparent and efficient payment experience.\r\n\r\nUpon successful completion, our system extends its appreciation with a \"Thank You\" page, confirming your order and providing essential details, such as an order number and estimated delivery date.\r\n\r\nBusiness owners benefit from our admin panel, streamlining order management, customer insights, and order status updates.\r\n\r\nWe prioritize security by seamlessly integrating trusted payment gateways, ensuring the utmost security and a smooth transaction experience.\r\n\r\nStay informed at every step with automatic order confirmation emails sent to both customers and administrators, furnishing comprehensive order details and tracking information.\r\n\r\nEnhance the user experience with personalized accounts. Users can create and manage their accounts, view order history, and securely store billing and shipping information for future orders.\r\n\r\nOur system employs robust security measures, including SSL encryption and stringent input validation, to safeguard user data and payment information.\r\n\r\nExperience the future of online ordering with our Full PHP Ordering System—a comprehensive solution that empowers both customers and administrators, providing a seamless, secure, and efficient ordering experience. Say goodbye to ordering complexities and embrace a new era of online commerce with our dynamic system.', 'HTML & PHP', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Bootstrap, PHP', 'Yes', 'Not Responsive', '310', '2023-08-01 14:50:25', 'donut/productdonut.jpg', 1, 'sku03'),
(4, 'Codespace Project | Hotel App', 'Prestine Escapes', 'http://www.studio81.info/websiteSamples/finalHotel/index.php', 'hotelapp/hotelapp.jpg', 'hotelapp/booking.jpg', 'hotelapp/gallery.jpg', 'hotelapp/login.jpg', 'hotelapp/sections.jpg', 'hotelapp/Responsivedevice.jpg', 'resume/screenresume.jpg', 'Welcome to \"Pristine Escapes,\" where every aspect of your online experience has been carefully crafted in-house. Our hotel website is a testament to creativity and innovation, powered by HTML, CSS, Bootstrap SASS, and PHP.\r\n\r\nEvery pixel of our user interface (UI) has been meticulously designed in-house, reflecting our commitment to providing you with a visually stunning and user-friendly platform. From the moment you land on our website, you\'ll notice the unique and inviting design that sets \"Pristine Escapes\" apart.\r\n\r\nAs you explore our site, you\'ll find that all logos, graphics, and other visual elements have been crafted with precision by our talented team. This attention to detail ensures a cohesive and visually appealing experience throughout your visit.\r\n\r\n\r\nBut our dedication to excellence doesn\'t stop at design. We\'ve also integrated a robust database system that seamlessly fetches the most up-to-date information, ensuring that the details you see – whether it\'s hotel information, room descriptions, or utility details – are always accurate and reliable.\r\n\r\n<img src=\"../img/hotelapp/gallery.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nOur user-friendly login and registration system have also been developed in-house to provide you with a secure and personalized experience. Registered users can access exclusive features and easily make reservations, all within our beautifully designed interface.\r\n\r\nAnd speaking of reservations, our website is fully responsive, ensuring that you can explore and book your perfect getaway on any device, whether it\'s a mobile phone, tablet, or desktop computer.\r\n\r\n<img src=\"../img/hotelapp/Responsivedevice.png\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nWith different categories that link directly to specific hotels or rooms, finding your ideal accommodations is a breeze. Plus, all testimonials on \"Pristine Escapes\" are sourced directly from our database, offering you genuine feedback from our satisfied guests.\r\n\r\nWhen it comes to choosing your perfect room, you can rely on our dynamic system to pull hotel room data and utility information directly from the database. This means you have access to the latest room details, pricing, and availability, allowing you to make informed decisions for your stay.\r\n<img src=\"../img/hotelapp/rooms.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nAt \"Pristine Escapes,\" we take pride in delivering an all-encompassing hotel website where design, data, and user-focused features come together seamlessly. We invite you to explore our world of beautifully crafted experiences and start planning your next adventure with us today.', 'HTML & PHP', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Bootstrap Sass, PHP, Javascript', 'Yes', 'Responsive', '1500', '2023-08-01 14:50:25', 'hotelapp/productehotel.jpg', 1, 'sku04'),
(5, 'Codespace Project | POS System', 'POS System', 'http://www.studio81.info/websiteSamples/pos-system/', 'possystem/mainpage.jpg', 'possystem/products.jpg', 'possystem/cart.jpg', 'possystem/screenpos.jpg', 'possystem/sidebar.jpg', 'resume/Responsivedevice.jpg', '', 'Introducing our PHP Point of Sale (POS) System, designed with the user experience at the forefront. This versatile solution revolutionizes the retail process, offering a seamless way to add products, manage transactions, and facilitate payments.\r\n\r\nManaging your inventory is a breeze within our system. Add all your products effortlessly, including detailed descriptions, accurate pricing, and real-time quantity updates.\r\n\r\nOur system features an innovative sidebar, simplifying the process of adding products to your cart as you shop. This intuitive tool ensures you can monitor your selections in real-time, keeping you informed about your ongoing purchases.\r\n\r\n<img src=\"../img/possystem/sidebar.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nWhen you\'re ready to complete your purchase, our user-friendly interface presents two options: \"Confirm\" or \"Cancel.\" This step prioritizes your satisfaction, allowing you to review and modify your choices as needed.\r\n\r\nWe understand the importance of choice when it comes to payment. After confirming your order, you can select your preferred payment method - whether it\'s by card or cash. Flexibility and convenience are key aspects of our system.\r\n\r\n<img src=\"../img/possystem/cart.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nThe PHP POS System is designed to enhance the overall user experience, providing a smooth and efficient process from start to finish. Say goodbye to traditional checkout hassles and embrace the future of retail management with our dynamic system.', 'HTML & PHP', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Bootstrap, PHP', 'Yes', 'Not Responsive', '200', '2023-08-01 14:50:25', 'possystem/productpos.jpg', 1, 'sku05'),
(6, 'Codespace Project | To Do App', 'To Do App', 'http://www.studio81.info/websiteSamples/Todoapp/', 'todo/screentodo.jpg', 'todo/additem.jpg', 'todo/clearitem.jpg', 'todo/edititem.jpg', 'todo/removeditem.jpg', 'resume/Responsivedevice.jpg', 'resume/screenresume.jpg', 'The To Do list is a compact and practical project that serves as an ideal testing ground for anyone looking to enhance their JavaScript skills. At its core, this web application is designed with the user in mind, offering a hands-on experience to explore the world of task management and reminders. The project is built using the fundamental trio of web development languages: HTML, CSS, and JavaScript.\r\n\r\nIn \"User,\" the user takes center stage. This miniature project offers a range of functionalities, enabling users to interact with tasks and reminders in an intuitive and straightforward manner. The primary goal is to provide a practical platform for learning and skill refinement, making it an excellent choice for anyone looking to bolster their JavaScript expertise.\r\n\r\n<img src=\"../img/todo/additem.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nTask management lies at the heart of \"User.\" Within this application, users can seamlessly add tasks to their list. The input mechanism is designed to be user-friendly, making it easy to create and categorize tasks. This feature ensures that users can stay organized and efficient in managing their daily responsibilities.\r\n\r\nAdditionally, \"User\" introduces a reminder system that empowers users to stay on top of their commitments. Setting reminders for important tasks and events is a straightforward process, aiding in the maintenance of a structured schedule. This feature proves invaluable for users who need to remember and prioritize their responsibilities effectively.\r\n\r\nIn the dynamic landscape of task management, the ability to remove tasks that are no longer relevant is equally crucial. \"User\" simplifies this process, allowing users to promptly delete tasks with a straightforward click. This ensures that the task list remains relevant and easily manageable.\r\n\r\n<img src=\"../img/todo/removeditem.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nFor those moments when a fresh start is needed, \"User\" provides a \"Clear All\" feature. This function enables users to reset their task list swiftly, fostering a sense of accomplishment and renewed focus.\r\n\r\nBehind the scenes, \"User\" relies on the core web technologies that underpin modern web development. HTML provides the structural framework for the user interface, while CSS steps in to style the elements, ensuring an aesthetically pleasing and organized layout that enhances the overall user experience and interaction. JavaScript, as the heart and soul of \"User,\" breathes life into the project, powering the dynamic aspects of task management and reminder functionality.\r\n\r\n<img src=\"../img/todo/clearitem.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nIn essence, \"User\" serves as a dynamic playground where users can test, refine, and expand their JavaScript skills while simultaneously exploring the practical side of task and time management. It is an invitation to dive into the world of web development and coding prowess, offering a tangible and engaging way to learn and grow in the field.', 'HTML & Javascript', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Javascript', 'Yes', 'Not Responsive', '100', '2023-08-01 14:50:25', 'todo/producttoDO.jpg', 1, 'sku06'),
(7, 'Codespace Project | Calculator', 'Calculator', 'http://studio81.info/websiteSamples/Calculator/', 'calc/screencalc.jpg', 'calc/minus.jpg', 'calc/devide.jpg', 'calc/multiply.jpg', 'calc/plus.jpg', '', '', 'Creating a JavaScript calculator is often one of the first projects that newcomers to web development embark upon. This project serves as a fundamental stepping stone, providing invaluable insights into web development and JavaScript programming.\r\n\r\nAt its core, the project involves constructing a user-friendly interface where users can perform basic mathematical calculations. It comprises three main components: HTML, CSS, and JavaScript.\r\n\r\n<img src=\"../img/calc/devide.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nHTML forms the structural foundation of the calculator. It defines the layout, including buttons for numbers (0-9), mathematical operators (+, -, *, /), and a display area to present results. This structural outline establishes the framework for user interaction.\r\n\r\nCSS, the styling language, steps in to enhance the calculator\'s visual appeal and user experience. It\'s where designers apply styles to buttons, set color schemes, and ensure that the calculator\'s design is both aesthetically pleasing and functional. CSS adds the finishing touches that make the calculator engaging and user-friendly.\r\n\r\nThe heart and brains of the calculator reside in JavaScript. Here, you write the logic that powers its functionality. JavaScript is responsible for capturing user input when they click on buttons, performing calculations based on that input, and dynamically updating the display to reflect the results.\r\n\r\n<img src=\"../img/calc/minus.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nTo make the calculator interactive, you set up event listeners. These listeners detect user actions, such as button clicks, and trigger corresponding JavaScript functions. This interaction layer allows users to input numbers and operators seamlessly.\r\n\r\nEffective user input handling is paramount. JavaScript code must recognize which button the user clicked, append the selected digit or operator to the input string, and update the display in real-time. This ensures that the calculator responds intuitively to user actions.\r\n\r\nAt its core, the calculator\'s primary function is to perform mathematical operations accurately. JavaScript functions are implemented to execute these operations based on the user\'s input. Addition, subtraction, multiplication, division, and more are incorporated to guarantee precise calculations.\r\n\r\nError handling is another essential aspect of the project. The calculator must gracefully manage scenarios such as division by zero or invalid inputs. Informative error messages help guide users when they encounter issues.\r\n\r\n<img src=\"../img/calc/plus.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nA seamless and intuitive user experience is paramount. The arrangement of buttons, clear display of numbers and results, and responsive behavior contribute to a positive user interaction.\r\n\r\nThroughout the development process, rigorous testing and debugging are critical. Systematic evaluation of the calculator\'s performance, identification, and resolution of issues, and validation under various scenarios ensure that it functions reliably.\r\n\r\n\r\n\r\nIn essence, building a JavaScript calculator is a multifaceted endeavor that combines the power of HTML, CSS, and JavaScript to create a functional and user-friendly tool. This project is a foundational milestone for web developers, offering a hands-on introduction to web development and JavaScript programming.', 'HTML & Javacript', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Javascript', 'Yes', 'Responsive', '50', '2023-08-01 14:50:25', 'calc/productCalc.jpg', 1, 'sku07'),
(8, 'Codespace Project | User Registration', 'User Registration', 'http://studio81.info/websiteSamples/userreg/', 'userreg/userreg.jpg', 'userreg/userreg.jpg', 'userreg/userreg.jpg', 'userreg/userreg.jpg', 'userreg/userreg.jpg', 'userreg/userreg.jpg', 'userreg/userreg.jpg', 'In the realm of web development, a JavaScript project centered around user registration is a valuable exercise that allows you to apply and refine your JavaScript skills. This project typically involves the creation of a user-friendly web form that enables individuals to register by providing their personal information.\r\n\r\nAt the core of this project lies the user registration form. This form is designed to capture essential user data, including details such as their name, email address, username, and password. JavaScript plays a pivotal role in this phase, ensuring the validation of the input data. This validation process is critical to ensure that the user provides complete and accurate information during registration, enhancing the overall user experience.\r\n\r\n<img src=\"../img/userreg/userreg.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nOnce a user successfully completes the registration process by submitting the required information through the form, their data is dynamically displayed in a table. This table is usually positioned at the bottom of the page. JavaScript is responsible for updating this table in real-time, appending the newly registered user\'s information to the list. As a result, the table gradually populates with user data, creating a comprehensive record of registered users.\r\n\r\nOne of the advantages of this project is the flexibility it offers in terms of user registration. You can register as many users as you like, allowing you to explore various scenarios and test the project\'s functionality thoroughly. This feature promotes a hands-on learning experience, allowing you to experiment and become more proficient in JavaScript programming.\r\n\r\nMoreover, this project incorporates user management functionalities, such as the ability to remove users when necessary. JavaScript event listeners are typically set up to detect user actions, such as clicking a \"Remove\" button adjacent to a user\'s entry in the table. When a user is removed, JavaScript ensures that their corresponding row is deleted from the table, maintaining the user list\'s accuracy and relevance.\r\n\r\n<img src=\"../img/userreg/display.jpg\" alt=\"\" srcset=\"\" class=\"w-100 my-4\" />\r\n\r\nAdditionally, for convenience and user-friendliness, a \"Clear All\" button may be included in the project. Clicking this button triggers a JavaScript function that clears all user data from the table, effectively resetting it to its initial state. This feature provides an easy way to manage and maintain the user list, ensuring that it remains organized and manageable.\r\n\r\nIn essence, a JavaScript project focused on user registration is a valuable endeavor that allows you to hone your JavaScript skills while addressing essential aspects of web development, such as form validation, dynamic data display, user management, and interactivity. It serves as an excellent practice ground for aspiring web developers, offering hands-on experience in JavaScript programming and web development principles.', 'HTML & Javascript', 10, 'IE9, IE10, IE11, Firefox, Safari, Opera, Chrome, Edge', '1.0', 'PDF, PSD, Jpeg', 'HTML, CSS, Javascript', 'Yes', 'Not Responsive', '50', '2023-08-01 14:50:25', 'userreg/productregister.jpg', 1, 'sku08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pwd`, `email`, `created_at`) VALUES
(2, 'admin', '$2y$10$sqAfUFreIFhxSQBqM0qPJuXuiKINBTatJjZ.XSA46M0QgzLVSW.ee', 'admin@admin', '2023-09-05 12:46:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
