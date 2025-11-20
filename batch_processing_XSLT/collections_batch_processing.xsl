<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
    exclude-result-prefixes="#all"
    version="3.0" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>
    
    <!--BATCH PROCESSING: collection() function and inline paths-->
    
    
    
<!--Reading in a corpus without any subdirectories-->
    <!--note as="document-node()+: the plus clarifies that you may have one or more
    document nodes, which describes an XML corpus-->
    <!--if you only specify the path name, any non-XML files in the directory will
    result in an error. therefore, you can add syntax that tells the collection()
    function to pick up only XML documents: 
    collection('./shakespeare_simple?select=*.xml')
    the question mark syntax signals that additional specifications for interpreting
    the path name are to come; the asterisk matches any file name; the .xml matches 
    the literal extension .xml.
    this effectively filters out any non-XML documents (including hidden files created
    by git or the operating system)-->
    
    
    <xsl:variable name="shakespeare-corpus" as="document-node()+"
        select="collection('./shakespeare_simple?select=*.xml')"/>
    <xsl:template name="xsl:initial-template">
        <root>
            <metadata>There are <xsl:value-of select="$shakespeare-corpus//sp => 
                count()"/> speeches in the entire
                corpus.</metadata>
            <xsl:apply-templates select="$shakespeare-corpus"/>
        </root>
    </xsl:template>
    <xsl:template match="/">
        <d>Found a play: <xsl:apply-templates select="//fileDesc/titleStmt/title"/></d>
    </xsl:template>
    
    
<!--Reading in a corpus *recursively*, i.e., will include all nested 
    sub-directories in the collection as well.-->
    
    <!--note that the question mark syntax after the path name in select=
        signals  additional options that govern how the preceding path is understood
        this is how you activate the recursive option
    -->
    
    <!--<xsl:variable name="shakespeare-corpus" as="document-node()+"
        select="collection('./shakespeare_recursive?recurse=yes;select=*.xml')"/>
    
    <xsl:template name="xsl:initial-template">
        <root>
            <metadata>There are <xsl:value-of select="$shakespeare-corpus//sp => 
                count()"/> speeches in the entire
                corpus.</metadata>
            <xsl:apply-templates select="$shakespeare-corpus"/>
        </root>
    </xsl:template>
    <xsl:template match="/">
        <d>Found a play: <xsl:apply-templates select="//fileDesc/titleStmt/title"/></d>
    </xsl:template>-->
    
  <!--  
    If the code immediately above is working, the output should look like this:
    
    <root>
        <metadata>There are 7432 speeches in the entire
            corpus.</metadata>
        <d>Found a play: The Merchant of Venice</d>
        <d>Found a play: Antony and Cleopatra</d>
        <d>Found a play: As You Like It</d>
        <d>Found a play: The Comedy of Errors</d>
        <d>Found a play: A Midsummer Night’s Dream</d>
        <d>Found a play: Macbeth</d>
        <d>Found a play: Coriolanus</d>
        <d>Found a play: Julius Caesar</d>
        <d>Found a play: Hamlet</d>
    </root>
    -->
    
    
</xsl:stylesheet>