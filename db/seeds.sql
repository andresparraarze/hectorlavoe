USE em_db;

INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Engineering");
INSERT INTO department (name)
VALUES ("Finance");
INSERT INTO department (name)
VALUES ("Legal");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 125000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Juan", "Lopez", 1, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Oyku", "Guresci", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Diego", "Carvalho", 5, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Enrique", "Werner", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Dmytro", "Yarosh", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Camila", "Rico", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ramiro", "Galindo", 4, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jose Carlos", "Ortuño", 1, 2);