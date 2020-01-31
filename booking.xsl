<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
	<html>
		<body>
		<table border="1">
		<tr>
			<th>Booking no</th><th>Name</th><th>Departure</th><th>Arrival</th><th>Country</th>
		    <th>Flight no</th><th>Date</th><th>Boarding Time</th><th>Zone</th>
		    <th>Gate no</th><th>Seat no</th>
		</tr>
			<xsl:for-each select="/flight/booking">
			<tr>
					<td><xsl:value-of select="@No"/></td>
					<td><xsl:value-of select="name"/></td>
					<td><xsl:value-of select="depart"/></td>
					<td><xsl:value-of select="arrive"/></td>
					<td><xsl:value-of select="country"/></td>
					<td><xsl:value-of select="flightNo"/></td>
					<td><xsl:value-of select="date"/></td>
					<td><xsl:value-of select="boardingTime"/></td>
					<td><xsl:value-of select="zone"/></td>
					<td><xsl:value-of select="gateNo"/></td>
					<td><xsl:value-of select="seatNo"/></td>
				</tr>
			</xsl:for-each>
		</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>