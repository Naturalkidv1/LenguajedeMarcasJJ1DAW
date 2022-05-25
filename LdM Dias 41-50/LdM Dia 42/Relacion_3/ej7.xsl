<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 7</title>
                <meta charset = "UTF-8"/>
                <style>
                    .rojo {color: red}
                    .azul{color: blue}
                    .verde{color: green}
                    table, td, th{border: 1px solid black}
                    th{background-color: lightgray}
                    table{border-collapse: collapse; width: 80%; margin:0 auto; text-align: center}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Código</th>
                        <th>Artículo</th>
                        <th>Cantidad</th>
                        <th>Imágen</th>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                        <xsl:sort select="articulo"/>
                        <tr>
                            <td>
                                <xsl:value-of select="codigo"/>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="precio &lt; 100">
                                        <span class="verde">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:when test="precio &lt; 1000">
                                        <span class="azul">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="rojo">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:otherwise>
                                </xsl:choose>

                            </td>
                            <td>
                                <xsl:value-of select="cantidad"/>
                            </td>
                            <td>
                                <!-- <img src="direccion" /// src="Imágenes/&lt;xsl:value-of select='imagen'/&gt;"/>-->
                            <img width="180" height="120"><xsl:attribute name="src"><xsl:value-of select="imagen"></xsl:value-of>
                            </xsl:attribute></img>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>