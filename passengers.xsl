<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
    <html>
		<body>
		<table border="1">
		<tr>
			<th>Passanger no</th><th>Name</th><th>NRIC</th><th>email</th><th>Contact no</th>
		    <th>gender</th><th>Date of Birth</th><th>Booking no</th>
		</tr>
			<xsl:for-each select="/record/passenger">
			<tr>
					<td><xsl:value-of select="@No"/><xsl:value-of select="@mainID"/></td>
					<td><xsl:value-of select="name"/></td>
					<td><xsl:value-of select="NRIC"/></td>
					<td><xsl:value-of select="email"/></td>
					<td><xsl:value-of select="contactNo"/></td>
					<td><xsl:value-of select="gender"/></td>
					<td><xsl:value-of select="birthdate"/></td>
					<td><xsl:value-of select="bookingNo"/></td>
				</tr>
			</xsl:for-each>
		</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>