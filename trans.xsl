<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" encoding="UTF-8"/>

<xsl:template match="/">
<html>
	<head>
		<title><xs:text>statystyki</xsl:text></title>
		<link rel=”stylesheet” href=”style.css” type=”text/css”>
	</head>
<body>

<div id=”header”>
<h1><xs:text>Dane statystyczne wypożyczalni "Pędziwiatr"</xsl:text></h1>
</div>

<div id=”navigation”>
	<h2>Nawigacja</h2>
	<ul>
	<li><a href=”main.xml”><xsl:text>Baza danych</xsl:text></a></li>
	</ul>
</div>

<div id=”content”>
	<h2>Informacje:</h2>
	<p>Tutaj znajduje się artykuł</p>
</div>


	<div id=”footer”>
	<p><xsl:text>Autor - Marcin Kubach</xsl:text></p>
</div>

</body>
</html>
</xsl:template>

</xsl:stylesheet>