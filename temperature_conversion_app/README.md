# temperature_conversion_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Temperature Conversion App Welcome! 
This is a simple yet elegant Flutter mobile application that allows users to convert temperatures between Celsius and Fahrenheit. It's designed with usability and clarity in mind, featuring a user-friendly UI that feels familiar and comfortable and built to showcase solid use of Flutter widgets and state management. 

App Features - 
Converts temperatures from Celsius to Fahrenheit and Fahrenheit to Celsius
Only one conversion option can be selected at a time 
Converted values are accurate and displayed to two decimal places
Keeps a conversion history showing the input and output 
Works seamlessly in both portrait and landscape orientations
Clean, simple UI with spacing and layout designed for clarity
 How It Works 
1. User Input- The user enters a temperature value using a `TextField`. 
2. Conversion Selection- The user selects the conversion type via `RadioListTile`, which allows only one option to be selected at a time. 
3. Conversion Execution- On tapping the Convert button (`ElevatedButton`), the app runs the correct conversion formula: - Celsius to Fahrenheit`: `°F = °C × 9/5 + 32`
   - `Fahrenheit to Celsius`: `°C = (°F - 32) × 5/9` 
4. Results Displayed- The result is shown below the input and added to the conversion history.
 Widgets and Architecture
 This project is built with the following structure: - 
`main.dart`: Initializes the app and UI scaffold. - `widgets/history_list.dart`: A custom widget that displays the history of conversions in a `ListView.
Key Widgets Used - 
MaterialApp`, `Scaffold`, `AppBar` - `TextField`  for user input - `RadioListTile` for selecting the conversion type - `
ElevatedButton` 
 to trigger the conversion - `
Text -to display the result and labels - `ListView`-to show conversion history - `
Padding,SizedBox`, `Column`, `Row` -for clean layout 
Getting Started 
To run the app locally: 
1. **Clone the repo** ```bash git clone https://github.com/your-username/temperature-conversion-app.git cd temperature-conversion-app


