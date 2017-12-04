<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="UTF-8" method="html" version="1.0" indent="yes"/>
<xsl:template match="/">
<html>
<body>
  <h2>Roles</h2>
  <table border="1">
    <tr>
      <th>code</th>
      <th>label</th>
      <th>In RDA?</th>
    </tr>
    <xsl:for-each select="//ROW">
    <tr>
      <td><xsl:value-of select="code"/></td>
      <td><xsl:value-of select="label"/></td>
      <xsl:choose>
      <xsl:when test="In_RDA/text()='no'">
         <td bgcolor="red">
         <xsl:value-of select="In_RDA"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="In_RDA"/></td>
      </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

