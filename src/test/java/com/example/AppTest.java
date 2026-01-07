package com.example;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.DisplayName;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Unit tests for the Java CI/CD Application
 */
class AppTest {
    
    @Test
    @DisplayName("Test App message")
    void testGetMessage() {
        App app = new App();
        String message = app.getMessage();
        assertNotNull(message);
        assertTrue(message.contains("Java CI/CD Application"));
    }
    
    @Test
    @DisplayName("Test App instantiation")
    void testAppInstantiation() {
        App app = new App();
        assertNotNull(app);
    }
}

