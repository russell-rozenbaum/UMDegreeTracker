#include "driver.hpp"

// Function to read degree data from file
void readDegreeData(const std::string& filename, std::unordered_map<std::string, Degree>& degrees) {
    // Implementation here
}

// Function to process student input
void processStudentInput(const std::vector<Course>& courses, const std::unordered_map<std::string, Degree>& degrees) {
    // Implementation here
}

int main() {
    std::unordered_map<std::string, Degree> degrees;
    readDegreeData("degrees.txt", degrees);

    // TODO: Implement web interface integration
    
    return 0;
}