# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++17 -Wall -Wextra -pedantic

# Directories
SRC_DIR = src/core
BUILD_DIR = build
WEB_DIR = src/web

# Source files
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# Executable name
EXECUTABLE = $(BUILD_DIR)/degree_tracker

# Default target
all: $(EXECUTABLE)

# Rule to create build directory
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Compile source files into object files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Link object files into executable
$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Clean build files
clean:
	rm -rf $(BUILD_DIR)

# Run the program
serve: $(EXECUTABLE)
	@echo "Starting the Degree Tracker..."
	@$(EXECUTABLE)

# Phony targets
.PHONY: all clean serve