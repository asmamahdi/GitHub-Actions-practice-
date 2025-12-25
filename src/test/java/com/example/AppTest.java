package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class AppTest {

    // ============================================
    // TESTS FOR add() METHOD
    // ============================================
    
    @Test
    public void testAddPositiveNumbers() {
        // Unit Test: Test adding two positive numbers
        int result = App.add(5, 3);
        assertEquals(8, result, "5 + 3 should equal 8");
    }
    
    @Test
    public void testAddNegativeNumbers() {
        // Unit Test: Test adding two negative numbers
        int result = App.add(-5, -3);
        assertEquals(-8, result, "-5 + (-3) should equal -8");
    }
    
    @Test
    public void testAddPositiveAndNegative() {
        // Unit Test: Test adding positive and negative numbers
        int result = App.add(10, -3);
        assertEquals(7, result, "10 + (-3) should equal 7");
    }
    
    @Test
    public void testAddWithZero() {
        // Edge Case Test: Adding zero should return the other number
        int result1 = App.add(5, 0);
        assertEquals(5, result1, "5 + 0 should equal 5");
        
        int result2 = App.add(0, 7);
        assertEquals(7, result2, "0 + 7 should equal 7");
        
        int result3 = App.add(0, 0);
        assertEquals(0, result3, "0 + 0 should equal 0");
    }
    
    @Test
    public void testAddLargeNumbers() {
        // Boundary Test: Test with large numbers
        int result = App.add(1000000, 2000000);
        assertEquals(3000000, result, "Adding large numbers should work correctly");
    }

    // ============================================
    // TESTS FOR multiply() METHOD
    // ============================================
    
    @Test
    public void testMultiplyPositiveNumbers() {
        // Unit Test: Test multiplying two positive numbers
        int result = App.multiply(5, 3);
        assertEquals(15, result, "5 * 3 should equal 15");
    }
    
    @Test
    public void testMultiplyNegativeNumbers() {
        // Unit Test: Test multiplying two negative numbers (result is positive)
        int result = App.multiply(-5, -3);
        assertEquals(15, result, "(-5) * (-3) should equal 15 (negative * negative = positive)");
    }
    
    @Test
    public void testMultiplyPositiveAndNegative() {
        // Unit Test: Test multiplying positive and negative (result is negative)
        int result = App.multiply(5, -3);
        assertEquals(-15, result, "5 * (-3) should equal -15 (positive * negative = negative)");
    }
    
    @Test
    public void testMultiplyWithZero() {
        // Edge Case Test: Multiplying by zero should always return zero
        int result1 = App.multiply(5, 0);
        assertEquals(0, result1, "5 * 0 should equal 0");
        
        int result2 = App.multiply(0, 7);
        assertEquals(0, result2, "0 * 7 should equal 0");
        
        int result3 = App.multiply(0, 0);
        assertEquals(0, result3, "0 * 0 should equal 0");
    }
    
    @Test
    public void testMultiplyWithOne() {
        // Edge Case Test: Multiplying by one should return the other number
        int result1 = App.multiply(5, 1);
        assertEquals(5, result1, "5 * 1 should equal 5");
        
        int result2 = App.multiply(1, 7);
        assertEquals(7, result2, "1 * 7 should equal 7");
    }
    
    @Test
    public void testMultiplyLargeNumbers() {
        // Boundary Test: Test with larger numbers
        int result = App.multiply(1000, 2000);
        assertEquals(2000000, result, "Multiplying large numbers should work correctly");
    }

    // ============================================
    // TESTS FOR isPositive() METHOD
    // ============================================
    
    @Test
    public void testIsPositiveWithPositiveNumber() {
        // Unit Test: Positive numbers should return true
        assertTrue(App.isPositive(5), "5 is positive, should return true");
        assertTrue(App.isPositive(1), "1 is positive, should return true");
        assertTrue(App.isPositive(100), "100 is positive, should return true");
    }
    
    @Test
    public void testIsPositiveWithNegativeNumber() {
        // Unit Test: Negative numbers should return false
        assertFalse(App.isPositive(-5), "-5 is negative, should return false");
        assertFalse(App.isPositive(-1), "-1 is negative, should return false");
        assertFalse(App.isPositive(-100), "-100 is negative, should return false");
    }
    
    @Test
    public void testIsPositiveWithZero() {
        // Edge Case Test: Zero is not positive (should return false)
        assertFalse(App.isPositive(0), "0 is not positive, should return false");
    }
    
    @Test
    public void testIsPositiveBoundaryCases() {
        // Boundary Test: Test values just above and below zero
        assertFalse(App.isPositive(-1), "-1 is not positive");
        assertFalse(App.isPositive(0), "0 is not positive");
        assertTrue(App.isPositive(1), "1 is positive");
    }

    // ============================================
    // INTEGRATION TEST: Testing multiple methods together
    // ============================================
    
    @Test
    public void testIntegrationAddAndMultiply() {
        // Integration Test: Use add() result in multiply()
        int sum = App.add(3, 2);        // sum = 5
        int product = App.multiply(sum, 4);  // product = 5 * 4 = 20
        assertEquals(20, product, "Adding 3+2=5, then multiplying 5*4 should equal 20");
    }
    
    @Test
    public void testIntegrationCompleteWorkflow() {
        // Integration Test: Test a complete workflow using all methods
        int num1 = 10;
        int num2 = 5;
        
        // Step 1: Add numbers
        int sum = App.add(num1, num2);  // 15
        
        // Step 2: Check if sum is positive
        boolean isPositive = App.isPositive(sum);  // true
        
        // Step 3: If positive, multiply by 2
        assertTrue(isPositive, "Sum should be positive");
        int result = App.multiply(sum, 2);  // 30
        
        assertEquals(30, result, "Complete workflow: (10+5)*2 should equal 30");
    }

    // ============================================
    // ORIGINAL BASIC TESTS (keeping these)
    // ============================================
    
    @Test
    public void testAppExists() {
        // Test that App class exists and can be accessed
        assertNotNull(App.class, "App class should exist");
    }
    
    @Test
    public void testAppHasMainMethod() {
        // Test that App class has a main method
        // This test verifies the main method exists
        assertTrue(true, "Main method should exist");
    }
}
