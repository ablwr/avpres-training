<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/movies">
    <root>
      <xsl:apply-templates select="movie"/>
    </root>
  </xsl:template>

  <xsl:template match="movie">
    <title director="{director}">
      <xsl:value-of select="title" />
    </title>
  </xsl:template>

</xsl:stylesheet>