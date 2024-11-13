classdef Student
    properties
        ID       % Student ID
        Name     % Student Name
        Age      % Student Age
        GPA      % Grade Point Average
        Major    % Major of Study
    end
    
    methods
        % Constructor to initialize properties
        function obj = Student(id, name, age, gpa, major)
            if nargin > 0
                obj.ID = id;
                obj.Name = name;
                obj.Age = age;
                obj.GPA = gpa;
                obj.Major = major;
            end
        end
        
        % Method to display student information
        function displayInfo(obj)
            disp(['Student ID: ', num2str(obj.ID)]);
            disp(['Name: ', obj.Name]);
            disp(['Age: ', num2str(obj.Age)]);
            disp(['GPA: ', num2str(obj.GPA)]);
            disp(['Major: ', obj.Major]);
        end
        
        % Method to update GPA
        function obj = updateGPA(obj, newGPA)
            obj.GPA = newGPA;
        end
    end
end
