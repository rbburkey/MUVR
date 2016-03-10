
<script src="//maps.google.com/maps/api/js?v=3.18&sensor=false&client=&key=&libraries=geometry&language=&hl=&region="></script>
<script src="//google-maps-utility-library-v3.googlecode.com/svn/tags/markerclustererplus/2.0.14/src/markerclusterer_packed.js"></script>
<script src='//google-maps-utility-library-v3.googlecode.com/svn/tags/infobox/1.1.9/src/infobox_packed.js' type='text/javascript'></script> <!-- only if you need custom infoboxes -->

<div class="jumbotron">
<div class="container">
  <h1>All Jobs Map</h1>
  <p>This is a template for a simple marketing or informational website. </p>


  <p id="notice"><%= notice %></p>
<br>
<div style='width: 1200px;'>
  <div id="map" style='width: 1150px; height: 400px;'></div>
</div>

<script type="text/javascript">
handler = Gmaps.build('Google');
handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
  markers = handler.addMarkers(<%=raw @hash.to_json %>);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});
</script>
<%=raw @hash.to_json %>
</div>
</div>
