```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = json.decode(response.body);
        // Access data from jsonData
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle JSON decoding error, e.g., show an error to the user
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle network request errors
  }
}
```