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
        
		<!-- <button id="submitReport">Submit </button>-->
		
        <div id="linkToExportPDF"> </div>
        <br/>


		<div class="upload-container">
            
            <div class="upload-content">
                <div class="single-upload">
                    <form id="singleUploadForm" name="singleUploadForm">
                        <input id="singleFileUploadInput" type="file" name="file" class="file-input" required />
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="singleFileUploadError"></div>
                        <div id="singleFileUploadSuccess"></div>
                    </div>
                </div>
            </div>
        </div>
        <br/><br/><br/><br/>
    </div>
  </body>