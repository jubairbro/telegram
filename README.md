# Telegram Advanced Toolkit v2.5

An all-in-one, powerful command-line solution for managing your Telegram experience. This toolkit is designed for automation, multi-account management, and various advanced functionalities.

![Made for You](https://img.shields.io/badge/Made%20for-%40JubairFF-blue?style=for-the-badge&logo=telegram)
![Python Version](https://img.shields.io/badge/Python-3.8+-brightgreen?style=for-the-badge&logo=python)

---

### Tool Preview
![Tool Screenshot](screenshot/screenshot.png)

---

## ✨ Features

This toolkit is packed with a wide range of powerful features:

* **Inbox Management:**
    * View a list of your 20 most recent chats.
    * Check the number of unread messages for each chat.
    * Select any chat to read the last 10 messages in a clean, table format.
    * Quickly reply to recent chats directly from the tool.

* **Automation & Tools:**
    * Send bulk messages to any user, channel, or group.
    * Scrape member lists (User ID, Username, Name) from public groups/channels into a `.csv` file.
    * Export chat history from any conversation to a `.txt` file for backup.
    * Automatically leave all groups and channels where you are not an admin.

* **Account Management:**
    * Manage your profile by changing your name, bio, username, and profile picture.
    * Report users or channels for spam, violence, and other reasons.
    * Join any public group or channel via its link or username.

* **Session Management:**
    * Log in and manage multiple Telegram accounts.
    * Easily switch between active accounts.
    * Delete unwanted sessions securely.
    * View the online status of all logged-in accounts.

* **Ease of Use:**
    * Automatically fetches API credentials from a secure online source.
    * One-command tool update functionality via Git.
    * A clean, user-friendly, and well-organized interface.

---

## 🚀 Installation & Setup (Termux)

Follow these steps to get the tool running on **Termux**.

1.  **Install Dependencies & Clone Repo**
    Run this single command to install `git` and `python`, clone the repository, and enter the directory:
    ```termux
    pkg install git python && git clone [https://github.com/jubairbro/telegram.git](https://github.com/jubairbro/telegram.git) && cd telegram
    ```

2.  **Install Python Libraries**
    Next, install all the required Python packages using the `requirements.txt` file:
    ```termux
    pip install -r requirements.txt
    ```

---

## ▶️ How to Run

After a successful installation, you can start the tool with a simple command.

* **Run the Tool:**
    ```termux
    ./run
    ```

* **First-Time Use:**
    * The tool will automatically load the necessary API credentials.
    * You will be prompted to log in with your phone number, the verification code sent to you, and your 2FA password (if enabled).
    * Upon successful login, a `.session` file will be created, allowing for instant access next time.

---

## ⚠️ Important Notes

* **Scraper Limitation:** Due to Telegram's own limitations to prevent abuse, you may only be able to scrape up to 200 members from large groups or channels if you are not an admin. This is a platform feature, not a bug in the tool.
* **Device Name:** Sessions logged in via this tool will appear as **"Advanced Toolkit v2.5 (@JubairFF)"** in your Telegram app's "Active Sessions" list. To see this change on an existing session, you may need to terminate the old session from your app (`Settings > Devices`) and run the tool again.
* **Disclaimer:** This tool is intended for educational and personal management purposes only. The user is solely responsible for any misuse.

---

## 👤 Author

This tool was designed and developed by **@JubairFF**.
