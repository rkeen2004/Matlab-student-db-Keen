classdef StudentDatabase
    properties
        Students % Array to hold the list of students
    end
    
    methods
        % Constructor to initialize the students array
        function obj = StudentDatabase()
            obj.Students = [];
        end
        
        % Method to add a student to the database
        function obj = addStudent(obj, student)
            obj.Students = [obj.Students, student];
        end
        
        % Method to find a student by ID
        function student = findStudentByID(obj, id)
            student = [];
            for i = 1:length(obj.Students)
                if obj.Students(i).ID == id
                    student = obj.Students(i);
                    break;
                end
            end
        end
        
        % Method to get a list of students by major
        function studentsByMajor = getStudentsByMajor(obj, major)
            studentsByMajor = [];
            for i = 1:length(obj.Students)
                if strcmp(obj.Students(i).Major, major)
                    studentsByMajor = [studentsByMajor, obj.Students(i)];
                end
            end
        end
        
        % Method to save the database to a .mat file
        function saveDatabase(obj, filename)
            save(filename, 'obj');
        end
        
        % Method to load the database from a .mat file
        function obj = loadDatabase(~, filename)
            loadedData = load(filename);
            obj = loadedData.obj;
        end
    end
end
