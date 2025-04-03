<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
       body {
    font-family: Arial, sans-serif;
    background-image: url('background.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-container {
    background-color: rgba(255, 255, 255, 0.10); /* White background na may opacity */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
}

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-family: Arial, sans-serif;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-container button:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm">
            <input type="text" id="username" placeholder="Username">
            <input type="password" id="password" placeholder="Password">
            <button type="submit">Login</button>
        </form>
        <div id="message" class="message"></div>
    </div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            event.preventDefault();
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            if (username === 'user' && password === 'pass') {
                document.getElementById('message').textContent = 'Login successful!';
                localStorage.setItem('loggedIn', 'true');
                window.location.href = "library.html";
            } else {
                document.getElementById('message').textContent = 'Invalid credentials.';
            }
        });

        if (localStorage.getItem('loggedIn') === 'true') {
            // window.location.href = "protected.html";
        }
    </script>
</body>
</html>
