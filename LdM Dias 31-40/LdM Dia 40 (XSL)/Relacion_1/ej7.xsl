<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 7</title>
                <meta charset = "UTF-8"/>
                <style>
                    table,td,th{border:1px solid black}
                    table{border-collapse:collapse}
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="ies/@nombre"/>
                </h1>
                <p>Página web: <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ies/@web"/>
                    </xsl:attribute>

                    <xsl:value-of select="ies/@web"/>
                </a>
            </p>
            <table>
                <tr>
                    <th>Nombre del Ciclo</th>
                    <th>Grado</th>
                    <th>Año del Título</th>
                </tr>
                <xsl:apply-templates/>
            </table>

        </body>
    </html>
</xsl:template>

<xsl:template match="ciclo">
    <tr>
        <td>
            <xsl:value-of select="nombre"/>
        </td>
        <td>
            <xsl:value-of select="grado"/>
        </td>
        <td>
            <xsl:value-of select="decretoTitulo/@año"/>
        </td>
    </tr>
</xsl:template>

</xsl:stylesheet>