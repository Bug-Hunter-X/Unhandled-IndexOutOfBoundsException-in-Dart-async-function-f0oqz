# Unhandled IndexOutOfBoundsException in Dart Async Function

This repository demonstrates a common error in Dart asynchronous programming: failing to handle potential `IndexOutOfBoundsException` when accessing elements in a list received from an API response.

The `bug.dart` file contains code that fetches JSON data, but doesn't properly check for empty responses before accessing elements. This leads to a runtime exception if the API returns an empty list.

The solution is provided in `bugSolution.dart`, demonstrating how to properly check for list emptiness and handle the case gracefully.