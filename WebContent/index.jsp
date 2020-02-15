<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&display=swap"
	rel="stylesheet" />
<link href="fontawesome/css/all.min.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />

<title>Comfy place</title>


</head>

<body>
  
<div class="open-btn" align="right">
      <button class="open-button" onclick="openForm()"><strong>Login</strong></button>
    </div>
    <div class="login-popup">
      <div class="form-popup" id="popupForm">
        <form action="userpwd.jsp" class="form-container">
          <h2>Reserved only Admin</h2>
          <label for="username">
          <strong>Username</strong>
          </label>
          <input type="text" id="username" placeholder="Username" name="username" required>
          <label for="password">
          <strong>Password</strong>
          </label>
          <input type="password" id="password" placeholder="Password" name="password" required>
          <button type="submit" class="btn">Log in</button>
          <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
        </form>
      </div>
    </div>

	<div class="tm-container">
		<div class="tm-text-white tm-page-header-container">

			<i class="fas fa-heart fa-2x tm-page-icon"
				style="color: #ab8079; text-shadow: 4px 3px 0px #fff, 9px 8px 0px rgba(0, 0, 0, 0.15);"></i>
			<h1 class="tm-page-header">Comfy place</h1>
			<i class="fas fa-heart fa-2x tm-page-icon"
				style="color: #ab8079; text-shadow: 4px 3px 0px #fff, 9px 8px 0px rgba(0, 0, 0, 0.15);"></i>
				
		</div>
		<div class="tm-main-content">
			<div id="tm-intro-img"></div>
			
			
			<!-- Coffee Menu -->
			<section class="tm-section">
			<h2 class="tm-section-header">Coffee Menu</h2>
			<div class="tm-responsive-table">

				<sql:setDataSource var="myDS" driver="com.mysql.cj.jdbc.Driver"
					url="jdbc:mysql://localhost:3306/classicmodels?serverTimezone=UTC"
					user="root" password="admin" />

	<sql:query var="listUsers" dataSource="${myDS}">
        SELECT * FROM coffee;
    </sql:query>
				<form>
					<div class="tm-responsive-table">
						<table border="1" cellpadding="5">
							<tr class="tm-tr-header">
								<!-- <th>idcoffee</th> -->
								<th>Nome</th>
								<th>Prezzo</th>
							</tr>
							<c:forEach var="row" items="${listUsers.rows}">
								<tr>
									<%-- <td><c:out value="${row.idusers}" /></td> --%>
									<td class="tm-text-left"><c:out value="${row.name}" /></td>
									<td class="tm-text-left">&euro;<c:out value="${row.price}" /></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</form>

			</div>
			</section>

			<!-- Special Items -->
			<section class="tm-section">
			<h2 class="tm-section-header">Bonus</h2>
			<div class="tm-special-items">
				<figure class="tm-special-item"> <img
					src="img/chilling-cafe-11.jpg" alt="Image"
					class="tm-special-item-img" /> <figcaption> <span
					class="tm-item-name">Soft Deli Cup</span> <span
					class="tm-item-price">&euro;25</span> </figcaption> </figure>
				<figure class="tm-special-item"> <img
					src="img/chilling-cafe-12.jpg" alt="Image"
					class="tm-special-item-img" /> <figcaption> <span
					class="tm-item-name">Coffee Art</span> <span class="tm-item-price">&euro;30</span>
				</figcaption> </figure>
				<figure class="tm-special-item"> <img
					src="img/chilling-cafe-13.jpg" alt="Image"
					class="tm-special-item-img" /> <figcaption> <span
					class="tm-item-name">Speciality Tea</span> <span
					class="tm-item-price">&euro;35</span> </figcaption> </figure>
			</div>
			</section>
			<hr />
			<!-- About our cafe -->
			<section class="tm-section tm-section-small">
			<h2 class="tm-section-header">About our cafe</h2>
			<p>Tutti i nostri caff&eacute; sono torrefatti esclusivamente con metodo tradizionale 
			in forno a legna, per garantirne la fragranza e la genuinit&aacute;, cuocendo lentamente 
			ad una temperatura compresa tra i 160 e i 200 gradi °C per permettere una completa 
			e uniforme cottura dei chicchi impiegati, fino ad assume una colorazione particolare, 
			detta a tonaca di frate, ne troppo scura ne troppo chiara, che assicura 
			al caff&eacute; gusto pieno e rotondo, evitandone l'eccessiva amarezza.</p>
			
			</section>
			<hr />
			<!-- Talk to us -->
			<section class="tm-section tm-section-small">
			<h2 class="tm-section-header">Talk to us</h2>
			<p class="tm-mb-0">
				Reach us via <a href="mailto:info@example.com"
					class="tm-contact-link">Email</a> or follow us on social icons
				below. Thank you.
			</p>
			<div class="tm-social-icons">
				<div class="tm-social-link-container">
					<a href="https://fb.com/" class="tm-social-link"> <i
						class="fab fa-facebook"></i>
					</a>
				</div>
				<div class="tm-social-link-container">
					<a href="https://twitter.com" class="tm-social-link"> <i
						class="fab fa-twitter"></i>
					</a>
				</div>
				<div class="tm-social-link-container">
					<a href="https://instagram.com" class="tm-social-link"> <i
						class="fab fa-instagram"></i>
					</a>
				</div>
				<div class="tm-social-link-container">
					<a href="https://pinterest.com" class="tm-social-link"> <i
						class="fab fa-pinterest"></i>
					</a>
				</div>
			</div>
			</section>
		</div>
		<footer>
		<p class="tm-text-white tm-footer-text">Copyright &copy; 2020
			Company Name .</p>
		</footer>
	</div>
	<script src="js/jquery-3.4.1.min.js"></script>
	<script>
		$(function() {
			// Adjust intro image height based on width.
			$(window).resize(function() {
				var img = $("#tm-intro-img");
				var imgWidth = img.width();

				// 640x425 ratio
				var imgHeight = (imgWidth * 425) / 640;

				if (imgHeight < 300) {
					imgHeight = 300;
				}

				img.css("min-height", imgHeight + "px");
			});
		});
		
		function openForm() {
			document.getElementById("popupForm").style.display = "block";
			}
			function closeForm() {
			document.getElementById("popupForm").style.display = "none";
			}
	</script>

</body>
</html>