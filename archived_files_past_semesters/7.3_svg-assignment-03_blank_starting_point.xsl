<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <!-- ================================================================ -->
    <!-- Stylesheet variables (preset)                                    -->
    <!-- ================================================================ -->
    <!-- number of pixels vertical for the Y axis -->
    <xsl:variable name="max_height" as="xs:double" select="500"/>
    <!-- default spacing variable -->
    <xsl:variable name="spacing" as="xs:double" select="100"/>
    <!-- number of pixels horizontal for X axis -->
    <xsl:variable name="max_width" as="xs:double" select="($spacing) * count(//election)"/>
    <!-- ================================================================ -->
    <!-- Templates                                                        -->
    <!-- ================================================================ -->
    <xsl:template match="/">
        <svg height="{$max_height + 200}" width="{$max_width + 250}"
            viewBox="-50 -{$max_height + 100} {$max_width + 200} {$max_height + 200}">
           
            
            <!-- ==================================================== -->
            <!-- Create per-election bubbles and vertical ruling      -->
            <!-- ==================================================== -->
            <xsl:apply-templates select="//election"/>
            <!-- ==================================================== -->
            <!-- Create horizontal ruling with labels                 -->
            <!-- ==================================================== -->
            <!-- this axis is electoral votes, of which there are 538
                    so we want ruling lines in increments of 100 -->
            
            
            <!-- FIRST CHALLENGE: IN-CLASS CODE HERE -->
            
            
        </svg>
    </xsl:template>
    
    <xsl:template match="election">
        <!-- ============================================================ -->
        <!-- Template variables                                           -->
        <!-- ============================================================ -->
        
        
        <!-- SECOND CHALLENGE: IN-CLASS CODE HERE -->
        
        
        <!-- ============================================================ -->
        <!-- Create bubbles                                               -->
        <!-- ============================================================ -->
        <xsl:apply-templates/>
        <!-- ============================================================ -->
        <!-- Create vertical ruling line and label                        -->
        <!-- ============================================================ -->
        
        <!-- SECOND CHALLENGE: IN-CLASS CODE HERE -->
        
    </xsl:template>
    <xsl:template match="candidate">
        <!-- ============================================================ -->
        <!-- Process individual candidates                                -->
        <!-- ============================================================ -->
        
        
        <!-- THIRD CHALLENGE: IN-CLASS CODE HERE (x-pos, y-pos, radius) -->
        
        
        <!-- FOURTH CHALLENGE: IN-CLASS CODE HERE (inner circle, outer circle) -->
     
     
        <!-- FIFT CHALLENGE: IN-CLASS CODE HERE (bubble color if statements) -->
        
       
    </xsl:template>
</xsl:stylesheet>


