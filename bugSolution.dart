```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if the key exists before accessing it
      if (jsonData.containsKey('nonExistentKey')) {
        final value = jsonData['nonExistentKey'];
        print(value);
      } else {
        print('Key "nonExistentKey" not found in JSON response');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```