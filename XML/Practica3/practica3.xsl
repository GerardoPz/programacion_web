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
            </style>
        </head>
        <body>
            <h2 style="text-align:center;">Cursos de Ingenieria en Sistemas Computacionales</h2>
            
                <xsl:for-each select="semestres/curso">
                    <ol>
                        <li>
                            <xsl:value-of select="nombre"/>
                        </li>
                    </ol>
                    <ul>
                        <li>
                            <xsl:value-of select="docente"/>
                        </li>
                        <li>
                            <xsl:value-of select="horario"/>
                        </li>
                        <li>
                            <xsl:value-of select="salon"/>
                        </li>
                    </ul>
                </xsl:for-each>
            
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>