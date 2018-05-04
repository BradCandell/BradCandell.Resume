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
						<xsl:value-of select="@name"/>
            <xsl:text> | </xsl:text>
            <xsl:value-of select="@title"/>
					</xsl:attribute>
				</meta>
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />

				<!-- Foundation CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.4.3/dist/css/foundation.min.css" integrity="sha256-GSio8qamaXapM8Fq9JYdGNTvk/dgs+cMLgPeevOYEx0= sha384-wAweiGTn38CY2DSwAaEffed6iMeflc0FMiuptanbN4J+ib+342gKGpvYRWubPd/+ sha512-QHEb6jOC8SaGTmYmGU19u2FhIfeG+t/hSacIWPpDzOp5yygnthL3JwnilM7LM1dOAbJv62R+/FICfsrKUqv4Gg==" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.min.css"/>
         
				<title><xsl:value-of select="@name" /> | <xsl:value-of select="@title" disable-output-escaping="yes" /></title>

        <style>

          body {
            font-size: 13px;
            line-height: 18px;
          }
          
          a {
            color: #990003;
          }
          
          h1, h2, h3 {
            font-family: Georgia;
            font-style: normal;
            font-weight: normal;
            color: #333;
            margin: 0;
            padding: 0;
          }

          #content {
            margin: 80px 20px;
            background: #f5f5f5;
            border: solid #666;
            border-width: 8px 0 2px 0;
            padding: 20px 60px;
            color: #444;
          }

          #content h1 {
            font-size: 19.8px;
            font-style: italic;
          }
          
          #content h2 {
            font-size: 19.8px;
            font-style: normal;
          }
          
          #content h3 {
            font-size: 15.8px;
          }
          
          .content-container {
            margin: 18px 0;
            border-bottom: 1px solid #ccc;
            padding-bottom: 2.5em;
          }
          
          #header {
            padding-bottom: 1.0em;
            border-bottom: 1px solid #ccc;
          }
          
          #header h1 {
            font-size: 48px;
            font-style: normal;
            letter-spacing: 3px;
          }

          #header h2 {
            font-size: 19.8px;
            letter-spacing: 2px;
            font-style: italic;
          }

          #contacts ul {
            list-style: none;
          }
          
          #contacts li {
            vertical-align: middle;
          }
          
          #contacts i {
            font-size: 24px;
            line-height: 24px;
            margin-right: 6px;
          }
          
          #contacts li a {
            margin-left: 4px;
            line-height: 24px;
          }
          
          #introduction p {
            font-size: 1.21em;
          }
          
          #skills h2 {
            font-size: 17.2px;
            margin-bottom: 6px;
          }
          
          #skills .skill {
            margin-bottom: 28px;
          }
          
          #skills .skill-item {
            font-size: 0.91em;
            border-bottom: 1px solid #ccc;
            color: #707070;
            margin-bottom: 3px;
          }
          
          #experiences .experience {
            border-bottom: 1px solid #ccc;
            margin-bottom: 10px;
          }
          
          #experiences .experience:last-child {
            border-bottom: none;
          }
          
          #experiences span.experience-period {
            font-family: Georgia;
            color: #333;
            font-size: 15.8px;
            float: right;
          }
          
          #experiences .experience p {
            margin: 10px 0 45px 0;
            padding-right: 30px;
          }
          
          #involvement .involvement-item {
            border-bottom: 1px solid #ccc;
            margin-bottom: 10px;
          }
          
          #involvement .involvement-item p {
            margin: 10px 0 45px 0;
            padding-right: 30px;
          }
          
          #involvement .involvement-item:last-child {
            border-bottom: none;
          }
          
          #interests .interest {
            border-bottom: 1px solid #ccc;
            margin-bottom: 10px; 
          }
          
          #interests .interest p {
            margin: 10px 0 45px 0;
            padding-right: 30px;
          }
          
          #interests .interest:last-child {
            border-bottom: none;
          }
          
          #footer {
            text-align: center;
            font-size: 0.87em;
          }
          
          @media print {
           a[href]:after {
          content: none !important;
          }
}
        </style>
			</head>

			<body>

				<div id="content" class="grid-container">

          <!-- Header -->
          <div id="header" class="grid-x">
            <div class="cell medium-8">
              <h1><xsl:value-of select="@name"/></h1>
              <h2><xsl:value-of select="@title"/></h2>
            </div>
            <div id="contacts" class="cell medium-4">
              <ul>
                <xsl:for-each select="contacts/contact">
                  <li>
                    
                    
                    <a target="_blank">
                      <xsl:attribute name="class">
                        <xsl:text>contact contact-</xsl:text>
                        <xsl:value-of select="@type"/>
                      </xsl:attribute>
                      
                      <xsl:attribute name="href">
                        <!-- Protocol -->
                        <xsl:choose>
                          <xsl:when test="@type='email'">
                            <xsl:text>mailto:</xsl:text>    
                          </xsl:when>
                          <xsl:when test="@type='phone'">
                            <xsl:text>tel:</xsl:text>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>https://</xsl:text>
                          </xsl:otherwise>
                        </xsl:choose>

                        <!-- Prefix -->
                        <xsl:choose>
                          <xsl:when test="@type='twitter'">
                            <xsl:text>www.twitter.com/</xsl:text>
                          </xsl:when>
                          <xsl:when test="@type='facebook'">
                            <xsl:text>www.facebook.com/</xsl:text>
                          </xsl:when>
                          <xsl:when test="@type='github'">
                            <xsl:text>www.github.com/</xsl:text>
                          </xsl:when>
                        </xsl:choose>
                        <xsl:value-of select="text()"/>
                      </xsl:attribute>

                      <!-- Contact Icon -->
                      <xsl:choose>
                        <xsl:when test="@type='phone'">
                          <i class="fi-telephone size-24"></i>
                        </xsl:when>
                        <xsl:when test="@type='email'">
                          <i class="fi-mail size-24"></i>
                        </xsl:when>
                        <xsl:when test="@type='twitter'">
                          <i class="fi-social-twitter size-24"></i>
                        </xsl:when>
                        <xsl:when test="@type='github'">
                          <i class="fi-social-github"></i>
                        </xsl:when>
                        <xsl:when test="@type='facebook'">
                          <i class="fi-social-facebook size-24"></i>
                        </xsl:when>
                      </xsl:choose>
                      
                      <!-- Text -->
                      <xsl:if test="@type='twitter'">
                        <xsl:text>@</xsl:text>
                      </xsl:if>
                      
                      <xsl:value-of select="text()"/>
                    </a>
                  </li>
                </xsl:for-each>
              </ul>
            </div>
          </div>
          
					<!-- Introduction -->
					<div id="introduction" class="grid-x content-container">
						<div class="cell medium-3">
							<h1>Introduction</h1>	
						</div>
						<div class="cell medium-9">
              <p>
                <xsl:value-of select="introduction/text()" disable-output-escaping="yes" />
              </p>
						</div>
					</div>


          <!-- Skills -->
          <div id="skills" class="grid-x content-container">
            <div class="cell medium-3">
              <h1>Skills</h1>
            </div>
            <div class="cell medium-9">
              <xsl:for-each select="skills/skill">
                <div class="skill">
                  <h2><xsl:value-of select="@title"/></h2>
                  <div class="grid-x">
                    <xsl:for-each select="item">
                      <div class="cell medium-4 skill-item">
                        <xsl:value-of select="@title"/>
                      </div>
                    </xsl:for-each>
                  </div>
                </div>
              </xsl:for-each>
            </div>
          </div>


          <!-- Job Experience -->
          <div id="experiences" class="grid-x content-container">
            <div class="cell medium-3">
              <h1>Experience</h1>
            </div>
            <div class="cell medium-9">
              <xsl:for-each select="experience/job">
                <div class="experience">
                    <span class="experience-period">
                      <xsl:value-of select="period/from/@year"/>
                      <xsl:if test="period/to/@year">
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="period/to/@year"/>
                      </xsl:if>
                    </span>
                    <h2><xsl:value-of select="employer/name"/></h2>
                    <h3><xsl:value-of select="@title"/></h3>
                  <p>
                    <xsl:value-of select="description"/>
                  </p>
                </div>
              </xsl:for-each>
            </div>
          </div>


          <!-- Education -->
          <div id="education" class="grid-x content-container">
            <div class="cell medium-3">
              <h1>Education</h1>
            </div>
            <div class="cell medium-9">
              <xsl:for-each select="education/item">
                <div class="education-item">
                  <h2><xsl:value-of select="@name"/> - <span><xsl:value-of select="@location"/></span></h2>
                  <h3>Graduation: <span><xsl:value-of select="@graduation"/></span></h3>
                </div>
              </xsl:for-each>              
            </div>
          </div>


          <!-- Community Involvement -->
          <div id="involvement" class="grid-x content-container">
            <div class="cell medium-3">
              <h1>Community Involvement</h1>
            </div>
            <div class="cell medium-9">
              <xsl:for-each select="community/involvement">
                <div class="involvement-item">
                  <h2><xsl:value-of select="@organization"/></h2>
                  <h3><xsl:value-of select="@role"/></h3>
                  <p>
                    <xsl:value-of select="text()" disable-output-escaping="yes"/>
                  </p>
                </div>
              </xsl:for-each>
            </div>
          </div>


          <!-- Hobbies and Interests -->
          <div id="interests" class="grid-x content-container">
            <div class="cell medium-3">
              <h1>Hobbies/Interests</h1>
            </div>
            <div class="cell medium-9">
              <xsl:for-each select="interests/interest">
                <div class="interest">
                  <h2>
                    <xsl:value-of select="@title"/>
                  </h2>
                  <p>
                    <xsl:value-of select="text()" disable-output-escaping="yes"/>
                  </p>
                </div>
              </xsl:for-each>
            </div>
          </div>

          <div id="footer">
            <xsl:value-of select="@name"/>
            <xsl:text>&#160;&#8212;&#160;</xsl:text>
            <a target="_blank">
              <xsl:attribute name="href">
                <xsl:text>mailto:</xsl:text>
                <xsl:value-of select="(contacts/contact[@type='email'])[1]"/>
              </xsl:attribute>
              <xsl:value-of select="(contacts/contact[@type='email'])[1]"/>
            </a>
            <xsl:text>&#160;&#8212;&#160;</xsl:text>
            <xsl:value-of select="(contacts/contact[@type='phone'])[1]"/>
          </div>
          
        </div>

        


        
        
        <!-- Compressed JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/foundation-sites@6.4.3/dist/js/foundation.min.js" integrity="sha256-mRYlCu5EG+ouD07WxLF8v4ZAZYCA6WrmdIXyn1Bv9Vk= sha384-KzKofw4qqetd3kvuQ5AdapWPqV1ZI+CnfyfEwZQgPk8poOLWaabfgJOfmW7uI+AV sha512-0gHfaMkY+Do568TgjJC2iMAV0dQlY4NqbeZ4pr9lVUTXQzKu8qceyd6wg/3Uql9qA2+3X5NHv3IMb05wb387rA==" crossorigin="anonymous"></script>
      
			</body>
			
		</html>
	
						</xsl:template>
</xsl:stylesheet>
