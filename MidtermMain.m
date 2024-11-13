% Create the StudentDatabase object
db = StudentDatabase();

% Add sample students
student1 = Student(1, 'Taha', 20, 3.9, 'Computer Science');
student2 = Student(2, 'Bob', 22, 3.7, 'Mechanical Engineering');
student3 = Student(3, 'Charlie', 21, 3.8, 'History');
student4 = Student(4, 'Dominic', 23, 3.6, 'Math');

db = db.addStudent(student1);
db = db.addStudent(student2);
db = db.addStudent(student3);
db = db.addStudent(student4);

% Save the database to a file
db.saveDatabase('studentDB.mat');

% Load the database from a file
loadedDB = StudentDatabase();
loadedDB = loadedDB.loadDatabase('studentDB.mat');

% Perform a search by student ID
searchResult = loadedDB.findStudentByID(2);
if ~isempty(searchResult)
    searchResult.displayInfo();
else
    disp('Student not found.');
end

% Get list of students by major
csStudents = loadedDB.getStudentsByMajor('Computer Science');
disp('Computer Science Students:');
for i = 1:length(csStudents)
    csStudents(i).displayInfo();
end

% Generate data visualizations
visualizeData(loadedDB);
