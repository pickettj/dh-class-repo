<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="#all"
    version="3.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" indent="yes"/>

    <!-- ============================================================
     TASK: Text edition — many XML files, ONE HTML output per file.

     This stylesheet reads the same Shakespeare corpus and produces
     a separate HTML page for each play, showing Act 3, Scene 1.
     The structure is the same as batch_stats.xsl — corpus variable,
     xsl:initial-template — but now xsl:result-document lives inside
     an xsl:for-each loop, firing once per document. Output filenames
     are generated dynamically using position().

     Before you run: set the XML input dropdown in oXygen to (None),
     and make sure shakespeare_simple/ is in the same directory as
     this stylesheet.
     ============================================================ -->






</xsl:stylesheet>
