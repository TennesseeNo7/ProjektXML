<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                extension-element-prefixes="exsl"
                version="1.0">
    <xsl:output method="html"/>


    <xsl:template match="/">

        <html>
            <link rel="stylesheet" type="text/css" href="style.css" />
            <head>
                <title>Sklep z akcesoriami komputerowymi</title>
            </head>
            <body>
                <div class="container-main">
                    <h1 id="title">Sklep Komputerowy</h1>
                    <div>
                        <h2 class="section">Produkty</h2>
                        <h3 class="product-name">Procesory</h3>
                        <div class="container-add">
                            <button class="button-add" id="add-processor">
                                <img src="add.png" width="20%" height="20%"/>
                            </button>
                        </div>
                        <div class="products" id="processors">
                            <xsl:for-each select="sklep/produkty/procesory">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </div>
                        <h3 class="product-name">Pamięci RAM</h3>
                        <div class="container-add">
                            <button class="button-add" id="add-ram">
                                <img src="add.png" width="20%" height="20%"/>
                            </button>
                        </div>
                        <div class="products" id="roms">
                            <xsl:for-each select="sklep/produkty/ramy">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </div>
                        <h3 class="product-name">Pamięci ROM</h3>
                        <div class="container-add">
                            <button class="button-add" id="add-rom">
                                <img src="add.png" width="20%" height="20%"/>
                            </button>
                        </div>
                        <div class="products" id="rams">
                            <xsl:for-each select="sklep/produkty/romy">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
                <script src="script.js"><br/>
                </script>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="procesor">
        <div class="single-product">
            <div class="info">
                model: <p class="model-base"><xsl:value-of select="./model"/></p>
                producent: <p class="producent-base"><xsl:value-of select="./producent"/></p>
            </div>
            <div class="data">
                taktowanie: <p class="data-mod1"><xsl:value-of select="./dane/czestotliwosc"/><xsl:value-of select="./specyfikacje/czestotliwosc/@jednostka"/></p>
                rdzenie: <p class="data-mod2"><xsl:value-of select="./dane/rdzenie"/></p>
            </div>
            <div class="value">
                cena: <p class="value-base"><xsl:value-of select="./cena"/><xsl:value-of select="./cena/@waluta"/></p>
            </div>
            <div class="container-buttons">
                <p><button class="button-product button-edit"><img src="edit.png" width="20%" height="20%"/></button></p>
                <p><button class="button-product button-delete"><img src="remove.png" width="20%" height="20%"/></button></p>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="ram">
        <div class="single-product">
            <div class="info">
                model: <p class="model-base"><xsl:value-of select="./model"/></p>
                producent: <p class="producent-base"><xsl:value-of select="./producent"/></p>
            </div>
            <div class="data">
                taktowanie: <p class="data-mod1"><xsl:value-of select="./specyfikacje/czestotliwosc"/><xsl:value-of select="./specyfikacje/czestotliwosc/@jednostka"/></p>
                pamiec: <p class="data-mod2"><xsl:value-of select="./specyfikacje/pamiec"/><xsl:value-of select="./specyfikacje/pamiec/@jednostkaPam"/></p>
            </div>
            <div class="value">
                cena: <p class="value-base"><xsl:value-of select="./cena"/><xsl:value-of select="./cena/@waluta"/></p>
            </div>
            <div class="container-buttons">
                <p><button class="button-product button-edit"><img src="edit.png" width="20%" height="20%"/></button></p>
                <p><button class="button-product button-delete"><img src="remove.png" width="20%" height="20%"/></button></p>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="rom">
        <div class="single-product">
            <div class="info">
                model: <p class="model-base"><xsl:value-of select="./model"/></p>
                producent: <p class="producent-base"><xsl:value-of select="./producent"/></p>
            </div>
            <div class="data">
                taktowanie: <p class="data-mod1"><xsl:value-of select="./specyfikacje/czestotliwosc"/><xsl:value-of select="./specyfikacje/czestotliwosc/@jednostka"/></p>
                pamiec: <p class="data-mod2"><xsl:value-of select="./specyfikacje/pamiec"/><xsl:value-of select="./specyfikacje/pamiec/@jednostkaPam"/></p>
            </div>
            <div class="value">
                cena: <p class="value-base"><xsl:value-of select="./cena"/><xsl:value-of select="./cena/@waluta"/></p>
            </div>
            <div class="container-buttons">
                <p><button class="button-product button-edit"><img src="edit.png" width="20%" height="20%"/></button></p>
                <p><button class="button-product button-delete"><img src="remove.png" width="20%" height="20%"/></button></p>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>