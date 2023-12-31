<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="bibliotheque">
        <html>
            <head>
                <title>bibliotheque</title>
        <link href="bibliotheque.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="allee">
        <h1>Allee<xsl:value-of select="@numero"/></h1>
        <hr/>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="rayon">
        <h2>Rayon<xsl:value-of select="@numero"/></h2>
        <table>
            <tr>
                <th>Categorie</th>
                <th>Titre</th>
                <th>Ateur</th>
                <th>Numero</th>
            </tr>
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    
    <xsl:template match="ouvrage">
        <tr>
            <td>
                <xsl:value-of select="@type"/> 
            </td>
            <xsl:apply-templates/>
        </tr>
        
    </xsl:template>
    
    
    
    <xsl:template match="titre">
        <td class="titre">
            <xsl:value-of select="."/>
        </td>
        <xsl:if test="../auteur = false()">
            <td class="null"></td>
            <xsl:if test="../numero = false()">
            <td class="null"></td>
        </xsl:if>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="auteur">
        <td class="auteur">
            <xsl:value-of select="."/>
        </td>
        <xsl:if test="../numero=false()">
            <td class="null"></td>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="numero">
        <td class="numero">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    
</xsl:stylesheet>

