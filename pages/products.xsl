<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- Main template that matches the root element -->
    <xsl:template match="/products">
        <html>
            <head>
                <title>Chocolate Products</title>
            </head>
            <body>
                <h1>Chocolates</h1>

                <!-- Loop through the 'product' elements under the 'chocolates' category -->
                <xsl:for-each select="category[@id='chocolates']/product">
                    <div class="product">
                        <!-- Display only the product name -->
                        <p><strong>Product Name:</strong> <xsl:value-of select="name"/></p>
                    </div>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
