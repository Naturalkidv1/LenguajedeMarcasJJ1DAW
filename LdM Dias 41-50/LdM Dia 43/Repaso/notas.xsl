<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 1</title>
                <meta charset = "UTF-8"/>
                <style>
                    table{border: 2px solid grey; width: 60%; margin:0 auto; text-align: center}
                    th{background-color: #417194}
                    .rojo{background-color: #ff0040}
                    tr, th, td{border: 1px solid black}
                </style>
            </head>
            <body>
                <xsl:for-each select="notas/alumno">
                    <h1>
                        Calificaciones de la convocatoria de <xsl:value-of select="@convocatoria"/>
                    </h1>
                    <table>
                        <tr>
                            <th colspan="3">Datos</th>
                            <th colspan="3">Notas</th>
                        </tr>
                        <tr>
                            <th class="rojo">Nombres</th>
                            <th class="rojo">Apellidos</th>
                            <th class="rojo">Tareas</th>
                            <th class="rojo">Cuestionarios</th>
                            <th class="rojo">Examen</th>
                            <th class="rojo">Final</th>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="apellidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="tareas"/>
                            </td>
                            <td>
                                <xsl:value-of select="cuestionarios"/>
                            </td>
                            <td>
                                <xsl:value-of select="examen"/>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="final &gt; 5">
                                        Suficiente
                                    </xsl:when>
                                    <xsl:when test="final &gt; 6">
                                        Bien
                                    </xsl:when>
                                    <xsl:when test="final &gt; 7">
                                        Notable
                                    </xsl:when>
                                    <xsl:when test="final &gt; 9">
                                        Notable
                                    </xsl:when>
                                    <xsl:when test="final &lt; 10">
                                        Sobresaliente
                                    </xsl:when>

                                </xsl:choose>
                            </td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>

    </xsl:template>


</xsl:stylesheet>