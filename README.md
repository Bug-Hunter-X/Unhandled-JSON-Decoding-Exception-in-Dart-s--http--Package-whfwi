# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications that use the `http` package to fetch JSON data. The code includes an example of an unhandled `FormatException` that may occur if `json.decode` encounters malformed JSON.

The `bug.dart` file shows the problematic code, while `bugSolution.dart` demonstrates a robust solution that handles potential `FormatException` exceptions during JSON decoding.

## Problem

The original code uses a `try-catch` block to handle exceptions during the network request but lacks specific handling for JSON decoding errors.  This leaves the application vulnerable to unexpected crashes or unhelpful error messages if the API returns invalid JSON.

## Solution

The solution addresses this by adding a specific `try-catch` block within the initial `try` block to catch `FormatException` exceptions. This ensures that the application gracefully handles malformed JSON responses, providing more informative error messages and preventing unexpected crashes.