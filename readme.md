#Library Management System using Flask

#Requirements:
- Python 3.8 or higher
- XAMPP or WAMPP

#Firstly, clone the repository:
```bash
git clone
```

Secondly, open xampp or wampp and start the Apache and MySQL modules. Then, create a database named "library" and import the "library.sql" file into it (you can find it in the "database" folder).


#Then, install all the dependencies:
```bash
pip install -r requirements.txt
```

#Then, run the following command to start the server:
```bash
python app.py
```

The server will be running on http://localhost:5000 or http://127.0.0.1:5000

#Finally, open your browser and go to http://localhost:5000 or http://127.0.0.1:5000

#Admin Login credentials:
- Username: admin
- Password: 1

#For Gmail Mailing, create a file '.env' in the root directory and add the following:
```bash
MAIL_USERNAME = 'your email'
MAIL_PASSWORD = 'your password'
```

#Enjoy!
