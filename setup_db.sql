-- ***************************************************
-- Grade Tracker App Database Schema Creation Script
-- Contains the creation of required tables
-- And the relational attributes used for the schema
-- ***************************************************
SET AUTOCOMMIT OFF;
SET TRANSACTION READ WRITE;

-- Table creation for the schools attended currently and previously
CREATE TABLE school (
    scID NUMBER PRIMARY KEY,
    scName VARCHAR2(100) NOT NULL,
    scAddress VARCHAR2(100)
);
SAVEPOINT scTable;

-- Table creation for the semesters at any given school
CREATE TABLE semester (
    seID NUMBER PRIMARY KEY,
    seSchool NUMBER,
    seSemNumber NUMBER NOT NULL,
    seStartDate DATE NOT NULL,
    seEndDate DATE NOT NULL,
    FOREIGN KEY (seSchool) REFERENCES school(scID)
);
SAVEPOINT seTable;

-- Table creation for the subjects of any given semester
CREATE TABLE subject (
    suID NUMBER PRIMARY KEY,
    suName VARCHAR2(100) NOT NULL,
    suCode VARCHAR2(100) NOT NULL,
    suSemester NUMBER,
    suSchool NUMBER,
    FOREIGN KEY (suSemester) REFERENCES semester(seID),
    FOREIGN KEY (suSchool) REFERENCES school(scID),
    CONSTRAINT sub_code_ck CHECK (LENGTH(suCode) = 6)
);
SAVEPOINT suTable;

-- Table creation for the grade sheet which contains individual grades
-- Grades are linked by subject only, which is in-turn linked to school and semesters
CREATE TABLE gradeSheet (
    gsID NUMBER PRIMARY KEY,
    gsTaskName VARCHAR2(100) NOT NULL,
    gsMark NUMBER,
    gsWeight FLOAT NOT NULL,
    gsSubject NUMBER,
    FOREIGN KEY (gsSubject) REFERENCES subject(suID),
    CONSTRAINT grade_ck CHECK (gsMark IS NULL OR (gsMark >= 0 AND gsMark <= 100)),
    CONSTRAINT weight_ck CHECK (gsWeight >= 0 AND gsWeight <= 1)
);
SAVEPOINT gsTable;
COMMIT;
