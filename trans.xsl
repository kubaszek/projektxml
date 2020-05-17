<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" encoding="UTF-8"/>

<xsl:template match="/">
<html>
	<head>
		<title><xsl:text>statystyki</xsl:text></title>
		<link rel='stylesheet' href='style.css' type='text/css'/>
	</head>
<body>

<div id='header'>
<h1><xsl:text>Dane statystyczne wypożyczalni "Pędziwiatr"</xsl:text></h1>
</div>
<div id='box'>
<div id='navigation'>
	<h2>Nawigacja</h2>
	<ul>
	<li><a href='main.xml'><xsl:text>Baza danych</xsl:text></a></li>
	</ul>
</div>

<div id='content'>
	<h2>Wybrane informacje:</h2>
	<table>
	<tr>
		<th><xsl:text>Samochody</xsl:text></th>
		<th><xsl:text>Filie</xsl:text></th>
	</tr>
	<tr>
		<td><xsl:text>Suma wartości aut osobowych:  </xsl:text>
		<xsl:value-of select="sum(//wypozyczalnia/autaosobowe/osobowe/@cena)"/></td>
		<td><xsl:text>Ilość filii:  </xsl:text>
		<xsl:value-of select="count(//wypozyczalnia/filie/filia)"/></td>
	</tr>
	<tr>
		<td><xsl:text>Model ostatnio dodanego dostawczaka: </xsl:text>
		<xsl:value-of select="concat(//wypozyczalnia/autadostawcze/dostawczak[position() = last()]/marka, ' ', //wypozyczalnia/autadostawcze/dostawczak[position() = last()]/model)"/></td>

		<td><xsl:text>Miasto filii </xsl:text>
		<xsl:value-of select="concat('g81100:', '  ', //wypozyczalnia/filie/filia[@id = 'g81100']/miasto)"/></td>

	</tr>
	<tr>
		<td><xsl:text>Zaokrąglona średnia cena busa:  </xsl:text>
		<xsl:value-of select="round(sum(//wypozyczalnia/busy/bus/@cena) div count(//wypozyczalnia/busy/bus[@cena != 0]))"/></td>
		<td><xsl:text>Ilość busów w g81100:  </xsl:text>
		<xsl:value-of select="count(//wypozyczalnia/busy/bus[lokalizacja = 'g81100'])"/></td>
	</tr>

	<tr>
		<td><xsl:text>Dokładna średnia cena busa:  </xsl:text>
		<xsl:value-of select="format-number(sum(//wypozyczalnia/busy/bus/@cena) div count(//wypozyczalnia/busy/bus[@cena != 0]), '0.00')"/></td>
		<td><xsl:text>Ilość osobówek w g81100:  </xsl:text>
		<xsl:value-of select="count(//wypozyczalnia/autaosobowe/osobowe[lokalizacja = 'g81100'])"/></td>
	</tr>
	</table>


</div>
</div>

<div id='footer'>
	<p><xsl:text>Autor - Marcin Kubach</xsl:text></p>
</div>

</body>
</html>
</xsl:template>

</xsl:stylesheet>