 <!DOCTYPE html>
 
<head>
     
     <title>Super28 Insitute</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            
            
        }

        header {
            background-color:ghostwhite;
            color: skyblue;
            text-align: center;
            padding: 1em;
        }

        nav {
            background-color:dodgerblue;
            padding: 1em;
            text-align: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 1em;
            margin: 0 1em;
            font-weight: bold;
        }

        section {
            padding: 2em;
        }

        footer {
            background-color: #333;
            color:skyblue;
            text-align: center;
            padding: 1em;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
          .dropdown {
    position: relative;
    display: inline-block;
  }

  .dropdown-content {
    display: none;
    position: absolute;
    left: -100px; /* Adjust this value according to your layout */
    top: 30;
    background-color: #f9f9f9;
    min-width: 200px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    padding: 10px;
    z-index: 1;
  }

  .dropdown:hover .dropdown-content {
    display: block;
  }
    .login-container {
            background-color: #fff;
            padding: 10px;
            
            
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
         }

        input {
            width: 20%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form action="db.jsp">
    <header>
        <h1>Super28 Insitute</h1>
    </header>

    <nav>
 
<a href="index.jsp">Home</a>
    
        <div class="dropdown" id="customerDropdown">
    <a href="#">courses</a>
    <div class="dropdown-content" id="customerDetails">
  <p> corejava</p>

  
<p>  servlets</p>
<p>  jsp</p>
 

  <p>  Spring</p>

  <p>   Spring mvc</p>

   <p> Spring boot</p>

  <p>  Micro services</p>
  <p>  Html,css ,JavaScript</p>

  <p>  React js</p>
  <p>  Node js</p>
  <p> Angular</p>

  
  </div>
  </div>
     <a href="index.jsp">About</a>
 	 
</nav>
<div class="login-container">
<center>
<h2>Student Registration Form</h2>

        <!-- Personal Details -->
        <label for="fullName">First Name:</label>
        <input type="text" id="firstname" name="firstname" required>
        
        <label for="secondName">Last Name:</label>
        <input type="text" id="secondname" name="lastname" required>
        
        <label for="Mobile">Mobile No:</label>
        <input type="text" id="Mobile" name="mobile" required>
        
        <label for="Email">Email:</label>
        <input type="text" id="email" name="email" required>

         
        <label>Gender:</label>
        <select id="gender" name="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>

        
        <!-- Educational Details -->
        <label for="graduation">Graduation:</label>
<select id="graduation" name="graduation" onchange="showBranchDropdown()" required>
    <option value="">Select Graduation</option>
    <option value="Degree">Degree</option>
    <option value="B.Tech">B.Tech</option>
 </select>

<div id="branch-dropdown" style="display: none;">
  <label for="branch">Branch:</label>
  <select id="branch" name="branch" required>
    <option value="">Select Branch</option>
  </select>
</div>
        

         
         <label for="Email">Passed_out_year:</label>
        <input type="text" id="email" name="passed_out_year" required>

        <label for="Course">Course:</label>
        <input type="text" id="Course" name="Course" required>
<label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" required></textarea>

        <!-- Submit Button -->
        <button type="submit">Submit</button>
         </center>
    </form>
    </div>
    <section id="contact">
        <h2>Contact Us</h2>
        <p>If you have any questions or inquiries, feel free to reach out:</p>
        <p>SRnagar</p>
        <p>Hyderabad</p>
        <p>500038</p>
        
        <p>Email: Super28@super.com</p>
        <p>Phone: 123-4567</p>
    </section>

    <footer>
        <p>&copy; Super28 Insitute. All rights reserved.</p>
    </footer>
</form>

<script>
function showBranchDropdown() {
  var graduation = document.getElementById("graduation").value;
  var branchDropdown = document.getElementById("branch-dropdown");
  var branchOptions = document.getElementById("branch");

  // Clear previous options
  branchOptions.innerHTML = '<option value="">Select Branch</option>';

  // Populate branch options based on selected graduation
  if (graduation === "Degree" ) {
    branchDropdown.style.display = "block";
    branchOptions.innerHTML += `
      <option value="bsc">Bsc</option>
      <option value="bcom">Bcom</option>
      <option value="ba">B.A</option>
      <!-- Add more branches for Degree/B.Tech as needed -->
    `;
  } else if ( graduation === "B.Tech") {
    branchDropdown.style.display = "block";
    branchOptions.innerHTML += `
      <option value="Civil Engineering">Civil Engineering</option>
      <option value="Chemical Engineering">cse</option>
      <option value="Aeronautical Engineering">EEE</option>
      <option value="Aeronautical Engineering">ECE</option>
      <option value="Aeronautical Engineering">IT</option>
      <option value="Aeronautical Engineering">Mechanical</option>


      <!-- Add more branches for B.E as needed -->
    `;
  } else {
    branchDropdown.style.display = "none"; // Hide the dropdown if no graduation selected
  }
}
</script>

</body>
</html>
  