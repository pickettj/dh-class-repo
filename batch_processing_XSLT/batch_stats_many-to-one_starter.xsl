<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="#all"
    version="3.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" indent="yes"/>

    <!-- ============================================================
     TASK: Corpus statistics — many XML files, ONE HTML output.

     This stylesheet reads a directory of Shakespeare XML files
     as a single corpus and produces one HTML page of statistics:
     aggregate counts for the whole corpus, then a per-play table
     with speech counts, word counts, and average words per speech.

     The key moves: a corpus variable using collection(), an
     xsl:initial-template entry point (because there is no default
     input document), and a single hard-coded xsl:result-document.

     Before you run: set the XML input dropdown in oXygen to (None),
     and make sure shakespeare_simple/ is in the same directory as
     this stylesheet.
     ============================================================ -->






</xsl:stylesheet>
