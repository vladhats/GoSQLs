CREATE TABLE worker(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name)>= 2) ,
     birthday DATE CHECK (birthday BETWEEN'1900-01-01' AND CURRENT_DATE), 
     level ENUM ('Junior', 'Trainee', 'Middle', 'Senior'),
      salary INT CHECK( salary BETWEEN 100 AND 100000) );
CREATE TABLE client( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name)>=2) 
);   
CREATE TABLE project ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    client_id INT,
    start_date DATE NOT NULL,
    finish_date DATE NOT NULL
);
CREATE TABLE project_worker(
    project_id INT,
    worker_id INT,
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(worker_id) REFERENCES worker(id)
);