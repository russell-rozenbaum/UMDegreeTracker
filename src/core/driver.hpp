#ifndef DRIVER_HPP
#define DRIVER_HPP

#include <string>
#include <vector>
#include <iostream>
#include <fstream>
#include <unordered_map>

struct Course {
    std::string name;
    std::string grade;
    int credits;
};

struct Degree {
    std::string name;
    std::vector<std::string> requirements;
    int totalCredits;
};

void readDegreeData(const std::string& filename, std::unordered_map<std::string, Degree>& degrees);
void processStudentInput(const std::vector<Course>& courses, const std::unordered_map<std::string, Degree>& degrees);

#endif // DRIVER_HPP