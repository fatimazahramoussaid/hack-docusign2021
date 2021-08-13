<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../../partials/head.jsp"/>

<h4> New Map Study </h4>

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
            <td><label style="width:250px;" for="signerName">Description</label></td>
            <td><input style="width:550px;"type="text" class="form-control" id="signerName" placeholder="Pat Johnson" name="signerName"
                value="" required>
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
            <button onclick="window.location.href = 'http://localhost:8080/';" class="btn btn-close">Cancel</button>
        </td>
    </tr>
</table>
    <td><input style="width:550px;"type="hidden" name="_csrf" value="${csrfToken}">
    

</form>

<jsp:include page="../../../partials/foot.jsp"/>
