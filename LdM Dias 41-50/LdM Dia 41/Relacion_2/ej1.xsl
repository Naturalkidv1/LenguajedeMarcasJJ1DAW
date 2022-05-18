<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 1</title>
                <meta charset = "UTF-8"/>
                <style>
                    .rojo{color: red}
                    table, td, th{border: 1px solid black}
                    th{background-color: lightgray}
                    table{border-collapse: collapse; width: 80%; margin:0 auto; text-align: center}
                </style>
            </head>
            <body>
                <table>
                    <tr><th>Título</th><th>Autores</th><th>Editores</th></tr>
                    <xsl:for-each select="bib/libro">
                    <xsl:sort select="titulo" />
                    
                        <tr>
                        <td>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 100">
                                    <span class="rojo">
                                        <xsl:value-of select="titulo"/>
                                    </span>
                                    (Caro)
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="titulo"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <xsl:for-each select="autor">
                                <xsl:value-of select="nombre"/> 
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="apellido"/>
                                <br/>   
                            </xsl:for-each>
                        </td>
                        <td>
                            <xsl:for-each select="editor">
                                <xsl:value-of select="nombre"/> 
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="apellido"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="afiliacion"/>
                                <br/>     
                            </xsl:for-each>
                        </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>