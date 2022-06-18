<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : qn19.xsl
    Created on : 18 June, 2022, 7:13 AM
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
                <title>Customer</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>CID</th>
                        <th>CNAME</th>
                        <th>ANO</th>
                        <th>ATYPE</th>
                        <th>BALANCE</th>
                    </tr>
                    <xsl:for-each select="/root/customer">
                        <xsl:variable name="id" select="cid"></xsl:variable>
                        <tr>
                            <td>
                                <xsl:value-of select="cid"></xsl:value-of>
                                
                            </td>
                            <td>
                                <xsl:value-of select="cname"></xsl:value-of>
                            </td>
                            
                            <xsl:for-each select="root/account">
                                
                                <xsl:choose>
                                    <xsl:when test='cid="$id"'>
                                        <td>
                                            <xsl:value-of select="ano"></xsl:value-of>
                                        </td>
                                        <td>
                                            <xsl:value-of select="atype"></xsl:value-of>
                                        </td>
                                        <td>
                                            <xsl:value-of select="balance"></xsl:value-of>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
