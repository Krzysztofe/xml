<?xml version="1.0" encoding="UTF-8"?><iai:component><iai:componentsdata><cdata-start/>
    <iaixsl:if test="/shop/navigation5//item[@id='2016']">
      <section id="popular_categories" class=" section">
            <ul class="popular_categories__items">
              <iaixsl:for-each select="/shop/navigation5/item[@id='2016']/item">
                <iaixsl:sort select="@product_quantity" data-type="number" order="descending"/>
                <li class="popular_categories__item ">
                  <a href="{@link}" title="{@name}" class="main_producers__link">
                           <span><xsl:value-of select="@name"/></span>
                  </a>
                
                </li>
              </iaixsl:for-each>

        </ul>
      </section>
    </iaixsl:if>
<cdata-end/></iai:componentsdata></iai:component>




<!-- na verostilo -->

  <div id="main_categories" class="mb-5">
    <!--<h2 class="headline"><span class="headline_name"><![CDATA[Popularne kategorie]]></span></h2>-->

    <div class="main_categories__list">

    <iaixsl:if test="/shop/navigation2//item[@id='951']">
          <section id="popular_categories" class=" section">
            <ul class="popular_categories__items">
            
              <iaixsl:for-each select="/shop/navigation2/item[@id='951']/item">
                <iaixsl:sort select="@product_quantity" data-type="number" order="descending"/>
                <li class="popular_categories__item ">
                  <a href="{@link}" title="{@name}" class="main_producers__link">
                           <span><xsl:value-of select="@name"/></span>
                  </a>
                
                </li>
               </iaixsl:for-each>

            </ul>
      </section>
    </iaixsl:if>



    </div>
  </div>