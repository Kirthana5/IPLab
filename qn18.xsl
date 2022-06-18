<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : qn18.xsl
    Created on : 18 June, 2022, 6:57 AM
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
                <title>Employee</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Project no</th>
                        <th>Name</th>
                        <th>Dept_no</th>
                    </tr>
                    <xsl:for-each select="root/project">
                        <tr>
                            <td>
                                <xsl:value-of select="project_no"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="name"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="dept_no"></xsl:value-of>
                            </td>
                        </tr>
                    </xsl:for-each>
                
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
