<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

	<xsl:output method="text" encoding="utf-8" media-type="application/json" indent="yes"/>
	<xsl:strip-space elements="*" />

  <xsl:template name="node_raw">
    <xsl:param name="nm" />
    <xsl:param name="val" />
    <xsl:text>"</xsl:text>
    <xsl:value-of select="$nm"/>
    <xsl:text>":</xsl:text>
    <xsl:value-of select="$val"/>
    <xsl:text></xsl:text>
  </xsl:template>
  
  <xsl:template name="node_str">
    <xsl:param name="nm" />
    <xsl:param name="val" />
    <xsl:text>"</xsl:text>
    <xsl:value-of select="$nm"/>
    <xsl:text>":"</xsl:text>
    <xsl:value-of select="$val"/>
    <xsl:text>"</xsl:text>
  </xsl:template>
  
  
	<xsl:template match="/resume">
		<xsl:text>{</xsl:text>

      <xsl:call-template name="node_str">
        <xsl:with-param name="nm" select="'name'" />
        <xsl:with-param name="val" select="@name" />
      </xsl:call-template>
      <xsl:text>,</xsl:text>
    
      <xsl:call-template name="node_str">
        <xsl:with-param name="nm" select="'title'" />
        <xsl:with-param name="val" select="@title" />
      </xsl:call-template>
    
    <xsl:text>}</xsl:text>
	</xsl:template>
</xsl:stylesheet>
