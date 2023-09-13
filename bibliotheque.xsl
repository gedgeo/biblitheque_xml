<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : biblio.xsl
    Created on : 13 septembre 2023, 15:10
    Author     : bbandou
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>bibliotheque</title>
                <link href="bibliotheque.css" type=""></link>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    
   <xsl:template match="/">
       <h1>Allee<xsl:value-of select="@numero"/></h1>
            <hr>
                <xsl:apply-templates/>
            </hr>
    </xsl:template>
    
    <xsl:template match="/">
        <h3>Rayon<xsl:value-of select="@numero"/></h3>
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
            <xsl:value-of select="."/> 
            </td>
             <xsl:apply-templates/>
        </tr>
        
    </xsl:template>
    
    
    <xsl:template match="titre">
        <td class="titre">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    
    <xsl:template match="auteur">
        <td class="auteur">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    
    <xsl:template match="numero">
        <td class="numero">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    
</xsl:stylesheet>
