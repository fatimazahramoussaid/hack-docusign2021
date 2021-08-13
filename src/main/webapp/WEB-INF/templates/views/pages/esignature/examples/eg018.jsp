<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../../partials/head1.jsp"/>
<body>
    <div id="viewDiv"></div>
    <div id="editorDiv"></div>
	<div id="info" class="esri-widget" style="text-align:center;min-width:300px;width:auto;"><br/><br/>
	 <button onclick="window.location.href = 'http://localhost:8080/';">Quit </button>
      <h3>Repport issues / comments </h3>
	     <br/>
		<textarea style="width:270px;height:150px;"> </textarea>
		<br/><br/>
		<button onclick="submit_report()">Submit </button>
		<br/><br/><br/>
    </div>
  </body>