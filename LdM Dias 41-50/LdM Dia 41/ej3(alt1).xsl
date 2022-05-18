<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 3</title>
                <meta charset = "UTF-8"/>
                <style>
                    .rojo{color: red}
                    .amarillo{color: yellow}
                    .verde{color: green}
                </style>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <xsl:sort select="nombre" order="descending"/>
                        <li>
                            <xsl:choose>
                                <xsl:when test="decretoTitulo/@año &lt; 2009">
                                    <span class="rojo">
                                        <xsl:value-of select="nombre"/>
                                    </span>
                                </xsl:when>

                                <xsl:when test="decretoTitulo/@año = 2009">
                                    <span class="amarillo">
                                        <xsl:value-of select="nombre"/>
                                    </span>
                                </xsl:when>

                                <xsl:otherwise>
                                    <span class="verde">
                                        <xsl:value-of select="nombre"/>
                                    </span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </li>

                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>