<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <head>
        <style>
        #employee {
          font-family: Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        
        #employee td, #employee th {
          border: 1px solid #ddd;
          padding: 8px;
        }
        
        #employee tr:nth-child(even){background-color: #f2f2f2;}
        
        #employee tr:hover {background-color: #ddd;}
        
        #employee th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #04AA6D;
          color: white;
        }
        </style>
        </head>
  <body>
      <h1>Employees</h1>
      <table id='employee'>
          <tr>
              <th>Name</th>
              <th>Home Phone</th>
              <th>Work phone</th>
              <th>Mobile phone</th>
              <th>Email</th>
              <th>Address</th>
              <th>Address</th>
          </tr>
                      <xsl:for-each select="empContact/info">
                      <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="email"/></td>
                        <td><xsl:value-of select="phones/phone[@type='mobile']"/></td>
                       <td><xsl:value-of select="phones/phone[@type='home']"/></td>
                        <td><xsl:value-of select="phones/phone[@type='work']"/></td>
<td><xsl:value-of select="addresses/address1/."/></td>
<td><xsl:value-of select="addresses/address2/."/></td>
                      </tr>
                      </xsl:for-each>

      </table>
      </body>
    </html>
</xsl:template>
</xsl:stylesheet>