<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!--  m²   -->

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación XSLT</title>
                <style>
                    td, img{height:100px}
                    .esp{padding-left:50px}
                </style>
            </head>
            <body>
                <xsl:for-each select="geografia">
                    <xsl:for-each select="continentes">
                       
                        <h1>Información de los Continentes</h1>
                        <ol>
                            <xsl:for-each select="continente">
                            <xsl:sort select="@nombre" order="ascending"/>
                                <li>
                                    <h2>
                                        <xsl:value-of select="@nombre"/>
                                    </h2>
                                    <ul>
                                        <xsl:for-each select="pais">
                                            <xsl:sort select="." order="descending"/>
                                            <li>
                                                <a>
                                                    <xsl:atribute name="href">#<xsl:value-of select="."></xsl:value-of></xsl:atribute>
                                                    <xsl:value-of select="."/>
                                                </a>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </li>

                            </xsl:for-each>
                        </ol>

                    </xsl:for-each>

                    <xsl:for-each select="paises">
                        <h1>Información de los Paises</h1>
                        <ol>
                            <xsl:for-each select="pais">
                            <xsl:sort select="@nombre" order="ascending"/>
                            <li>
                                <h2>
                                    <xsl:atribute name="id"><xsl:value-of select="@nombre"></xsl:value-of></xsl:atribute>
                                    <xsl:value-of select="@nombre"></xsl:value-of>
                                </h2>
                                <table>
                                    <tr>
                                        <td>
                                            <p><b>Sistema de Gobierno:</b><xsl:text> </xsl:text><xsl:value-of select="sistema"/></p>
                                            <p><b>Superficie:</b><xsl:text> </xsl:text><xsl:value-of select="superficie"/> m² </p>
                                            <p><b>Idioma:</b><xsl:text> </xsl:text><xsl:value-of select="idioma"/></p>
                                            <p><b>Moneda:</b><xsl:text> </xsl:text><xsl:value-of select="moneda"/></p>
                                        </td>
                                        <td class="esp">
                                            <img width="180" height="120">
                                                <xsl:atribute name="src">Img/<xsl:value-of select="."></xsl:value-of>.png</xsl:atribute>
                                            </img>
                                        </td>
                                    </tr>
                                </table>   
                            </li>
                        </xsl:for-each>
                        </ol>

                    </xsl:for-each>

                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>