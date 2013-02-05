$(document).ready(function() {

  if ($("#contact-box-map-canvas").length > 0) {
	var latlng, map, marker, myOptions;
    latlng = new google.maps.LatLng($("#latitude").val(), $("#longitude").val());
    var map_zoom = 14
    if($("#map_zoom").length > 0) {
        map_zoom = parseInt($("#map_zoom").val())
    }
    myOptions = {
      zoom: map_zoom,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("contact-box-map-canvas"), myOptions);
    marker = new google.maps.Marker({
      position: latlng,
      title: $("#location_name").val()
    });
    marker.setMap(map);

    if($("#marker_icon").length > 0) {
      marker.setIcon($("#marker_icon").val())
    }
  }
});
