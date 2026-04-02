# Picnic Day 112 Acceptance Generator

This project automates the generation of acceptance PDF documents using **Typst** and a **PowerShell** script. It reads data from a CSV file and injects it into a Typst template.

## ⚠️ Compatibility Note

* **Operating System:** This script (`generate.ps1`) is designed for **Windows** using PowerShell.
* **Other Systems:** If you are using macOS or Linux, you will need to convert the `.ps1` script to a Bash (`.sh`) or Python script to handle the loop and file system commands.

---

## 🚀 Setup & Installation

### 1. Install Typst

Typst is the engine that converts your template into a PDF.

* **Windows (Winget):** Open Terminal and run: `winget install --id Typst.Typst`
* **Direct Download:** Grab the latest binary from the [Typst GitHub Releases](https://github.com/typst/typst/releases).
* **Verification:** Run `typst --version` in your terminal to ensure it's installed.

### 2. Prepare the Data (Google Sheets)

The script relies on a file named `data.csv` in the same folder.

1. Open your specific **Google Sheet**.
2. Ensure your column headers match exactly: `Name`, `Location`, `Start`, `End`, `Duration`, and `Call`.
3. Go to **File > Download > Comma Separated Values (.csv)**.
4. Rename the downloaded file to `data.csv` and move it into this project folder.

---

## 🛠️ How to Run

1. Place your Typst template file (named `main.typ`) in the root directory.
2. Open **PowerShell** in this folder.
3. Run the script:
```powershell
.\generate.ps1

```

4. The script will:
* Create an `export` folder if it doesn't exist.
* Read each row of the CSV.
* Generate a custom PDF for each person inside the `export` folder.

---

## 📂 Project Structure

* `generate.ps1` - The execution script (Windows).
* `main.typ` - The visual layout/template.
* `data.csv` - The data exported from Google Sheets.
* `/export` - Where your finished PDFs will appear.
