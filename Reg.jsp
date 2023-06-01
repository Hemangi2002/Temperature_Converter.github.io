<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%></%@>

<!DPCTYPE html PUBLIC " -//w3c//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    <title> Insert title here </title>
    <link rel="stylesheet" href="style.css"> 
</head>
    script type="text/javascript">
    function check()
    {
        var x=document.form1.fn.value;
        var y=document.form1.ln.value;
        var x=document.form1.email.value;
    
        if(document.form1.fn.value=="")
        {
            alert("Enter Your Name");
            document.form1.fn.focus();
            return false;
        }
        else if(parseInt(x))
        {
            alert("Enter name Correctly");
            document.form1.ln.focus();
            return false;
        }
        if(document.form1.ln.value=="")
        {
            alert("Enter Your Name");
            document.form.ln.focus();
            return false;
        }
        else if(parseInt(x))
        {
            alert("Enter name Correctly");
            document.form1.ln.focus();
            return false;
        
        }
        if(document.form1.pwd.value=="")
        {
            alert("Enter Password");
            document.form1.pwd.focus();
            return false;
        }
        if(z.length<8)
        {
            alert("Password shouldbe minimum 8 characters");
            document.form1.pwd.focus;
            return false;
        }
        if(document.form.email.value=="")
        {
            alert("Enter email");
            document.form1.email.focus();
            return false;
        }
        else if(document.form1.email.value.indexOf('@')==-1)
        {
            alert("Use @ email correctly");
            document.form1.email.focus();
                       return false;
        }
        else if(document.form1.email.value.indexOf('.')==-1)
        {
            alert("Use .email correctly");
            document.form1.email.focus();
            return false;
        }
         
        return true;
        
    }
    
    </script>  
    <body>
        <div class="Sign box">
        <h1>Sign Up</h1>
        <form action="RegData.jsp" method="post"  name="form1" id="form1" onsubmit="return check()" >
            <label>First Name:</label>
            <input type="text" placeholder=""  name="fn">
             <label>Last Name:</label>
            <input type="text" placeholder=""  name="ln">
            <label>Email:</label>
            <input type="text" placeholder=""  name="email">
            <label>Password :</label>
            <input type="text" placeholder=""  name="pwd">
            <input type="Submit" value="Submit"
        </form>
        <p>By Clicking the sign up button. You agree to our<br>
            <a href="#"> Terms and Condition</a> and <a href="#"> Policy and private</a>
        </p>
      </div>
        <p class="para"> Already have an account? <a class="a" href="Login.jsp">Login here</a>
        </p>
    </body></html>
            
            
            