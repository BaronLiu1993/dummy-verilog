#include <iostream>
using namespace std;

// Simple function to test
int add(int a, int b) {
    return a + b;
}

int main() {
    // Test case 1
    int result1 = add(2, 3);
    cout << "Test 1: add(2, 3) = " << result1 << " (expected: 5)" << endl;
    
    // Test case 2
    int result2 = add(10, 20);
    cout << "Test 2: add(10, 20) = " << result2 << " (expected: 30)" << endl;
    
    // Test case 3
    int result3 = add(-5, 5);
    cout << "Test 3: add(-5, 5) = " << result3 << " (expected: 0)" << endl;
    
    // Test case 4
    int result4 = add(0, 0);
    cout << "Test 4: add(0, 0) = " << result4 << " (expected: 0)" << endl;
    
    cout << "\nAll tests completed!" << endl;
    
    return 0;
}
