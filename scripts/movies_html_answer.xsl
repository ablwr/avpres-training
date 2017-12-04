<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/movies">
    <html>
      <head> <title>Movies!!!</title> </head>
      <body>
        <h1>Movies</h1>
        <ul>
          <xsl:apply-templates select="movie">
            <xsl:sort select="director" />
          </xsl:apply-templates>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="movie">
    <li>
      <xsl:value-of select="title"/><xsl:text>, </xsl:text><xsl:value-of select="director"/>
    </li>
  </xsl:template>

</xsl:stylesheet>