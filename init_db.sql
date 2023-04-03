CREATE TABLE worker(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(1000) VARCHAR(1000) CHECK (LENGTH(name)>= 2) NOT NULL,
     birthday DATE CHECK (birthday>'1900-01-01'), 
     level ENUM ('Junior', 'Trainee', 'Middle', 'Senior'),
      salary INT CHECK( salary BETWEEN 100 AND 100000) );
CREATE TABLE client( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(1000) CHECK (LENGTH(name)>=2) NOT NULL
);   
CREATE TABLE project ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    client_id INT,
    start_date DATE NOT NULL,
    finish_date DATE NOT NULL
);
CREATE TABLE project_worker(
    project_id INT,
    worker_id,
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(worker_id) REFERENCES worker(id)
);