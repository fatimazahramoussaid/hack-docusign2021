<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta
    name="viewport"
    content="initial-scale=1,maximum-scale=1,user-scalable=no"
  />
  <title>
    Edit features with the Editor widget | Sample | ArcGIS API for JavaScript
    4.20
  </title>

  <script src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="/assets/eg_016.js"></script>


    <link
      rel="stylesheet"
      href="https://js.arcgis.com/4.20/esri/themes/light/main.css"
    />
    <script src="https://js.arcgis.com/4.20/"></script>

    <style>
      html,
      body,
      #viewDiv {
        padding: 0;
        margin: 0;
        height: 100%;
        width: 100%;
      }

      .esri-editor .esri-item-list__scroller {
        max-height: 350px;
      }
    </style>

<script>
	href = window.location.href;
      part2 = href.split("?");
      if(part2.length < 2) {
        window.location.href = 'eg017';
      }
      part2 = part2[1]
      webmapval = part2.split("&");
      webmapval = webmapval[0];
      webmapval = webmapval.split("=");
      webmapval = webmapval[1];

      require([
        "esri/widgets/Sketch",
        "esri/Map",
		"esri/WebMap",
        "esri/layers/GraphicsLayer",
        "esri/views/MapView"
      ], (Sketch, Map,WebMap, GraphicsLayer, MapView) => {
        const graphicsLayer = new GraphicsLayer();

        
		
		// Create a map from the referenced webmap item id
        const map = new WebMap({
          portalItem: {
            id: webmapval
          },layers: [graphicsLayer]
        });


        const view = new MapView({
          container: "viewDiv",
          map: map
        });

        view.when(() => {
          const sketch = new Sketch({
            layer: graphicsLayer,
            view: view,
            // graphic will be selected as soon as it is created
            creationMode: "update"
          });

          view.ui.add(sketch, "top-right");
          view.ui.add("info", {
            position: "top-left",
            index: 1
          });
        });


        

      $('#linkToExportPDF').html('<a href="http://localhost:8080/eg014?mapid='+ webmapval +'">Export As PDF</a>');
		
		
      });
    </script>



</head>
