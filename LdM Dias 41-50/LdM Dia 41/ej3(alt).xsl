<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 3</title>
                <meta charset = "UTF-8"/>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo">
                    <xsl:sort select="nombre" order="descending"/>
                    <xsl:if test="decretoTitulo/@año &lt;= 2009">
                        <li><xsl:value-of select="nombre"/></li>
                    </xsl:if>
                    
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>