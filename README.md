# Mobile-App-Automation-Tests
This test suite is designed to automate the testing of the Mobile application. The tests focus on critical functionalities such as user login and navigation to a mini-app within the Mobile Super app. The tests are written using the Robot Framework with the AppiumLibrary, which allows for automated testing of Android applications.

## 1. Project Overview
# Mobile App Test Automation

This repository contains automated tests for the M-Pesa mobile application. The tests are written using Robot Framework and Appium, focusing on user login and navigation to mini-apps within the app.

## Features
- Automated login tests for valid and invalid PIN scenarios.
- Automated navigation to mini-apps within the M-Pesa app.


![image](https://github.com/user-attachments/assets/40fa56b7-01d3-4f5b-8dd6-3d99ffa8d2db)

![image](https://github.com/user-attachments/assets/0cd7767b-ff31-4886-8e11-afbc76042096)

## 2. Prerequisites

Before running the tests, ensure you have the following set up:

1. **Appium** - An open-source test automation framework for mobile apps.
2. **Robot Framework** - A generic open-source automation framework.
3. **Python** - The programming language used for scripting.
4. **Android SDK** - Required for Android device interactions.
5. **Java** - Required for Appium to run.

Make sure your environment meets these prerequisites:
- Java version: 8 or higher
- Android SDK version: 30 or higher
- Python version: 3.8 or higher
## 3. Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Enockodhis/Mobile-App-Tests-Documentation
   cd m-pesa-app-tests
   
   Install Python dependencies:  pip install -r requirements.txt
   
   Configure Appium: npm install -g appium

   Start Appium server: appium

2. Set up the Android emulator/device:

    Ensure that an Android emulator or physical device is connected and running.

3. Configure test variables:

    Update ./PageObject/Locators/Locators.py and ./PageObject/TestData/Testdata.py with your specific locator values and test data.

4. Create a directory for screenshots:

    mkdir Screenshots


### **4. Running Tests**

Explain how to execute the tests, including any command-line instructions or scripts.

```markdown
## Running Tests

To execute the test cases, use the following command:

```bash
robot -d results ./Tests/TS_001_PinLogin.robot
robot -d results ./Tests/TS_002_NavigateToMiniapp.robot

-d results specifies the directory where test results and logs will be stored.


## 5. Directory Structure

- `./Tests/`: Contains the test cases.
  - `TS_001_PinLogin.robot`: Test case for PIN login functionality.
  - `TS_002_NavigateToMiniapp.robot`: Test case for navigating to a mini-app.
- `./PageObject/Locators/`: Contains locator files for UI elements.
- `./PageObject/TestData/`: Contains test data files.
- `./Screenshots/`: Directory where screenshots are saved during tests.
- `requirements.txt`: File listing Python dependencies.


## 6. Troubleshooting

- **Appium server not starting**: Ensure that the correct version of Java is installed and that the environment variables are set properly.
- **Test failures due to locator issues**: Verify that the locators in `Locators.py` match the elements in the app.

For further assistance, consult the [Appium documentation](https://appium.io/docs/en/about-appium/intro/) or [Robot Framework documentation](https://robotframework.org/).


## 7.  Contributing

If you want to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your changes.
3. Make the necessary changes and commit them.
4. Open a pull request describing your changes.

We appreciate your contributions!


## 8. License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


## 9. Contact

For any questions or inquiries, please contact [enockodhiambo2@gmail.com].





   
