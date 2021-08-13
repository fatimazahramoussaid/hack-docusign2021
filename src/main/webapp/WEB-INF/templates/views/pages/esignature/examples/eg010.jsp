<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../../partials/head.jsp"/>

<h4> Send an envelope (new map version) to review </h4>
<p>The envelope includes the web map id of the revision, 
    the user can validate it by signing the document or report issues / modification to technical teams</p>

<form class="eg" action="" method="post" data-busy="form">
    <table>
    <tr>
        <div class="form-group">
            <td><label style="width:250px;" for="studyID">Study ID</label></td>
            <td><input style="width:550px;"type="text" class="form-control" id="studyID" name="studyID"
                aria-describedby="emailHelp" placeholder="ex : 2021-08-02-00001" required
                >
            </td>
        </div>
    </tr>
    <tr>
        <div class="form-group">
            <td><label style="width:250px;" for="linkToMap">Web Map ID (ArcGIS)</label></td>
            <td><input style="width:550px;"type="text" class="form-control" id="linkToMap" name="linkToMap"
                aria-describedby="emailHelp" placeholder="ex : 873d303d3c6c49fb808fb15ecb808d7e" required
                >
           
            </td>
        </div>
    </tr>
    <tr>
        <div class="form-group">
            <td><label style="width:250px;" for="signerEmail">Signer Email</label></td>
            <td><input style="width:550px;"type="email" class="form-control" id="signerEmail" name="signerEmail"
                aria-describedby="emailHelp" placeholder="pat@example.com" required
                value="${locals.dsConfig.signerEmail}">
            
            </td>
        </div>
    </tr>
    <tr>
        <div class="form-group">
            <td><label style="width:250px;" for="signerName">Signer Name</label></td>
            <td><input style="width:550px;"type="text" class="form-control" id="signerName" placeholder="Pat Johnson" name="signerName"
                value="${locals.dsConfig.signerName}" required>
            </td>
            </div>
    </tr>
    <tr>
        <div class="form-group">
            <td><label style="width:250px;" for="ccEmail">CC Email</label></td>
            <td><input style="width:550px;"type="email" class="form-control" id="ccEmail" name="ccEmail"
                aria-describedby="emailHelp" placeholder="pat@example.com" required>
            
            </td>
        </div>
    </tr>
    <tr>
        <div class="form-group">
            <td><label style="width:250px;" for="ccName">CC Name</label></td>
            <td><input style="width:550px;"type="text" class="form-control" id="ccName" placeholder="Pat Johnson" name="ccName"
                required>
            </td>
        </div>
    </tr>
</table>

<br/><br/><br/><br/> 
<table>
    <tr>
        <td class="td_size">
            <button type="submit" class="btn btn-docu">Submit</button>
        </td>
        <td class="td_size">
            <button onclick="window.location.href = 'http://localhost:8080/eg014?mapid=' + document.getElementById('linkToMap').value ;" target="_blank" class="btn btn-docu">Preview</button>
        </td>
        <td class="td_size">
            <button onclick="window.location.href = 'http://localhost:8080/eg010';" class="btn btn-close">Cancel</button>
        </td>
    </tr>
</table>
    <td><input style="width:550px;"type="hidden" name="_csrf" value="${csrfToken}">
    

</form>

<jsp:include page="../../../partials/foot.jsp"/>
