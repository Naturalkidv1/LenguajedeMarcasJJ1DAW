<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 8</title>
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
                <ul>
                    <xsl:apply-templates/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
      <li>
          <xsl:value-of select="@id"/><br/>
          <xsl:value-of select="nombre"/>, Ciclo Formativo de Grado 
          <xsl:value-of select="grado"/> creado en 
          <xsl:value-of select="decretoTitulo/@año"/>
      </li>
    </xsl:template>

</xsl:stylesheet>