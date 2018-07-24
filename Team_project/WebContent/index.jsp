<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지도 API - 주소로 지도 표시하기</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=iH3JPEiBnRvVUXvRbBpd&submodules=geocoder"></script>

</head>
<body>
	<div id="map" style="width: 100%; height: 400px;"></div>
	<script>
	var MARKER_ICON_URL = './img/sp_pins_spot_v3.png';
	var MARKER_HIGHLIGHT_ICON_URL = './img/sp_pins_spot_v3_over.png';
	var COLORS = ['#45ABD9', '#6154B6', '#E43736', '#44AE3F', '#F6D200', '#344554'];

	var MARKER_SPRITE_X_OFFSET = 29;
	var MARKER_SPRITE_Y_OFFSET = 50;

	var MARKER_SPRITE_POSITION = {

	    "A0": [0, 0],
	    "B0": [MARKER_SPRITE_X_OFFSET, 0],
	    "C0": [MARKER_SPRITE_X_OFFSET*2, 0],
	    "D0": [MARKER_SPRITE_X_OFFSET*3, 0],
	    "E0": [MARKER_SPRITE_X_OFFSET*4, 0],
	    "F0": [MARKER_SPRITE_X_OFFSET*5, 0],
	    "G0": [MARKER_SPRITE_X_OFFSET*6, 0],
	    "H0": [MARKER_SPRITE_X_OFFSET*7, 0],
	    "I0": [MARKER_SPRITE_X_OFFSET*8, 0],

	    "A1": [0, MARKER_SPRITE_Y_OFFSET],
	    "B1": [MARKER_SPRITE_X_OFFSET, MARKER_SPRITE_Y_OFFSET],
	    "C1": [MARKER_SPRITE_X_OFFSET*2, MARKER_SPRITE_Y_OFFSET],
	    "D1": [MARKER_SPRITE_X_OFFSET*3, MARKER_SPRITE_Y_OFFSET],
	    "E1": [MARKER_SPRITE_X_OFFSET*4, MARKER_SPRITE_Y_OFFSET],
	    "F1": [MARKER_SPRITE_X_OFFSET*5, MARKER_SPRITE_Y_OFFSET],
	    "G1": [MARKER_SPRITE_X_OFFSET*6, MARKER_SPRITE_Y_OFFSET],
	    "H1": [MARKER_SPRITE_X_OFFSET*7, MARKER_SPRITE_Y_OFFSET],
	    "I1": [MARKER_SPRITE_X_OFFSET*8, MARKER_SPRITE_Y_OFFSET]

	};

	var MARKER_ICON_URL = './img/sp_pins_spot_v3.png';

	var MARKER_SPRITE_X_OFFSET = 29;
	var MARKER_SPRITE_Y_OFFSET = 50;

	var MARKER_SPRITE_POSITION = {

	    "A0": [0, 0],
	    "B0": [MARKER_SPRITE_X_OFFSET, 0],
	    "C0": [MARKER_SPRITE_X_OFFSET*2, 0],
	    "D0": [MARKER_SPRITE_X_OFFSET*3, 0],
	    "E0": [MARKER_SPRITE_X_OFFSET*4, 0],
	    "F0": [MARKER_SPRITE_X_OFFSET*5, 0],
	    "G0": [MARKER_SPRITE_X_OFFSET*6, 0],
	    "H0": [MARKER_SPRITE_X_OFFSET*7, 0],
	    "I0": [MARKER_SPRITE_X_OFFSET*8, 0],

	    "A1": [0, MARKER_SPRITE_Y_OFFSET],
	    "B1": [MARKER_SPRITE_X_OFFSET, MARKER_SPRITE_Y_OFFSET],
	    "C1": [MARKER_SPRITE_X_OFFSET*2, MARKER_SPRITE_Y_OFFSET],
	    "D1": [MARKER_SPRITE_X_OFFSET*3, MARKER_SPRITE_Y_OFFSET],
	    "E1": [MARKER_SPRITE_X_OFFSET*4, MARKER_SPRITE_Y_OFFSET],
	    "F1": [MARKER_SPRITE_X_OFFSET*5, MARKER_SPRITE_Y_OFFSET],
	    "G1": [MARKER_SPRITE_X_OFFSET*6, MARKER_SPRITE_Y_OFFSET],
	    "H1": [MARKER_SPRITE_X_OFFSET*7, MARKER_SPRITE_Y_OFFSET],
	    "I1": [MARKER_SPRITE_X_OFFSET*8, MARKER_SPRITE_Y_OFFSET],

	    "A2": [0, MARKER_SPRITE_Y_OFFSET*2],
	    "B2": [MARKER_SPRITE_X_OFFSET, MARKER_SPRITE_Y_OFFSET*2],
	    "C2": [MARKER_SPRITE_X_OFFSET*2, MARKER_SPRITE_Y_OFFSET*2],
	    "D2": [MARKER_SPRITE_X_OFFSET*3, MARKER_SPRITE_Y_OFFSET*2],
	    "E2": [MARKER_SPRITE_X_OFFSET*4, MARKER_SPRITE_Y_OFFSET*2],
	    "F2": [MARKER_SPRITE_X_OFFSET*5, MARKER_SPRITE_Y_OFFSET*2],
	    "G2": [MARKER_SPRITE_X_OFFSET*6, MARKER_SPRITE_Y_OFFSET*2],
	    "H2": [MARKER_SPRITE_X_OFFSET*7, MARKER_SPRITE_Y_OFFSET*2],
	    "I2": [MARKER_SPRITE_X_OFFSET*8, MARKER_SPRITE_Y_OFFSET*2]
	};

	var map = new naver.maps.Map('map', {
	    center: new naver.maps.LatLng(37.3595704, 127.105399),
	    zoom: 10
	});

	var bounds = map.getBounds(),
	    southWest = bounds.getSW(),
	    northEast = bounds.getNE(),
	    lngSpan = northEast.lng() - southWest.lng(),
	    latSpan = northEast.lat() - southWest.lat();

	var markers = [];

	for (var key in MARKER_SPRITE_POSITION) {

	    var position = new naver.maps.LatLng(
	        southWest.lat() + (latSpan * Math.random()),
	        southWest.lng() + (lngSpan * Math.random())
	    );

	    var marker = new naver.maps.Marker({
	        map: map,
	        position: position,
	        title: key,
	        icon: {
	            url: MARKER_ICON_URL,
	            size: new naver.maps.Size(24, 37),
	            anchor: new naver.maps.Point(12, 37),
	            origin: new naver.maps.Point(MARKER_SPRITE_POSITION[key][0], MARKER_SPRITE_POSITION[key][1])
	        },
	        zIndex: 100
	    });

	    markers.push(marker);
	};

	naver.maps.Event.addListener(map, 'zoom_changed', function() {
	    updateMarkers(map, markers);

	});

	naver.maps.Event.addListener(map, 'dragend', function() {
	    updateMarkers(map, markers);
	});

	function updateMarkers(map, markers) {

	    var mapBounds = map.getBounds();
	    var marker, position;

	    for (var i = 0; i < markers.length; i++) {

	        marker = markers[i]
	        position = marker.getPosition();

	        if (mapBounds.hasLatLng(position)) {
	            showMarker(map, marker);
	        } else {
	            hideMarker(map, marker);
	        }
	    }
	}

	function showMarker(map, marker) {

	    if (marker.setMap()) return;
	    marker.setMap(map);
	}

	function hideMarker(map, marker) {

	    if (!marker.setMap()) return;
	    marker.setMap(null);
	}
      </script>
            
</body>
</html>