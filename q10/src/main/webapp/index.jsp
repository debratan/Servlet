<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Email Register</title>
    <style>
        #par1 {
            background-color: white;
            color: yellow;
        }
        button {
            background-color: blue;
            color: white;
            width: 55%;
        }
    </style>
</head>
<body style="background-color: black;">
    <div class="container">
        <h1 id="par1">Student Registration Form</h1>
        <form action="RegisterServlet" method="post">
            <table>
                <tr>
                    <td style="color: blue;">Enter First Name:</td>
                    <td><input type="text" name="fname" placeholder="First Name" required></td>
                </tr>
                <tr>
                    <td style="color: blue;">Enter Middle Name:</td>
                    <td><input type="text" name="mname" placeholder="Middle Name"></td>
                </tr>
                <tr>
                    <td style="color: blue;">Enter Last Name:</td>
                    <td><input type="text" name="lname" placeholder="Last Name" required></td>
                </tr>
                <tr>
                    <td style="color: blue;">Enter User Name:</td>
                    <td><input type="text" name="name" placeholder="User Name" required></td>
                </tr>
                <tr>
                    <td style="color: blue;">Enter Password:</td>
                    <td><input type="password" name="passwd" placeholder="Password" required></td>
                </tr>
                <tr>
                    <td style="color: blue;">Confirm Password:</td>
                    <td><input type="password" name="cpasswd" placeholder="Confirm Password" required></td>
                </tr>
                <tr>
                    <td style="color: blue;">Location:</td>
                    <td><input type="text" name="user_loc" placeholder="Location"></td>
                </tr>
                <tr>
                    <td style="color: blue;">Education:</td>
                    <td><input type="text" name="uedu" placeholder="Education"></td>
                </tr>
                <tr>
                    <td style="color: blue;">Enter Phone No.:</td>
                    <td><input type="tel" name="phone" placeholder="123-456-789" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required></td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        <button type="submit">Submit</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
