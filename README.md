# RNDR_TCPIP_AC
RNDR TCP/IP Auto Clear Error Dialog
# README: AutoHotkey Script to Clear TCP/IP Error Dialogs from RNDR Client

## Overview

This AutoHotkey script is designed to automatically close TCP/IP error dialogs caused by the RNDR Client, specifically targeting the following error dialogs:
- `TCPSVCS.EXE - Application Error`
- `JUCEWindow: TCPSVCS.EXE - Application Error`

The script monitors for these dialogs and dismisses them by simulating the `Enter` key press. It also logs each occurrence to a text file for record-keeping.

---

## Features

- **Automatic Error Dialog Handling**: Detects and dismisses specific error dialogs without user intervention.
- **Error Logging**: Logs the date and time of each error dialog dismissal to a log file located in the `Documents` folder.

---

## Requirements

- **AutoHotkey Version**: This script is compatible with AutoHotkey v1.1.
- **Operating System**: Windows (any version supported by AutoHotkey).

---

## Installation and Usage

1. **Download AutoHotkey**:
   - If you don't already have AutoHotkey installed, download it from [https://www.autohotkey.com/](https://www.autohotkey.com/).

2. **Save the Script**:
   - Copy the script code into a text editor and save it with a `.ahk` extension (e.g., `ClearRNDRDialogs.ahk`).

3. **Run the Script**:
   - Double-click the `.ahk` file to start the script. It will run in the background, periodically checking for the error dialogs.

4. **Compile the Script (Optional)**:
   - For a more seamless experience, you can compile the script into an executable file:
     1. Right-click on the script file and select "Compile Script" (requires AutoHotkey installed).
     2. This will create a `.exe` version of the script (e.g., `ClearRNDRDialogs.exe`).
   - Place the compiled `.exe` file into the system's Startup folder to ensure it runs automatically at system boot:
     - Press `Win + R`, type `shell:startup`, and hit Enter.
     - Copy the compiled `.exe` file into the Startup folder.

5. **Log File**:
   - The script logs each dialog clearance with a timestamp in a file named `ErrorDialogLog.txt`, located in the `Documents` folder.

---

## How It Works

1. **Persistent Timer**: 
   - The script uses a timer (`SetTimer`) to check for the error dialogs every second.

2. **Dialog Detection**: 
   - Detects if the following windows exist:
     - `TCPSVCS.EXE - Application Error`
     - `JUCEWindow: TCPSVCS.EXE - Application Error`

3. **Dialog Dismissal**:
   - Brings the detected dialog to the foreground and simulates pressing the `Enter` key to close it.

4. **Error Logging**:
   - Logs the timestamp and the type of error dialog cleared to `ErrorDialogLog.txt`.

---

## Customization

- **Adjust Timer Frequency**:
   - Modify the `SetTimer` interval to check more or less frequently (default is every 1000ms or 1 second).

- **Change Log File Path**:
   - Update the `FileAppend` path to log to a different location if needed.

---

## Disclaimer

This script is provided as-is, without warranty of any kind. Use it at your own risk.
