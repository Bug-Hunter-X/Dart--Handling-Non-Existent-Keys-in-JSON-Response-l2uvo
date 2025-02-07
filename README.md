# Dart: Handling Non-Existent Keys in JSON Response

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a key that does not exist.  This can lead to runtime exceptions if not carefully handled. The example shows how to safely access JSON data and prevent unexpected crashes. 

## The Problem
The `bug.dart` file contains code that attempts to access a key ('nonExistentKey') which may not be present in the JSON response. If the key is missing, a runtime exception occurs.

## The Solution
The `bugSolution.dart` file provides a solution by adding a check to verify the key's existence before attempting to access it, thus preventing the exception.