<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Cartelera de Cine</title>
            <style>
                body { 
                    font-family: Arial, sans-serif; 
                }

                table { 
                    border-collapse: collapse; 
                    width: 80%; 
                    margin: 20px auto; 
                }

                th, td { 
                    border: 1px solid #dddddd; 
                    padding: 8px; 
                    text-align: left; 
                }

                th { 
                    background-color: #f2f2f2; 
                }
            </style>
        </head>
        <body>
            <h2 style="text-align:center;">Cartelera de Cine</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Director</th>
                    <th>Año</th>
                    <th>Clasificación</th>
                    <th>Género</th>
                    <th>Duración</th>
                </tr>
                <xsl:for-each select="carteleracine/pelicula">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="director"/></td>
                        <td><xsl:value-of select="anio"/></td>
                        <td><xsl:value-of select="clasificacion"/></td>
                        <td><xsl:value-of select="genero"/></td>
                        <td><xsl:value-of select="duracion"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>