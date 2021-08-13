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


  <link
      rel="stylesheet"
      href="https://js.arcgis.com/4.20/esri/themes/light/main.css"
    />

    <style>
      html,
      body,
      #viewDiv {
        padding: 0;
        margin: 0;
        height: 100%;
        width: 100%;
        overflow: hidden;
      }
    </style>

    <script src="https://js.arcgis.com/4.20/"></script>
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
        "esri/views/MapView",
        "esri/widgets/Print",
        "esri/WebMap"
      ], function (MapView, Print, WebMap) {
        var webmap = new WebMap({
          portalItem: {
            // autocasts as new PortalItem()
            id: webmapval
          }
        });

        var view = new MapView({
          container: "viewDiv",
          map: webmap
        });

        view.when(function () {
          var print = new Print({
            view: view,
            // specify your own print service
            printServiceUrl:
              "https://utility.arcgisonline.com/arcgis/rest/services/Utilities/PrintingTools/GPServer/Export%20Web%20Map%20Task"
          });

          // Add widget to the top right corner of the view
          view.ui.add(print, "top-right");
        });
      });
    </script>





</head>
