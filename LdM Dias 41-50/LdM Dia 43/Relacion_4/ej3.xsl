<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 3</title>
                <meta charset = "UTF-8"/>
            </head>
            <body>
                <xsl:for-each select="horario/dia">
                <xsl:sort select="numdia"/>
                    <div>
                    <xsl:choose>
                        <xsl:when test="numdia = 1">
                            Lunes
                        </xsl:when>
                        <xsl:when test="numdia = 2">
                            Martes
                        </xsl:when>
                        <xsl:when test="numdia = 3">
                            Miercoles
                        </xsl:when>
                        <xsl:when test="numdia = 4">
                            Jueves
                        </xsl:when>
                        <xsl:otherwise>
                            Viernes
                        </xsl:otherwise>
                    </xsl:choose>
                    <ul>
                        <xsl:for-each select="tarea">
                            <li>
                                <b><xsl:value-of select="nombre"/></b> 
                                    <xsl:if test="@prioridad">
                                        - Prioridad: <xsl:value-of select="@prioridad"/>
                                    </xsl:if>
                                <br/> De <xsl:value-of select="hora-ini"/> a <xsl:value-of select="hora-fin"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
            </xsl:for-each>


        </body>
    </html>
</xsl:template>

</xsl:stylesheet>