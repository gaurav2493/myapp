<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pink Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<script language="javascript" type="text/javascript">
function clearText(field) {
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script language="javascript" type="text/javascript" src="scripts/mootools-1.2.1-core.js"></script>
<script language="javascript" type="text/javascript" src="scripts/mootools-1.2-more.js"></script>
<script language="javascript" type="text/javascript" src="scripts/slideitmoo-1.1.js"></script>
<script language="javascript" type="text/javascript">
window.addEvents({
    'domready': function () { /* thumbnails example , div containers */
        new SlideItMoo({
            overallContainer: 'SlideItMoo_outer',
            elementScrolled: 'SlideItMoo_inner',
            thumbsContainer: 'SlideItMoo_items',
            itemsVisible: 5,
            elemsSlide: 3,
            duration: 200,
            itemsSelector: '.SlideItMoo_element',
            itemWidth: 140,
            showControls: 1
        });
    },

});
</script>
</head>
<body>
<div id="wrapper">
  <div id="menu">
 <tiles:insertAttribute name="menu" />
  </div>
  <!-- //////////////////////// -->
  <div id="header_bar">
   <tiles:insertAttribute name="header_bar" />
  </div>
  <div class="cleaner"></div>
  
  <div id="sidebar">
    <div class="sidebar_top"></div>
    <div class="sidebar_bottom"></div>
    <div class="sidebar_section">
      <tiles:insertAttribute name="login" />
      <div class="cleaner"></div>
    </div>
    <div class="sidebar_section">
      <h2>Categories</h2>
      <tiles:insertAttribute name="categories" />
    </div>
    <div class="sidebar_section">
      <h2>Discounts</h2>
      <tiles:insertAttribute name="discounts" />
    </div>
  </div>
  <!-- end of sidebar -->
  
  <div id="content">
    <div id="latest_product_gallery">
      <h2>Featured Products</h2>
      <div id="SlideItMoo_outer">
        <div id="SlideItMoo_inner">
          <tiles:insertAttribute name="gallery" />
        </div>
      </div>
    </div>
    <!-- end of latest_content_gallery -->
    <div class="content_section">
      <tiles:insertAttribute name="contentsection" />
    </div>
    <div class="content_section">
      <h2>Our Products</h2>
      <tiles:insertAttribute name="products" />
      <div class="cleaner"></div>
      <div class="button_01"><a href="#">View All</a></div>
    </div>
  </div>
  <!-- end of content -->
</div>
<!-- end of wrapper -->
<div id="footer_wrapper">
  <div id="footer">
    <ul class="footer_menu">
      <li><a href="#">Home</a></li>
      <li><a href="#">Blah blah</a></li>
      <li><a href="#">Flash Resources</a></li>
      <li><a href="#">Gallery</a></li>
      <li><a href="#">Company</a></li>
      <li class="last_menu"><a href="#">Contact</a></li>
    </ul>
    Copyright &copy; testing app</div>
  <!-- end of footer -->
</div>
<!-- end of footer_wrapper -->
</body>
</html>
  
