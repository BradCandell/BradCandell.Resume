<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="resume">
		<html class="no-js" lang="en">
			<head>
				<meta charset="utf-8" />
				<meta http-equiv="content-type" content="text/html; charset=utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<meta name="robots" content="index, follow" />
				<meta name="classification" content="Personal Resume" />
				<meta name="title">
					<xsl:attribute name="content">
						<xsl:text>Resume - </xsl:text>
						<xsl:value-of select="@name"/>
					</xsl:attribute>
				</meta>
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />

				<!-- Foundation CSS -->
				<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation.min.css" media="all" />
				
				<title><xsl:value-of select="@name" /> | <xsl:value-of select="@title" disable-output-escaping="yes" /></title>
				
			</head>

			<body>

				<!-- Header -->
				<div id="header">
					<h1><xsl:value-of select="@name"/></h1>
					<h2><xsl:value-of select="@title"/></h2>
				</div>

				<div id="content">
					
					<!-- Introduction -->
					<div class="row" id="introduction">
						<div class="medium-3 columns">
							<h1>Introduction</h1>	
						</div>
						<div class="medium-9 columns">
							<xsl:value-of select="introduction/text()" disable-output-escaping="yes" />
						</div>
					</div>

				</div>
				
			</body>
			
		</html>
	
						</xsl:template>
</xsl:stylesheet>
