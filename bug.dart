```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing the first element directly without checking the list length
      final String data = jsonData[0]['value']; // This will throw an error if the list is empty!
      print('Data: $data');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // This will only catch the network error, not the index out of range exception
  }
}
```