<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all"
    version="3.0">
    <!-- HTML output toggle -->
    <!--<xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>-->
    <!-- plain text / GeoJSON output toggle -->
    <xsl:output method="text" indent="yes"/>


    <!-- Declare stylesheet variable -->
    <xsl:variable name="root" as="document-node()" select="/"/>

    <!-- Collect distinct location UIDs -->

        <!--Make your variables here.-->
        <!-- Tip: @ref uses # in front of the unique IDs (for reasons that have to do with HTML look-up conventions). 
                                You can get rid of it with something like this: translate($loc, '#', '') -->

    

    <!-- As a first, diagnostic step, you can test that the unique locations variable 
        is collecting what it is supposed to collect with something like the following code: -->
    <!--<xsl:template match="/">
        <br/>Unique locations: <xsl:value-of select="$loc_count"/>
        <xsl:for-each select="$unique_locations">
            <ul>
                <li><xsl:value-of select="."/></li>
            </ul>
     
        </xsl:for-each>
    </xsl:template>-->


    <!-- Main Code: Producing the GeoJSON
            count the number of uniqe locations mentioned in the text
            then interpolate the coordinates from the map function-->
    <xsl:template match="/">
        { 
        "type": "FeatureCollection", 
        "features": [
        
        
        <!--Your code here. (Hint: use a for-loop to iterate over your variable collecting unique location IDs.-->
        
        <!--    Hint: use an if statement to avoid an extra comma at the end, which will mess up your GeoJSON validity: <xsl:if test="position() != last()">, </xsl:if>-->
        
        
        ] 
        }
    </xsl:template>




    <!-- Location UID to look up coordinates -->
    <!--   This map is extracted from the Mitford Site Map with a separate transformation and then copied below for your convenience:
        https://digitalmitford.org/si.xml
    Take a look at how the XSLT transformation works: -->
    <xsl:variable name="coordinates" as="map(xs:string, xs:string)">
        <xsl:map>
            <xsl:map-entry key="'Abingdon'" select="'-1.2879528999999366,51.67078'"/>
            <xsl:map-entry key="'Adriatic_Sea'" select="'15,43'"/>
            <xsl:map-entry key="'Agincourt'" select="'6.236217000000011,48.73204'"/>
            <xsl:map-entry key="'Aldermaston'" select="'-1.150,51.383'"/>
            <xsl:map-entry key="'Alresford_Hamps'" select="'-1.1655574999999772,51.0856236'"/>
            <xsl:map-entry key="'Amsterdam'" select="'4.9,52.366667'"/>
            <xsl:map-entry key="'Antwerp_city'" select="'4.400278,51.217778'"/>
            <xsl:map-entry key="'Arborfield'" select="'-0.916,51.401'"/>
            <xsl:map-entry key="'Ashmolean_Old'" select="'-1.25519,51.75443'"/>
            <xsl:map-entry key="'AssizeHall_Reading'" select="'-0.967,51.4562'"/>
            <xsl:map-entry key="'Athens'" select="'23.727806,37.983972'"/>
            <xsl:map-entry key="'Athens_city'" select="'23.728056,37.984167'"/>
            <xsl:map-entry key="'Audley_End'" select="'0.22404600000004393,52.01970499999999'"/>
            <xsl:map-entry key="'Austria'" select="'13.333333,47.333333'"/>
            <xsl:map-entry key="'AveMariaLane'" select="'-0.1008,51.5142'"/>
            <xsl:map-entry key="'Baltimore'" select="'-76.616667,39.283333'"/>
            <xsl:map-entry key="'Banqueting_House'" select="'-0.12601,51.504589'"/>
            <xsl:map-entry key="'Barbican'" select="'-0.093889,51.519167'"/>
            <xsl:map-entry key="'Barton_street'" select="'-0.12778800000000956,51.4976695'"/>
            <xsl:map-entry key="'Basingstoke'" select="'-1.0876,51.2667'"/>
            <xsl:map-entry key="'Bath_city'" select="'-2.359903900000063,51.375801'"/>
            <xsl:map-entry key="'Bear_Inn'" select="'-0.9733182,51.4532774'"/>
            <xsl:map-entry key="'Bedford'" select="'-0.46665459999996983,52.1359729'"/>
            <xsl:map-entry key="'Berkshire'" select="'-1.185367700000029,51.4669939'"/>
            <xsl:map-entry key="'Berlin'" select="'13.383333,52.516667'"/>
            <xsl:map-entry key="'BernersSt'" select="'-0.1365471000000298,51.5170055'"/>
            <xsl:map-entry key="'Bickham_village'" select="'-3.506621999999993,51.163534'"/>
            <xsl:map-entry key="'BillingbearPk'" select="'-0.8182454000000234,51.4438638'"/>
            <xsl:map-entry key="'Birmingham_city'" select="'-1.8904009999999971,52.48624299999999'"/>
            <xsl:map-entry key="'Bisham_Abbey'" select="'-0.7774107999999842,51.5565589'"/>
            <xsl:map-entry key="'Bond_Street'" select="'-0.1448,1.5126'"/>
            <xsl:map-entry key="'Boston'" select="'-71.05888010000001,42.3600825'"/>
            <xsl:map-entry key="'Bramley_vil'" select="'51.329,-1.0613'"/>
            <xsl:map-entry key="'Bramshill_city'" select="'-0.9241507000000411,51.3486237'"/>
            <xsl:map-entry key="'Brazil'" select="'-51.92527999999999,-14.235004'"/>
            <xsl:map-entry key="'Brenta'" select="'11.173056,46.445556'"/>
            <xsl:map-entry key="'Brentford'" select="'-0.31011690000002545,51.486073'"/>
            <xsl:map-entry key="'Brescia'" select="'10.216667,45.541667'"/>
            <xsl:map-entry key="'Brighton'" select="'-0.13716299999998682,50.82253000000001'"/>
            <xsl:map-entry key="'Bristol'" select="'-2.5879099999999653,51.454513'"/>
            <xsl:map-entry key="'Brussels'" select="'4.35,50.85'"/>
            <xsl:map-entry key="'Buckinghamshire'" select="'-0.8094704999999749,51.8137073'"/>
            <xsl:map-entry key="'Bull_Ring'" select="'-1.894178,52.4777'"/>
            <xsl:map-entry key="'BurghfieldBr'" select="'-1.023278,51.429997'"/>
            <xsl:map-entry key="'Burghley_House'" select="'-0.452585,52.642393'"/>
            <xsl:map-entry key="'Cambridge_city'" select="'0.12181699999996454,52.205337'"/>
            <xsl:map-entry key="'Carisbrooke'" select="'-1.3117460999999366,50.6914722'"/>
            <xsl:map-entry key="'ChalkFarm'" select="'-0.14932299999998122,51.542981'"/>
            <xsl:map-entry key="'Charing_Cross'" select="'-0.12755000000004202,51.5073'"/>
            <xsl:map-entry key="'Cheshire_county'" select="'-2.610315700000001,53.23263439999999'"/>
            <xsl:map-entry key="'Chicago'" select="'-87.684722,41.836944'"/>
            <xsl:map-entry key="'Chippenham'" select="'-2.1195156999999654,51.461514'"/>
            <xsl:map-entry key="'Church_StMary'" select="'-0.9474631795216638,51.42490343319585'"/>
            <xsl:map-entry key="'Cincinnati'" select="'-84.51201960000003,39.1031182'"/>
            <xsl:map-entry key="'Coley_Berks'" select="'-0.9902848000000404,51.4432268'"/>
            <xsl:map-entry key="'Covent_Garden_Theatre'" select="'-0.12219759999993585,51.5129211'"/>
            <xsl:map-entry key="'Coventry_city'" select="'-1.510556,52.408056'"/>
            <xsl:map-entry key="'Crecy'" select="'1.8828919999999698,50.252468'"/>
            <xsl:map-entry key="'Devonshire'" select="'-3.5308750000000373,50.7155591'"/>
            <xsl:map-entry key="'Devonshire_county'" select="'-3.716667,50.716667'"/>
            <xsl:map-entry key="'Donnington_Castle'" select="'-1.3375,51.419444'"/>
            <xsl:map-entry key="'Dorset_county'" select="'2.3445,50.7488'"/>
            <xsl:map-entry key="'Drury_Lane_Theatre'" select="'-0.12037150000003294,51.5128536'"/>
            <xsl:map-entry key="'Dublin'" select="'-6.260309699999993,53.3498053'"/>
            <xsl:map-entry key="'Edinburgh'" select="'-3.188266999999996,55.953252'"/>
            <xsl:map-entry key="'Egham'" select="'-0.548,51.429'"/>
            <xsl:map-entry key="'EgyptianHall'" select="'-0.1427873969078064,51.507166523558354'"/>
            <xsl:map-entry key="'Elm_Court'" select="'-0.11087179183959961,51.51292076052162'"/>
            <xsl:map-entry key="'Eng_Channel'" select="'-0.3570560000000569,50.134664'"/>
            <xsl:map-entry key="'England'" select="'-1.1743197000000691,52.3555177'"/>
            <xsl:map-entry key="'Englefield_House'" select="'-1.106,51.443'"/>
            <xsl:map-entry key="'Essex_county'" select="'0.667366500000071,51.7659078'"/>
            <xsl:map-entry key="'Europe'" select="'15.430833,54.883056'"/>
            <xsl:map-entry key="'Exchange_Alley'" select="'-0.0857698857025396,51.51347939975846'"/>
            <xsl:map-entry key="'Exmouth'" select="'-3.413,50.62'"/>
            <xsl:map-entry key="'Farley_Hill'" select="'-0.9209210000000212,51.37339900000001'"/>
            <xsl:map-entry key="'FinchamsteadRidges'" select="'-0.840805,51.363928'"/>
            <xsl:map-entry key="'Forest_of_Ardennes'" select="'5.666667,50.25'"/>
            <xsl:map-entry key="'Fotheringay'" select="'-0.43752500000005057,52.526409'"/>
            <xsl:map-entry key="'France'" select="'2.213749000000007,46.227638'"/>
            <xsl:map-entry key="'Germany'" select="'10.451526000000058,51.165691'"/>
            <xsl:map-entry key="'Glasgow'" select="'-4.251805999999988,55.864237'"/>
            <xsl:map-entry key="'Grazeley_village'" select="'-0.9979935000000069,51.39478010000001'"/>
            <xsl:map-entry key="'Greece'" select="'22,39'"/>
            <xsl:map-entry key="'Guildhall_London'" select="'-0.09198200000002998,51.515819'"/>
            <xsl:map-entry key="'Hampshire_county'" select="'-1.3080628999999817,51.05769480000001'"/>
            <xsl:map-entry key="'Hampstead'" select="'-0.17617489999997815,51.5556461'"/>
            <xsl:map-entry key="'HampstTh'" select="'-0.17371060000004945,51.5437729'"/>
            <xsl:map-entry key="'Hampton_Court'" select="'-0.3375,51.403333'"/>
            <xsl:map-entry key="'Hardwick_Hall'" select="'-1.3087262000000237,53.168791'"/>
            <xsl:map-entry key="'Hatton_Garden'" select="'-0.10828430000003664,51.5198762'"/>
            <xsl:map-entry key="'Haymarket_Theatre'"
                select="'-0.13155540000002475,51.50850639999999'"/>
            <xsl:map-entry key="'Henley'" select="'-0.903,51.5357'"/>
            <xsl:map-entry key="'Hertfordshire_county'"
                select="'-0.2376744000000599,51.80978229999999'"/>
            <xsl:map-entry key="'Hinchinbrooke'" select="'-0.20055899999999838,52.327831'"/>
            <xsl:map-entry key="'Holborn'" select="'-0.11847569999997631,51.5172619'"/>
            <xsl:map-entry key="'HollandHouse'" select="'-0.20237580000002708,51.5027175'"/>
            <xsl:map-entry key="'Holmby_House'" select="'-0.985606999999959,52.303791'"/>
            <xsl:map-entry key="'Holyhead'" select="'-4.633037999999942,53.309441'"/>
            <xsl:map-entry key="'HounslowHeath'" select="'-0.3874074999999948,51.462704'"/>
            <xsl:map-entry key="'Hungary'" select="'20,47'"/>
            <xsl:map-entry key="'Ilsley'" select="'-1.3008503913281573,51.53243230753439'"/>
            <xsl:map-entry key="'India'" select="'78.96288000000004,20.593684'"/>
            <xsl:map-entry key="'Ireland'" select="'-7.692053600000008,53.1423672'"/>
            <xsl:map-entry key="'Isle_of_Wight'" select="'-1.3047340000000531,50.69384789999999'"/>
            <xsl:map-entry key="'Israel'" select="'34.85161199999993,31.046051'"/>
            <xsl:map-entry key="'Italy'" select="'12.567379999999957,41.87194'"/>
            <xsl:map-entry key="'Jerusalem'" select="'35.21370999999999,31.768319'"/>
            <xsl:map-entry key="'Kensington'" select="'-0.1932793999999376,51.5010095'"/>
            <xsl:map-entry key="'Kentucky'" select="'-84.27001789999997,37.8393332'"/>
            <xsl:map-entry key="'Kew_village'" select="'-0.284890799999971,51.475251'"/>
            <xsl:map-entry key="'Kibes_Ln'" select="'-0.994434,51.415929'"/>
            <xsl:map-entry key="'Kings_Bench_Prison'" select="'-0.09155820000000858,51.5016303'"/>
            <xsl:map-entry key="'LakeDistrict'" select="'-3.0926513671875,54.46365264504479'"/>
            <xsl:map-entry key="'Lancaster'" select="'-2.8007399000000532,54.046575'"/>
            <xsl:map-entry key="'LaTrappe'" select="'0.53741500000001,48.617649'"/>
            <xsl:map-entry key="'Leicester'" select="'-1.1397591999999577,52.6368778'"/>
            <xsl:map-entry key="'Lincolnshire'" select="'-0.16012460000001738,52.9451889'"/>
            <xsl:map-entry key="'Lisbon_city'" select="'-9.139336599999979,38.7222524'"/>
            <xsl:map-entry key="'Lisson_Grove'" select="'-0.16831469999999626,51.5247788'"/>
            <xsl:map-entry key="'Lockinge'" select="'-1.388,51.584'"/>
            <xsl:map-entry key="'Loddon'" select="'-0.880001,51.50169'"/>
            <xsl:map-entry key="'London_city'" select="'-0.12775829999998223,51.5073509'"/>
            <xsl:map-entry key="'London_Stock_Exchange'"
                select="'-0.0857698857025396,51.51347939975846'"/>
            <xsl:map-entry key="'Ludgate_Hill'" select="'-0.10247660000004544,51.5139928'"/>
            <xsl:map-entry key="'Lyme_Regis'" select="'-2.9366390000000138,50.725156'"/>
            <xsl:map-entry key="'Madrid'" select="'-3.7037901999999576,40.4167754'"/>
            <xsl:map-entry key="'Magdalen_Coll'" select="'-1.2470926999999392,51.7522849'"/>
            <xsl:map-entry key="'Manchester'" select="'-2.2452,53.479'"/>
            <xsl:map-entry key="'Marlow'" select="'-0.7769422000000077,51.5719443'"/>
            <xsl:map-entry key="'Meillerie'" select="'6.719229000000041,46.407097'"/>
            <xsl:map-entry key="'Mexico'" select="'-102.55278399999997,23.634501'"/>
            <xsl:map-entry key="'Milan'" select="'9.19,45.466944'"/>
            <xsl:map-entry key="'Mint_new'" select="'-0.072916,51.509289,'"/>
            <xsl:map-entry key="'Mortimer_Comm'" select="'-1.0629936999999927,51.3770005'"/>
            <xsl:map-entry key="'Mortimer_WEnd'" select="'-1.0914,51.3693'"/>
            <xsl:map-entry key="'Muscovy'" select="'37.6173,55.755826'"/>
            <xsl:map-entry key="'Naples'" select="'14.268124400000033,40.8517746'"/>
            <xsl:map-entry key="'Naseby'" select="'-0.9885334000000512,52.3954519'"/>
            <xsl:map-entry key="'New_York_city'" select="'-74.00594130000002,40.7127837'"/>
            <xsl:map-entry key="'Newbery_house_St_Queen33'"
                select="'-0.12163909072409469,51.515305662435175,'"/>
            <xsl:map-entry key="'Newbury'" select="'-1.323113899999953,51.401409'"/>
            <xsl:map-entry key="'NewmanSt'" select="'-0.135544100000061,51.5174283'"/>
            <xsl:map-entry key="'Northumberland'" select="'-2.078413800000021,55.2082542'"/>
            <xsl:map-entry key="'Oakhampton_House'" select="'-2.30756109999993,52.3199693'"/>
            <xsl:map-entry key="'Odiham'" select="'-0.939,51.254'"/>
            <xsl:map-entry key="'Opera_House'" select="'-0.12006460946319568,51.511683730658035'"/>
            <xsl:map-entry key="'Overton'" select="'-1.2615,51.2439'"/>
            <xsl:map-entry key="'Oxford_city'" select="'-1.2577263000000585,51.7520209'"/>
            <xsl:map-entry key="'Oxford_Univ'" select="'-1.2547036999999364,51.7566341'"/>
            <xsl:map-entry key="'Oxfordshire'" select="'-1.2464674000000286,51.7612056'"/>
            <xsl:map-entry key="'Painted_Chmbr'" select="'-0.12480919999995876,51.4994794'"/>
            <xsl:map-entry key="'Palestine'" select="'35.1453,31.6253'"/>
            <xsl:map-entry key="'Pamber_forest'" select="'-1.116927,1.346552'"/>
            <xsl:map-entry key="'PaperMill_Marlow'" select="'-0.926,51.406'"/>
            <xsl:map-entry key="'Paris'" select="'2.3522219000000177,48.85661400000001'"/>
            <xsl:map-entry key="'Park_Windsor'" select="'-0.624722,51.439167'"/>
            <xsl:map-entry key="'Philadelphia'" select="'-75.16522150000003,39.9525839'"/>
            <xsl:map-entry key="'Piccadilly'" select="'-0.152073200000018,51.5030787'"/>
            <xsl:map-entry key="'Pingewood'" select="'-1.006622,51.424640'"/>
            <xsl:map-entry key="'Plymouth_city'" select="'-4.14265649999993,50.3754565'"/>
            <xsl:map-entry key="'Portsmouth_Blockhouses'" select="'-1.109465900000032,50.800531'"/>
            <xsl:map-entry key="'Pump_Court'" select="'-0.11061770000003435,51.5129777'"/>
            <xsl:map-entry key="'Ravenna'" select="'12.20352939999998,44.4183598'"/>
            <xsl:map-entry key="'Reading_city'" select="'-0.9781302999999753,51.4542645'"/>
            <xsl:map-entry key="'Reading_School'" select="'-0.9542480999999725,51.4486089'"/>
            <xsl:map-entry key="'ReadingTownHall'" select="'-0.97005,51.45695'"/>
            <xsl:map-entry key="'Red_Cow_Inn'" select="'-0.9698036313056946,51.45014414388085'"/>
            <xsl:map-entry key="'Regents_Park'" select="'-0.15696939999997994,51.5312705'"/>
            <xsl:map-entry key="'Rhine'" select="'7.866922700000032,49.345124'"/>
            <xsl:map-entry key="'Rialto'" select="'12.335898000000043,45.4379842'"/>
            <xsl:map-entry key="'Richmond'" select="'-0.3037420000000566,51.46131099999999'"/>
            <xsl:map-entry key="'Rome'" select="'12.496365500000024,41.9027835'"/>
            <xsl:map-entry key="'Savona'" select="'8.42938909999998,44.3425496'"/>
            <xsl:map-entry key="'Scotland'" select="'-4.266667,55.85,'"/>
            <xsl:map-entry key="'Seine_river'" select="'0.206667,49.433889'"/>
            <xsl:map-entry key="'Selborne_village'" select="'-0.942562,51.1239'"/>
            <xsl:map-entry key="'Serpentine'" select="'-0.169444,51.505278'"/>
            <xsl:map-entry key="'SeymourCt'" select="'-0.7832693999999947,51.58117069999999'"/>
            <xsl:map-entry key="'Sheffield_Castle'" select="'-1.4639856000000009,53.3843613'"/>
            <xsl:map-entry key="'Shinfield'" select="'-0.9478325999999697,51.4083203'"/>
            <xsl:map-entry key="'Shinfield_parish'" select="'-0.947,51.408'"/>
            <xsl:map-entry key="'Silchester'" select="'-1.1005384999999706,51.3538459'"/>
            <xsl:map-entry key="'SilchesterAmphitheatre'" select="'-1.0825,51.357222'"/>
            <xsl:map-entry key="'Sloane_St'" select="'-0.15897680000000491,51.49719830000001'"/>
            <xsl:map-entry key="'Soho_Sq'" select="'-0.132222,51.515278,'"/>
            <xsl:map-entry key="'Somerset_House'" select="'-0.11714800000004288,51.511059'"/>
            <xsl:map-entry key="'Somersetshire'" select="'-2.926230700000019,51.105097'"/>
            <xsl:map-entry key="'Southhampton_city'" select="'-1.404350900000054,50.90970040000001'"/>
            <xsl:map-entry key="'Spain'" select="'-4,40'"/>
            <xsl:map-entry key="'Spencers_Wood'" select="'-0.9722,51.3944'"/>
            <xsl:map-entry key="'Spice_Islands'" select="'129.383333,-3.15'"/>
            <xsl:map-entry key="'St_Cyr'" select="'2.0633,48.8008'"/>
            <xsl:map-entry key="'St_James_Church_Bram'" select="'-1.0759,51.3259'"/>
            <xsl:map-entry key="'St_JohnsWood'" select="'-1.0759,51.3259'"/>
            <xsl:map-entry key="'St_Lawrence_Church'" select="'-0.9693580000000566,51.4563856'"/>
            <xsl:map-entry key="'St_Marks_Place'" select="'12.338056,45.433889'"/>
            <xsl:map-entry key="'St_Michaels_Church_St_Albans'"
                select="'-0.3559866000000511,51.75295699999999'"/>
            <xsl:map-entry key="'St_QueenG'" select="'-0.12101546898777185,51.51571315852602'"/>
            <xsl:map-entry key="'Staffordshire'" select="'-2.116111,52.806944'"/>
            <xsl:map-entry key="'StJamesSt'" select="'-0.1391075000000228,51.5063355'"/>
            <xsl:map-entry key="'StJohns_Place'" select="'-0.1751,51.5361,'"/>
            <xsl:map-entry key="'StPauls'" select="'-0.0983506000000034,51.5138453'"/>
            <xsl:map-entry key="'StQuintin_School'" select="'-0.16063770000005206,51.497205'"/>
            <xsl:map-entry key="'Strand'" select="'-0.119,51.5114'"/>
            <xsl:map-entry key="'Stratfield_Saye'" select="'-0.995947000000001,51.348916'"/>
            <xsl:map-entry key="'Stratford_upon_Avon_city'" select="'-1.7082980000000134,52.19173'"/>
            <xsl:map-entry key="'Strawberry_Hill'" select="'-0.3345635000000584,51.4382596'"/>
            <xsl:map-entry key="'Swallowfield_Park'" select="'-0.948717,51.383781'"/>
            <xsl:map-entry key="'Swallowfield_village'" select="'-0.959,51.378'"/>
            <xsl:map-entry key="'Switzerland'" select="'7.45,46.95'"/>
            <xsl:map-entry key="'Tadley'" select="'-1.1376,51.3506'"/>
            <xsl:map-entry key="'Temple'" select="'-0.1110459000000219,51.5123032'"/>
            <xsl:map-entry key="'Thames'" select="'-0.6160753000000341,51.5855735'"/>
            <xsl:map-entry key="'Theale'" select="'-1.0776,51.437'"/>
            <xsl:map-entry key="'Thermopylae'" select="'22.562778,38.805278'"/>
            <xsl:map-entry key="'ThreeMileCross'" select="'-0.9734518999999864,51.4047211'"/>
            <xsl:map-entry key="'Totnes_village'" select="'-3.6857969999999796,50.433741'"/>
            <xsl:map-entry key="'Tours_France'" select="'0.6848400000000083,47.394144'"/>
            <xsl:map-entry key="'Tower_of_London'" select="'-0.07594930000004751,51.50811239999999'"/>
            <xsl:map-entry key="'Tripoli'" select="'13.191338299999984,32.8872094'"/>
            <xsl:map-entry key="'Twickenham'" select="'-0.3352459999999837,51.44458100000001'"/>
            <xsl:map-entry key="'USA'" select="'-95.71289100000001,37.09024'"/>
            <xsl:map-entry key="'Vaucluse'" select="'5.14320680000003,44.0565054'"/>
            <xsl:map-entry key="'Vendee'" select="'-1.426667,46.670556'"/>
            <xsl:map-entry key="'Venice'" select="'12.335833,45.4375'"/>
            <xsl:map-entry key="'Vict_Theatre'" select="'-0.1096,51.5022'"/>
            <xsl:map-entry key="'Vienna'" select="'16.37381890000006,48.2081743'"/>
            <xsl:map-entry key="'Vigo'" select="'-8.712447,42.231356'"/>
            <xsl:map-entry key="'Wales'" select="'-3.183333,51.483333'"/>
            <xsl:map-entry key="'Ware'" select="'-0.031389,51.810833'"/>
            <xsl:map-entry key="'Warwick_Gaol'" select="'-1.5891,52.2829'"/>
            <xsl:map-entry key="'Waterloo_Belgium'" select="'4.399099999999976,50.71469'"/>
            <xsl:map-entry key="'Watlington'" select="'-1.388,51.584'"/>
            <xsl:map-entry key="'Westminster_Abbey'" select="'-0.12730970000006891,51.4992921'"/>
            <xsl:map-entry key="'Westmnst_Palace'" select="'-0.12480919999995876,51.4994794'"/>
            <xsl:map-entry key="'Westmnstr'" select="'-0.1332326000000421,51.5001754'"/>
            <xsl:map-entry key="'Whitehall'" select="'-0.125556,51.504444,'"/>
            <xsl:map-entry key="'Whitehall_Palace'" select="'-0.12600050000003193,51.5045858'"/>
            <xsl:map-entry key="'Whiteknights'" select="'-0.9427994999999783,51.440426'"/>
            <xsl:map-entry key="'WhitleyWood'" select="'-0.96171,51.41632'"/>
            <xsl:map-entry key="'Wiltshire_county'" select="'-1.916667,51.333333'"/>
            <xsl:map-entry key="'Winchester_city'" select="'-1.3101420000000417,51.059771'"/>
            <xsl:map-entry key="'Windermere'" select="'-2.936111,54.358333'"/>
            <xsl:map-entry key="'Windsor_Castle'" select="'-0.604167,51.483333'"/>
            <xsl:map-entry key="'Windsor_city'" select="'-0.6135759999999664,51.4817279'"/>
            <xsl:map-entry key="'Wokingham_city'" select="'-0.8338610000000699,51.410457'"/>
            <xsl:map-entry key="'Yorkshire_county'" select="'-1.0872979000000669,53.95996510000001'"
            />
        </xsl:map>
    </xsl:variable>



</xsl:stylesheet>
