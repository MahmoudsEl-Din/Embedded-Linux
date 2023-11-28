#include <stdio.h>

// Function binary search
int binary_search(int arr[], int size, int target) {
    int left = 0, right = size - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (arr[mid] == target)
            return mid; // Element found, return index
        if (arr[mid] < target)
            left = mid + 1;
        else
            right = mid - 1;
    }
    return -1; // Element not found
}

int main() {
    int size, target;

    // Input array size
    printf("Hello, Please enter the size of the array: ");
    scanf("%d", &size);

    int arr[size]; // Declare an array of the specified size

    // Input array elements
    printf("Enter %d elements in ascending order:\n", size);
    for (int i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
    }

    // Input element to search
    printf("Enter the element to search: ");
    scanf("%d", &target);

    // Call binary_search function
    int result = binary_search(arr, size, target);

    // Print the result
    if (result != -1)
        printf("Here is the element found at index %d\n", result);
    else
        printf("Sorry, The element not found\n");

    return 0;
}
