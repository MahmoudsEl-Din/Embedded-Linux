# Binary Search Implementation 

This project includes a C program that implements the binary search algorithm. Additionally, it explains how to move the binary file to a directory with sudo permissions and execute it from any location.

## Question 1: Implement Binary Search

### Implementation
1. Navigate to the directory where you want to create your C program.
 ```
 cd /path/to/your/directory
```

2. Use the vi editor to create a new C source file (e.g., binary_search.c).
```
vi binary_search.c
```

3. Implement the binary search algorithm inside the binary_search function in C program.

4. Save and exit vi by pressing "Esc" and then typing :wq and pressing "Enter."

### Compilation and Execution
1. Compile the C program using gcc:
```
gcc -o binary_search binary_search.c
```
2. Run the program:
```
./binary_search
```

## Question 2: Move Binary File and Explain Execution

### Moving the Binary File
1. To move the binary file to /usr/local/bin with sudo permissions, use the following command:
  ```
sudo mv binary_search /usr/local/bin/
  ```
2. Enter your sudo password if prompted.

### Executing the Binary from Any Location
1. After moving the binary, you can execute it from any working directory without specifying the full path.

2. This is possible because /usr/local/bin is included in the system's $PATH environment variable by default. The system searches for executables in directories listed in $PATH.

3. To verify, open a new terminal, navigate to a different directory, and run:
  ```
binary_search
  ```
4. The binary should execute successfully from any location.

## Author

- Mahmoud Shams El-Din
