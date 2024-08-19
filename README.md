# Mobile App Automation Test Suite

## 1. Overview
This test suite is designed to automate the testing of the M-Pesa mobile application. The tests focus on critical functionalities such as user login and navigation to a mini-app within the M-Pesa app. The tests are written using the Robot Framework with the AppiumLibrary, which allows for automated testing of Android applications.

## 2. Setup and Configuration

### Libraries:
- **AppiumLibrary**: Facilitates interaction with the mobile app using the Appium framework.

### Variables:
- **${TIMEOUT}**: Set to 30 seconds, this defines the maximum time to wait for elements to appear.
- **${TIMEOUT2}**: Set to 120 seconds, this is used for extended waits when necessary.
- **${SCREENSHOT_DIR}**: Specifies the directory where screenshots are saved during the tests.

### Page Objects:
The locators and test data are managed in separate Python files (`Locators.py` and `Testdata.py`) to ensure the maintainability and reusability of the test scripts.

## 3. Test Cases

### TS_001_PinLogin
**Objective:**
To verify that the user can log in to the M-Pesa app using a valid PIN and that the app properly handles invalid PIN entries.

**Steps:**
1. **Open the M-Pesa App:**
   - The app is launched using Appium's `Open Application` keyword with necessary capabilities such as platform name, device name, app package, and activity.
2. **Verify Sign-In Page:**
   - Wait until the sign-in button is visible, indicating that the sign-in page has loaded. Capture a screenshot to document the page state.
3. **Invalid PIN Entry:**
   - Input an invalid PIN and verify that the app prevents the user from logging in. A screenshot is taken after entering the PIN and after the prevention message appears.
4. **Correct PIN Entry:**
   - Input the correct PIN, ensuring that each digit is clicked in sequence using the `Input PIN` keyword. Once logged in successfully, capture a screenshot of the home page.

**Expected Outcome:**
- The user should be prompted with an error notification for an incorrect PIN.
- Upon entering the correct PIN, the user should be successfully logged in and redirected to the home page.

### TS_002_NavigateToMiniapp
**Objective:**
To verify that the user can navigate to a specific mini-app within the M-Pesa application.

**Steps:**
1. **Access Services Section:**
   - Ensure the services section is visible and clickable. A screenshot is captured once the services section is visible.
2. **Search for Mini-App:**
   - After clicking on the services section and then the search button, enter the name of the mini-app. Screenshots are taken after entering the search term and when the search results appear.
3. **Navigate to Mini-App:**
   - Click on the desired mini-app from the search results and verify navigation to the mini-app's home page. Capture a screenshot after the mini-app opens.

**Expected Outcome:**
- The user should be able to see and select the mini-app from the search results and navigate to its home page successfully.

## 4. Additional Notes

### Error Handling:
The test cases include waiting for specific elements to ensure that actions are only taken when the UI is ready, reducing the chances of flakiness in tests.

### Screenshots:
Screenshots are captured at key points in each test case to document the UI state, which helps in verifying that the tests are functioning as expected and provides visual evidence for test reports.

### Reusability:
The use of custom keywords like `Input PIN` ensures that the test steps are modular and reusable, simplifying maintenance and updates.
