package com.example;

/**
 * Java CI/CD Application
 * A simple application for demonstrating CI/CD pipeline with Jenkins, Docker, and Kubernetes
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello from Java CI/CD Pipeline!");
        System.out.println("This application was built by Jenkins!");
        System.out.println("Containerized with Docker!");
        System.out.println("Deployed to Kubernetes!");
    }
    
    /**
     * Simple method for testing
     */
    public String getMessage() {
        return "Java CI/CD Application is running!";
    }
}

