<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <img src="imagenes/Logo-Delicias.png" class="delicias" alt="Logo-Delicias"></img>
            <head>
                <meta charset="UTF-8"/>
                <nav class="myDiv">
                    <li><a href="index.html"> INICIO </a></li>
                    <li><a href="sobre_mi.html"> SOBRE MÍ </a></li>
                    <li><a href="recetas.xml"> RECETAS </a></li>
                    <li><a href="contacto.html"> CONTACTO </a></li>
                    <li><a href="otras_cosas.html"> FORMULARIOS </a></li>
                  </nav>
                <title>Recetas</title>
                <link rel="stylesheet" href="CSS/estilo.css"/>
            </head>
            <body>
                <xsl:apply-templates select="//recetas"/>
                <footer>
                    <p>Derechos reservados © Delicias 2023</p>
                </footer>
                <footer class="pie-de-pagina">
                    <h3>Xarxes socials</h3>
                    <div class="redes-sociales">
                        <a href="" target="_blank">Facebook</a>
                        <a href="" target="_blank">Twitter</a>
                        <a href="" target="_blank">Instagram</a>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="recetas">
        <h1>Recetas</h1>
        <section class="recetas">
            <ul>
                <xsl:apply-templates select="receta"/>
            </ul>
        </section>
    </xsl:template>

    <xsl:template match="receta">
        <li>
            <img src="{imagen}" alt="{nombre}" class="imagen"/>
            <div class="receta">
                <h2><xsl:value-of select="nombre"/></h2>
                <p><xsl:value-of select="descripcion"/></p>
                <ul>
                    <li class="dato"><strong>Nivel de dificultad:</strong> <xsl:value-of select="dificultad"/></li>
                    <li class="dato"><strong>Ingredientes:</strong> <xsl:value-of select="ingredientes"/></li>
                </ul>
            </div>
        </li>
    </xsl:template>
</xsl:stylesheet>
