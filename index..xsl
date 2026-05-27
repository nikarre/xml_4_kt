<xsl:output method="xml" indent="yes"/>
  <xsl:template match="/items">
    <xsl:variable name="total" select="count(element)"/>
    <goods>
      <xsl:comment>Всего элементов: <xsl:value-of select="$total"/></xsl:comment>
      
      <xsl:for-each select="element">
        <xsl:element name="{@name}">
          <xsl:value-of select="@value"/>
        </xsl:element>
      </xsl:for-each>
    </goods>
    
  </xsl:template>

</xsl:stylesheet>
