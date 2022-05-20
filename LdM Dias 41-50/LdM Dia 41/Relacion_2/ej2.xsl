<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 2</title>
                <meta charset = "UTF-8"/>
                <style>
                    .rojo{background-color: red}
                    table, td, th{border: 1px solid black}
                    th{background-color: lightgray}
                    table{border-collapse: collapse; width: 80%; margin:0 auto; text-align: center}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Precio</th>
                        <th>Titulo</th>
                        <th>Año de Publicación</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" />

                        <tr>

                            <td>
                                <xsl:value-of select="precio"/>
                            </td>

                            <xsl:choose>
                                <xsl:when test="precio &gt; 100">
                                    <td class="rojo">
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                            
                            <td>
                                <i><xsl:value-of select="@año"/></i>
                            </td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>