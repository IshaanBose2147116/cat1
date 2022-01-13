<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Employee Management System</title>
            <link rel="stylesheet" href="./style.css" />
        </head>
        <body>
            <div class="container">
                <h1>Employee Management System</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Email</th>
                        <th>MobNum</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                    </tr>
                    <xsl:for-each select="company/employee">
                        <tr>
                            <td><xsl:value-of select="./@emp-id" /></td>
                            <td><xsl:value-of select="emp-name" /></td>
                            <td><xsl:value-of select="emp-age" /></td>
                            <td><xsl:value-of select="emp-salary" /></td>
                            <td><xsl:value-of select="emp-emailID" /></td>
                            <td><xsl:value-of select="emp-phonenum" /></td>
                            <td><xsl:value-of select="emp-designation" /></td>
                            <xsl:choose>
                                <xsl:when test="emp-age &lt; 40">
                                    <td>Developer</td>
                                </xsl:when>
                                <xsl:when test="emp-age >= 40 and emp-age &lt;= 49">
                                    <td>Team Leader</td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>Associate Project Manager</td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>