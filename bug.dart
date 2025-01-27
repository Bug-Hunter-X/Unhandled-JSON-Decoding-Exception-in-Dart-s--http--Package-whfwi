```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = json.decode(response.body);
      // Access data from jsonData
    } else {
      // Handle error response
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error fetching data: $e');
    // This might need to be handled more gracefully in a production app
    // For example, show an error message to the user
  }
}
```