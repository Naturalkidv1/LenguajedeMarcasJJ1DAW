<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 4</title>
                <meta charset = "UTF-8"/>
            </head>
            <body>
                <ol>
                    <xsl:for-each select="bib/libro">
                        <xsl:choose>
                            <xsl:when test="precio &lt; 100">
                                <li>
                                    <xsl:value-of select="titulo"/>
                                </li>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>