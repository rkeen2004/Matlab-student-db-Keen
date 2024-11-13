function visualizeData(studentDB)
    % Extract data from the student database
    GPAs = arrayfun(@(s) s.GPA, studentDB.Students);
    ages = arrayfun(@(s) s.Age, studentDB.Students);
    majors = arrayfun(@(s) s.Major, studentDB.Students, 'UniformOutput', false);
    
    % 1. GPA Distribution Histogram
    figure;
    histogram(GPAs, 10);
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Number of Students');
    
    % 2. Average GPA by Major
    uniqueMajors = unique(majors);
    avgGPAByMajor = zeros(length(uniqueMajors), 1);
    for i = 1:length(uniqueMajors)
        majorStudents = GPAs(strcmp(majors, uniqueMajors{i}));
        avgGPAByMajor(i) = mean(majorStudents);
    end
    
    figure;
    bar(avgGPAByMajor);
    set(gca, 'XTickLabel', uniqueMajors, 'XTick', 1:length(uniqueMajors));
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
    
    % 3. Age Distribution
    figure;
    histogram(ages, 10);
    title('Age Distribution');
    xlabel('Age');
    ylabel('Number of Students');
end


