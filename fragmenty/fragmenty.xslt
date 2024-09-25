<?xml version="1.0" encoding="UTF-8"?>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Document</title>
</head>
<body>


<iaixsl:text disable-output-escaping="yes"><![CDATA[&lt;/body&gt;&lt;/html&gt;]]></iaixsl:text>
<iaixsl:attribute name="aria-label"><iai:variable vid="Szukaj"/></iaixsl:attribute>

<iaixsl:if test="contains(/shop/navigation/current/@curr_url, '%2Fidomods')"> 
  <iaixsl:value-of select="/shop/@baseurl"></iaixsl:value-of> 
 </iaixsl:if> 

<iaixsl:when test="/shop/page/@type = 'blog-list'">
  <title>
    Blog - Strona <iaixsl:value-of select="/shop/page/blogitems/navigation/item[@type='current']/@counter"/> – SOLLUX
  </title>
</iaixsl:when>

   
  
</body>
</html>







    <iaixsl:when test="not(position() = last()) and /shop/navigation//item[@ni = $current_ni]/@link">
                        <a>
                          <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                          <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                        </a>
                      </iaixsl:when>

 <iaixsl:if test="page/@type != 'login'">

   </iaixsl:if>


      <iaixsl:when test="page/@type = 'login'">
            <iaixsl:if test="page/login/response/@type = 'give login'">
              <li>
                <iaixsl:attribute name="class"><![CDATA[bc-active bc-]]><iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                <span><iai:variable vid="Przypomnij hasło"/></span>
              </li>
            </iaixsl:if>
            <iaixsl:if test="not(page/login/response/@type = 'give login')">
              <iaixsl:choose>
                <iaixsl:when test="/shop/basket/@login">
                  <li>
                    <iaixsl:attribute name="class"><![CDATA[bc-active bc-]]><iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                    <span><iai:variable vid="Twoje konto"/></span>
                  </li>
                </iaixsl:when>
                <iaixsl:when test="page/login/response/@type = 'no login'">
                  <li>
                    <iaixsl:attribute name="class"><![CDATA[bc-active bc-]]><iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                    <span><iai:variable vid="Logowanie"/></span>
                  </li>
                </iaixsl:when>
              </iaixsl:choose>
            </iaixsl:if>
          </iaixsl:when>
          

strzałka
        <li>
                  <iaixsl:attribute name="class"><![CDATA[bc-active bc-]]><iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span></span>
                </li>




                <iaixsl:if test="contains(/shop/navigation/current/@curr_url, '%2Fidomods')"> 
    <iaixsl:value-of select="/shop/@baseurl"></iaixsl:value-of> 
 </iaixsl:if> 


 <iaixsl:when test="/shop/page/@type = 'blog-list'">
    <title>
        Blog - Strona <iaixsl:value-of select="/shop/page/blogitems/navigation/item[@type='current']/@counter"/> – SOLLUX
    </title>
</iaixsl:when>


<!-- linki -->
  <a href="{item/@link}" class="socialProof_left__content">
    <div>  
    </div>
</a>


<!-- literal -->

              <div class="product__promotion">
                     <iai:variable vid="PROMOCJA"/>
              </div>

<!-- warunek -->
    <iaixsl:if test="@ni != '360' and @ni != '1892'">
                <iaixsl:text disable-output-escaping="yes"><![CDATA[ rel="nofollow"]]></iaixsl:text>
     </iaixsl:if>

         <iaixsl:when test="not(position() = last()) and /shop/navigation//item[@ni = $current_ni]/@link">
                        <a>
                          <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                          <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                        </a>
                      </iaixsl:when>

<!-- dodawanie atrybutów do elementu  -->
       <div class="product__buy-section" data-id="67186">
           <iaixsl:attribute name="data-id">
                <iaixsl:value-of select="@id"></iaixsl:value-of>
           </iaixsl:attribute>
       </div>


<!-- dowawanie klasy -->

        <iaixsl:attribute name="class"> <![CDATA[eeeeee]]></iaixsl:attribute>


<!-- dodawanie klasy warunkowo -->

 <iaixsl:if test="language/@id = 'pol'">
     <iaixsl:attribute name="class"><![CDATA[conditionClass]]></iaixsl:attribute>
 </iaixsl:if>



<!-- petla -->

                  <iaixsl:for-each select="page/mainpage2/item">      </iaixsl:for-each>


<!-- choose   -->
                    <iaixsl:choose>
                            <iaixsl:when test="/shop/page/@price_type = 'net'">
                                <iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_net_formatted"/>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_formatted"/>
                            </iaixsl:otherwise>
                    </iaixsl:choose>


<!-- menu linki -->

  <iaixsl:if test="/shop/navigation5//item[@id='1832']">
      <section id="popular_categories" class="popular_categories">
            <h2 class="popular_categories_header"><iaixsl:value-of select="navigation5/item/@name"></iaixsl:value-of> </h2>

              <div class="popular_categories_subtitle">
                     <iai:variable vid="Z pewnością znajdziesz coś dla siebie."/>
              </div>
            
            <ul class="popular_categories_items">
            
              <iaixsl:for-each select="/shop/navigation5/item[@id='1832']/item">
                <iaixsl:sort select="@product_quantity" data-type="number" order="descending"/>
                <li class="popular_categories_item ">
                  <a href="{@link}" title="{@name}" class="popular_categories_link">
                           <span><xsl:value-of select="@name"/></span>
                  </a>
                </li>
               </iaixsl:for-each>

            </ul>
      </section>
    </iaixsl:if>