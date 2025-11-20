<!--The purpose of this transformation is to take the coordinates in the Mitford Site Index and use them to
create a XSL map, which - when copied into a separate transformation - will provide coordinates 
for the location unique ID in the Mitford document corpus.-->
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all"
    version="3.0">
    <!-- HTML output toggle -->
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <!-- plain text / GeoJSON output toggle -->
    <!--<xsl:output method="text" indent="yes"/>-->



    <xsl:key name="geoKey" match="place" use="location/geo"/>


    <xsl:template match="/">
        <!-- initial template setting up the map superstructure -->


        <!-- XSLT will read the map as code applying to this transformation
        unless you "escape" it by specifically calling for the literal text:-->

        <xsl:text disable-output-escaping="yes">
            &lt;xsl:variable name=&quot;coordinates&quot; as=&quot;map(xs:string, xs:string)&quot;&gt;
            &lt;xsl:map&gt;
        </xsl:text>

        <xsl:apply-templates select="//div[@type eq 'places']"/>

        <xsl:text disable-output-escaping="yes">
            &lt;/xsl:map&gt;
            &lt;/xsl:variable&gt;
        </xsl:text>


    </xsl:template>

    <xsl:template match="place">
        <!-- The site index has lattitude first, then longitude second, 
        whereas GeoJSON requires the inverse. So, as a first step, we need to
        extract the lattitude and longitude into separate variables:-->
        
        <!-- The if test is to ignore locations that do not have coordinates. 
            contains() doesn't understand regex, which makes for an annoyingly long or statement...
            there might be a better way to do it.-->
        <xsl:if
            test="contains(location/geo, '1') or contains(location/geo, '2') or contains(location/geo, '3') or contains(location/geo, '4') or contains(location/geo, '5') or contains(location/geo, '6') or contains(location/geo, '7') or contains(location/geo, '8') or contains(location/geo, '9')">
            <xsl:variable name="latitude" select="substring-before(location/geo, ' ')"/>
            <xsl:variable name="longitude" select="substring-after(location/geo, ' ')"/>

            <!-- Then insert the location UID into the map key, and the lat-long into the key value: -->
            <xsl:text disable-output-escaping="yes">&lt;xsl:map-entry key=&quot;&#39;</xsl:text>
            <xsl:value-of select="@xml:id"/>
            <xsl:text disable-output-escaping="yes">&#39;&quot; select=&quot;&#39;</xsl:text>
            <xsl:value-of select="concat($longitude, ',', $latitude)"/>
            <xsl:text disable-output-escaping="yes">&#39;&quot;/&gt;</xsl:text>
        </xsl:if>
    </xsl:template>



    <!--Target output format for reference
-->
    <!--<xsl:variable name="coordinates" as="map(xs:string, xs:string)">
        <xsl:map>
            <xsl:map-entry key="'commonplace'" select="'-79.91877256652567,40.441063867901882'"/>
            <xsl:map-entry key="'ascend'" select="'-79.8961075427762,40.45097067558358'"/>
            <xsl:map-entry key="'posvar'" select="'-79.95426787957021,40.44125235992703'"/>
        </xsl:map>
    </xsl:variable>-->


    <!--Example of the input XML hierarchy for reference:-->

    <!--<div type="places">
        <listPlace sortKey="histPlaces">
            <place xml:id="Abingdon">
                <placeName>Abingdon, Berkshire, England</placeName>
                <placeName>
                    <addName>Abingdon on Thames</addName>
                </placeName>
                <placeName>
                    <addName>Abingdon-on-Thames</addName>
                </placeName>
                <settlement>Abingdon</settlement>
                <region>Berkshire</region>
                <region>Oxfordshire</region>
                <country>England</country>
                <location>
                    <geo>51.67078 -1.2879528999999366</geo>
                </location>
                <note resp="#lmw">Abingdon (now called Abingdon on Thames or
                    Abingdon-on-Thames,) is a market town in Oxfordshire. In <persName ref="#MRM">Mitford</persName>’s time, it was the county town of the county of
                    <placeName ref="#Berkshire">Berkshire</placeName>. It was reassigned to
                    Oxfordshire in 1974. In the nineteenth century, the Assize Courts alternated
                    between <placeName ref="#Reading_city">Reading</placeName> and <placeName ref="#Abingdon">Abingdon</placeName>, according to <persName ref="#coles">Coles</persName>.</note>
            </place>-->

</xsl:stylesheet>
