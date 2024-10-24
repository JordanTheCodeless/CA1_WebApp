<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <script xmlns="http://www.w3.org/1999/xhtml" src="../scripts.script.js"></script>
    <xsl:output method="html" indent="yes" />
    <!-- Main template matching the root <products> element -->
    <xsl:template match="/products">
        <html>
            <head>

                <link href="style.css" rel="stylesheet" type="text/css"></link>
                <title>Jordans Candy Land Products</title>
                <script href="../scripts/script.js" type="text/javascript"></script>
            </head>
            <body>
                <!-- This will be the navigation menu -->
                <header>
                    <div id="navbar">
                        <div class="navLogo">
                            <!-- <img src="" alt=""/> -->
                        </div>
                        <div class="navList">
                            <ul>
                                <li>
                                    <a href="./index.html">Home</a>
                                </li>
                                <li>
                                    <a href="./products.xml">Products</a>
                                </li>
                                <li>
                                    <a href="./about.html">About us</a>
                                </li>
                                <li>
                                    <a href="#contactInfo">Contact us</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </header>
                <!-- Main content for chocolates category -->
                <main>
                   <div id="productsWrapper">
                        <h1>Products</h1>
                        <div class="category">
                            <h2>Chocolates</h2>
                                <xsl:apply-templates select="category[@id = 'chocolates']/product" />

                        </div>
                        <div class="category">
                            <h2>Candies</h2>

                                <xsl:apply-templates select="category[@id = 'candies']/product" />

                        </div>
                        <div class="category">
                            <h2>Cookies</h2>
                             <xsl:apply-templates select="category[@id = 'cookies']/product" />
                        </div>
                    </div>
            </main>
                <!-- Footer will display contact info and company name -->
                <footer id="contactInfo">
                    <p>Contact us</p>
                </footer>
            </body>
        </html>
    </xsl:template>
    <!-- Template for each <product> -->
    <xsl:template match="product">
        <div class="product">
            <div class="imageProd">
            <img>
                <xsl:attribute name="src">
                <xsl:value-of select="image"/>
               </xsl:attribute>
            </img>
        </div>
            <p>
                <strong>Product Name:</strong><br/>
                <xsl:value-of select="name" />
            </p>
            <p>
                <strong>Price:</strong><br/>
                <xsl:value-of select="unit-price" />
            </p>
            <p>
                <strong>Stock Status:</strong><br/>
                <xsl:value-of select="stock-status" />
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>