CREATE TABLE uni(
   uni_id INT PRIMARY KEY,
   uni_name VARCHAR(255) NOT NULL,
   phone VARCHAR(25)NOT NULL,
   email VARCHAR(255)NOT NULL,
   street VARCHAR(255)NOT NULL,
   city VARCHAR(255)NOT NULL,
   country VARCHAR(255)NOT NULL
);

CREATE TABLE students(
  students_id INT PRIMARY KEY,
  students_name VARCHAR(20) NOT NULL,
  students_lastname VARCHAR(20)NOT NULL,
  students_status VARCHAR(50)NOT NULL,
  birth_date VARCHAR(50)NOT NULL,
  gender VARCHAR(50)NOT NULL,
  address VARCHAR(255)NOT NULL,
  second_address VARCHAR(255),
  flat_number INT,
  email VARCHAR(255) NOT NULL UNIQUE,
  students_transaction VARCHAR(255),
  uni_id INT NOT NULL,
  FOREIGN KEY(uni_id)
  REFERENCES uni(uni_id)
);

 
 
CREATE TABLE assistant_manager(
  assistant_manager_id INT PRIMARY KEY,
  assistant_manager_name VARCHAR(255)NOT NULL,
  assistant_manager_lastname VARCHAR(255)NOT NULL,
  gender VARCHAR(255)NOT NULL,
 address VARCHAR(255)NOT NULL,
  email VARCHAR(255)NOT NULL
);  
   CREATE TABLE courses(
    id INT,
    PRIMARY KEY(id),
    courses_name VARCHAR(255)NOT NULL,
    courses_price VARCHAR(255)NOT NULL,
    duration VARCHAR(255)
);
   CREATE TABLE subjects(
    subjects_id INT NOT NULL,
    subjects_name VARCHAR(255)NOT NULL,
    date_time VARCHAR(255)NOT NULL,
    PRIMARY KEY(subjects_id),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id)
);
 CREATE TABLE lecturer(
  lecturer_id INT,
  lecturer_name VARCHAR(255) NOT NULL,
  lecturer_lastname VARCHAR(255)NOT NULL,
  birth_date VARCHAR(255)NOT NULL,
  gender VARCHAR(255)NOT NULL,
  address VARCHAR(255)NOT NULL,
  second_address VARCHAR(255)NOT NULL,
  flat_number INT,
  email VARCHAR(255) NOT NULL UNIQUE,
  account_number VARCHAR(255),
  rank VARCHAR(255),
  PRIMARY KEY (lecturer_id),
  subjects_id INT NOT NULL,
  FOREIGN KEY (subjects_id) REFERENCES subjects(subjects_id)
);

CREATE TABLE transaction(
     trans_id INT,
     amount VARCHAR(255)NOT NULL,
     trans_date datetime,
     students_id INT NOT NULL,
    FOREIGN KEY(students_id)
    REFERENCES students(students_id)
 );

 INSERT INTO uni
  (uni_id,uni_name,phone,email,street,city,country)
VALUES("1","Development","555010101","Development@gmail.com","Rustaveli","Tbilisi","Georgia");

  INSERT INTO students
(students_id,students_name,students_lastname,students_status,birth_date,gender,address,second_address,flat_number,email,students_transaction,uni_id)
VALUES("100","Nini","Artmeladze","Student of web development","05/02/1995","Female","Batumi","Gorgiladze","24","n.artmeladze@outlook.com","payable","1");

INSERT INTO students
(students_id,students_name,students_lastname,students_status,birth_date,gender,address,second_address,flat_number,email,students_transaction,uni_id)
VALUES("101","Khatia","Ormotsadze","Student of programing laguages","10/07/1999","Female","Tbilisi","Gorgasali st","23","khatiaormotsadze@gmail.com","payed","1");
       
INSERT INTO students
(students_id,students_name,students_lastname,students_status,birth_date,gender,address,second_address,flat_number,email,students_transaction,uni_id)
VALUES("102","Nutsa","Gelashvili","Student of design","01/03/1992","female","Tbilisi","vazhaphshavela","22","nucagelashvili@gmail.com","payed","1");

INSERT INTO students
(students_id,students_name,students_lastname,students_status,birth_date,gender,address,second_address,flat_number,email,students_transaction,uni_id)
VALUES("103","Anna","Antia","Student of game development","01/05/1996","Female","Tbilisi","vazhaphshavela","21","anitaantia@gmail.com","payable","1");
INSERT INTO courses
   (id,courses_name,courses_price,duration)
VALUES("51","Web Development","1000 Gel","8 month");  

INSERT INTO courses
   (id,courses_name,courses_price,duration)
VALUES("52","Data Science","1000 Gel","8 month");

INSERT INTO courses
   (id,courses_name,courses_price,duration)
VALUES("53","Mobile Development","1000 gel","8 month");

INSERT INTO courses
   (id,courses_name,courses_price,duration)
VALUES("54","Programming Languages","1000 gel","8 month");

INSERT INTO courses
   (id,courses_name,courses_price,duration)
VALUES("55","Game Development","1000 gel","8 month");

INSERT INTO courses
   (id,courses_name,courses_price,duration)
VALUES("56","Design","1000 gel","8 month");  
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("10","HTML","monday 19:00 PM","51");

INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("11","CSS","friday 19:00 PM","51");

INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("12","Dat Analysis","friday 19:00 PM","52");

INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("13","Statistics","friday 19:00 PM","52");
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("14","React Native","friday 19:00 PM","53");
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("15","IOS Development","friday 19:00 PM","53");
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("16","Java","friday 19:00 PM","54");
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("17","Python","friday 19:00 PM","54");
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("18","Game Development Fundamentals","friday 19:00 PM","55");
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("19","Unity","friday 19:00 PM","55");
INSERT INTO subjects
(subjects_id,subjects_name,date_time,course_id)
VALUES("20","Web design","friday 19:00 PM","56");


INSERT INTO lecturer
(lecturer_id,lecturer_name,lecturer_lastname,birth_date,gender,address,second_address,flat_number,email,account_number,rank,subjects_id)
VALUES("01","lika","Dolidze","01/05/1996","female","tbilisi","vazhaphshavela","21","likadolidze@gmail.com","GE10GB01000000003","senior",10);
INSERT INTO lecturer
(lecturer_id,lecturer_name,lecturer_lastname,birth_date,gender,address,second_address,flat_number,email,account_number,rank,subjects_id)
VALUES("02","Nika","mchedlidze","01/05/2003","male","kutaisi","vazhaphshavela","20","nikamchedlidze@gmail.com","GE10GB01000000002","middle",11);
INSERT INTO lecturer
(lecturer_id,lecturer_name,lecturer_lastname,birth_date,gender,address,second_address,flat_number,email,account_number,rank,subjects_id)
VALUES("03","Anna","Machavariani","08/08/1995","Female","Tbilisi","Pekini st","20","Annamachavariani@gmail.com","GE10GB01000000001","senior",12);
INSERT INTO lecturer
(lecturer_id,lecturer_name,lecturer_lastname,birth_date,gender,address,second_address,flat_number,email,account_number,rank,subjects_id)
VALUES("04","Giorgi","Dadiani","08/08/1995","Female","Tbilisi","Pekini st","20","giorgidadiani@gmail.com","GE10GB01000000005","senior",13);

INSERT INTO assistant_manager
(assistant_manager_id,assistant_manager_name,assistant_manager_lastname,gender,address,email)
VALUES("20","Ani","Jiqia","female","tbilisi","anijiqia@gmail.com");
INSERT INTO transaction
(trans_id,amount,trans_date,students_id)
VALUES("01","1000 GEL","2022:09:01:12:00","101");

INSERT INTO transaction
(trans_id,amount,trans_date,students_id)
VALUES("02","1000 GEL","2022:09:01:13:00","102");