<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../partials/head.jsp"/>

<c:if test="${locals.user == null}">
  <!-- IF not signed in -->
  <div>
    <div class="jumbotron jumbotron-fluid"> 
        <img src="/assets/banner-code.png" />
    </div>
</c:if>

<style>
*{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
}
h2{
    text-align: center;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 1px;
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 12px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}
</style>



<c:if test="${locals.dsConfig.quickstart == 'true' && locals.user == null}">

  <%


        // New location to be redirected
        String site = new String("/eg001");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
   %>
</c:if>



<div class="container" style="margin-top: 40px" id="index-page">
  <h2>Welcome On The JGI's Studies Portfolio </h2>
  

<c:if test="${locals.user == null}">  
  <div style="margin:1% 5%;">

    
    <form action="/ds/authenticate" method="post">
        <select name="selectAuthType" style="display: none;">
            <c:forEach var="item" items="${authTypes}">
                <option value="${item.key}">${item.value}</option>
            </c:forEach>
        </select>
        <p class="lead" style="padding-top: .5rem;">
            <button type="submit" class="btn btn-docu">Authenticate with DocuSign</button>
        </p>
       
    </form>
    <hr class="my-4">
    <p>You need to authenticate with DocuSign to continue your request. <a href="https://www.janegoodall.org/">learn more about Jane Goodall's Institute </a></p>
</div>
</c:if>



<c:if test="${locals.user != null}">  
    <table>
        <tr>
            <td>
                <div> 
                    <img src="/assets/dossier_studies.png" />
                </div>
            </td>
            <td>
                <form action="/eg019">
                    <input style="width: 500px;margin-left: 100px;" type="search" id="gsearch" name="gsearch" placeholder="Search">
                    <input type="submit">
                  </form>
            </td>
        </tr>
    </table>


<h2>Studies Folders</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Study ID</th>
            <th>Status</th>
            <th>Last Update</th>
            <th>Reviews</th>
            <th>Creator</th>
            <th>Reviewers</th>
            <th>Operations</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Study 2021-08-02-00001</td>
            <td>In progress</td>
            <td>2021-08-02 02:04:00</td>
            <td>5</td>
            <td>FZM</td>
            <td>Fatima Zahra</td>
            <td><a href="eg011">details</a> <a href="eg011">delete</a> <a href="eg011">update</a></td>
        </tr>
        <tr>
          <td>Study 2021-08-02-00002</td>
          <td>Closed</td>
          <td>2021-08-07 15:44:00</td>
          <td>10</td>
          <td>FZM</td>
          <td>Fatima Zahra</td>
          <td><a href="eg011">details</a> <a href="eg011">delete</a> <a href="eg011">update</a></td>
        </tr>
        <tr>
          <td>Study 2021-08-02-00003</td>
          <td>Closed</td>
          <td>2021-08-10 17:05:50</td>
          <td>1</td>
          <td>FZM</td>
          <td>Fatima Zahra</td>
          <td><a href="eg011">details</a> <a href="eg011">delete</a> <a href="eg011">update</a></td>
        </tr>
       
        <tbody>
    </table>
</div>


<a href="eg009" class="btn btn-docu"><span>New Study Folder</span></a>
  
</c:if>

  





</div>

<!-- anchor-js is only for the index page -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/anchor-js/4.1.1/anchor.min.js"></script>
<script>anchors.options.placement = 'left'; anchors.add('h4')</script>

<jsp:include page="../../partials/foot.jsp"/>
