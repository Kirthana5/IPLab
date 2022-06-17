<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : q10.xsl
    Created on : 17 June, 2022, 11:31 PM
    Author     : Admin
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
                <title>Book Catalog</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>ISBN No</th>
                        <th>Author</th>
                        <th>Publication</th>
                        <th>Price</th>
                    </tr> 
                    <xsl:for-each select="root/book">
                        <xsl:choose>
                            <xsl:when test="author='xxx'">
                                <tr bgcolor="greenyellow">
                                    <td><xsl:value-of select="title"></xsl:value-of></td>
                                    <td><xsl:value-of select="isbn_no"></xsl:value-of></td>
                                    <td><xsl:value-of select="author"></xsl:value-of></td>
                                    <td><xsl:value-of select="publication"></xsl:value-of></td>                                    
                                    <td><xsl:value-of select="price"></xsl:value-of></td> 
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td><xsl:value-of select="title"></xsl:value-of></td>
                                    <td><xsl:value-of select="isbn_no"></xsl:value-of></td>
                                    <td><xsl:value-of select="author"></xsl:value-of></td>
                                    <td><xsl:value-of select="publication"></xsl:value-of></td>                                    
                                    <td><xsl:value-of select="price"></xsl:value-of></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
