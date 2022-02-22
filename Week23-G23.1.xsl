<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<title>Menu</title>	
	</head>
	<style type='text/css'>
		body {
			background-image:url(mauritian-indian-food.jpg);
			background-position: center;
			background-repeat: no-repeat;
			background-attachment:fixed;
		}	
		.content {
			background:black;
			width:100%;
			padding:40px:
			margin:100 px auto;
		}
		header {
			background-color:#8b0000;
			text-align:center;
			color:white;
			font-family:Brush Script MT;
			font-size:40px;
		}
		body {
			width: 100%;
			height: 100%;
			margin: 0;
			background-color:black;
			color:white;
		}
		.container {
		  width: 100%;
		  height: 100%;
		}
		.starter {
			text-align:center;
			width: 25%;
			height: 48%;
			float: left;
			background-color: black;
			border-collapse: collapse;
		}
		.side {
			text-align:center;
			width: 25%;
			height: 48%;
			float: left;
			background-color: black;
			border-collapse: collapse;
		}

		.main {
			text-align:center;
		  width: 25%;
			height: 48%;
			float: left;
		  background-color: black;
		  border-collapse: collapse;
		}

		.desert {
			text-align:center;
		  width: 25%;
			height: 48%;
			float: left;
		  border-collapse: collapse;
		  background-color: black;
		}
		ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			background-color: #8b0000;
		}
		li {
		  float: left;
		}
		li a{
		  display: inline-block;
		  color: white;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		}
		li a:hover{
		  background-color: black;
		}
		h2 {
			text-align:center;
			color:white;
			font-family:Time New Romans;
			font-size:25px;
		}
		p {
			text-align:center;
			color:white;
			font-size:35px;
		}
		.center {
			margin-left:auto;
		margin-right:auto;
		}
		.top {
			text-align:center;
			width: available;
			height:100%;
			border-collapse: collapse;
			background-color: #4da6ff;
			
		}
	</style>
	<body>
		<div class="content">
		<header>
			<h1>
				Dine @ #AnVen
			</h1>
		</header>
			<ul>
				<li><a href='Main.html'>Home</a></li>
				<li><a href='Menu.xml'>Menu</a></li>
			</ul>
		</div >
		<p>Restaurant's Speciality</p>
		<div class='starter'>
		
		<img src="crispy_samosa.jfif" width='350' height='250' class='center'/>
		<h1>Starters</h1>
		<table border='2' class='center'>
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select='Menu/Dish/Starters'>
				<tr>
					<td width='200'>
						<xsl:value-of select='Name'/>
					</td>
					<td>
						<xsl:value-of select='Price'/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<p></p>
		<img src="gateau_piment.jpg" width='350' height='250' class='center'/>
		</div>
		
		<div class='side'>
		<img src="garlic_bread.jpg" width='350' height='250' class='center'/>
		<h1>Side Dishes</h1>
		<table border='2' class='center'>
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select='Menu/Dish/Side_Dish'>
				<tr>
					<td width='200'>
						<xsl:value-of select='Name'/>
					</td>
					<td>
						<xsl:value-of select='Price'/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<p></p>
		<img src="potato_wedges.jpg" width='350' height='250' class='center'/>
		</div>
		
		<div class='main'>
		<img src="butter_chicken.jpg" width='350' height='250' class='center'/>
		<h1>Main Dishes</h1>
		<table border='2' class='center'>
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select='Menu/Dish/Main_Course'>
				<tr>
					<td width='200'>
						<xsl:value-of select='Name'/>
					</td>
					<td>
						<xsl:value-of select='Price'/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<p></p>
		<img src="prawn_rougaille.jfif" width='350' height='250' class='center'/>
		</div>
		
		<div class='desert'>
		<img src="macaron_orange.jpg" width='350' height='250' class='center'/>
		<h1>Deserts</h1>
		<table border='2' class='center'>
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select='Menu/Dish/Desert'>
				<tr>
					<td width='200'>
						<xsl:value-of select='Name'/>
					</td>
					<td>
						<xsl:value-of select='Price'/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<p></p>
		<img src="tiramisu.jfif" width='350' height='250' class='center'/>
		</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>