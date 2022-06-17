<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : June 2, 2022, 2:22 PM
    Author     : HARSHINI
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
                <title>Student Information</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Roll Number</th>
                        <th>Depatment</th>
                        <th>Marks</th>
                    </tr>        
                    <xsl:for-each select="root/student">
                        <xsl:choose>
                            <xsl:when test="marks='pass'">
                                <tr bgcolor="green">
                                    <td><xsl:value-of select="name"></xsl:value-of></td>
                                    <td><xsl:value-of select="rollno"></xsl:value-of></td>
                                    <td><xsl:value-of select="dept"></xsl:value-of></td>
                                    <td><xsl:value-of select="marks"></xsl:value-of></td>                                    
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr bgcolor="red">
                                    <td><xsl:value-of select="name"></xsl:value-of></td>
                                    <td><xsl:value-of select="rollno"></xsl:value-of></td>
                                    <td><xsl:value-of select="dept"></xsl:value-of></td>
                                    <td><xsl:value-of select="marks"></xsl:value-of></td>
                                </tr>                                
                            </xsl:otherwise>
                        </xsl:choose>                    
                    </xsl:for-each>
                </table>    
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>