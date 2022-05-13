<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 2</title>
                <meta charset = "UTF-8"/>
            </head>
            <body>
                    <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <p><xsl:value-of select="nombre"/></p>
    </xsl:template>

</xsl:stylesheet>