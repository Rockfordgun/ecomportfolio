CREATE TABLE projects(
	id INT (11) NOT NULL AUTO_INCREMENT,
   	name VARCHAR(200) NOT NULL,
    
    imageBanner VARCHAR(255) NOT NULL,
    carouselImage1 VARCHAR(255) NOT NULL,
    carouselImage2 VARCHAR(255) NOT NULL,
    carouselImage3 VARCHAR(255) NOT NULL,
    carouselImage4 VARCHAR(255) NOT NULL,
    responsiveExample VARCHAR(255) NOT NULL,
    xdBackbone VARCHAR(255) NOT NULL,
    
    description text() NOT NULL,
   
    compatibility VARCHAR(255) NOT NULL,
     version VARCHAR(255) NOT NULL,
      files VARCHAR(255) NOT NULL,
       language VARCHAR(255) NOT NULL,
        readme VARCHAR(255) NOT NULL,
         layout VARCHAR(255) NOT NULL,

     price VARCHAR(255) NOT NULL,

        
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIME,
    PRIMARY KEY (id)
);