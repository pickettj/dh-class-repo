<?xml version="1.0" encoding="UTF-8"?>

<!-- Within the root element we have all of our declarations, *many* of which
have to do with namespaces-->
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="#all"
    version="3.0">
    <!-- This first child element of the root controls the type and formatting of your output -->
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Hamlet:Rosencrantz Edition</title>
            </head>
            <body>
                <h1>Hamlet:Rosencrantz Edition</h1>
                
            </body>
        </html>
    </xsl:template>
    
   
    
    
    <!-- After output, many of our children of the root element will apply templates. -->

  
</xsl:stylesheet>


<!--<xsl:template match="l">
    <p><xsl:apply-templates/></p>
</xsl:template>-->


<!--<xsl:apply-templates select="//l[matches(., 'Polonius|Rosencrantz')]"/>-->








<!--KEY:-->

<!--
    
<xsl:template match="/">
    <html>
        <head>
            <title>Hamlet</title>
        </head>
        <body>
            
            <xsl:apply-templates select="//body/div[1]/div[1]/sp"/>
            
        </body>
    </html>
</xsl:template>
<xsl:template match="sp">
    <p> <xsl:apply-templates select="l"/> </p>
</xsl:template>


-->