<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 1</title>
                <meta charset = "UTF-8"/>
            </head>
            <body>
                <h1>Información de mis Libros</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
        <p>
            <b>Título: </b>
            <xsl:value-of select="titulo"/>
            <b> -- Autor: </b>
            <xsl:value-of select="autor"/>
            (<xsl:value-of select="autor/@fechaNacimiento"/>)
            <b> -- Fecha Publicación: </b>
            <xsl:value-of select="fechaPublicacion/@año"/>
        </p>
    </xsl:template>

</xsl:stylesheet>