<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../../partials/head.jsp"/>
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

<c:if test="${locals.user != null}">  
    <h4>Study 2021-08-02-00001</h4>

    <table>
    <tr>
        <td>
            <div> 
                <img src="/assets/leaf_map.png" />
            </div> 
        </td>
    </tr>
   </table>
    

    
<h2>Maps Reviews (by version)</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Revision ID</th>
            <th>Web Map ID</th>
            <th>issue ID</th>
            <th>Status</th>
            <th>Last Update</th>
            <th>Creator</th>
            <th>Reviewers</th>
            <th>Operations</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>map-v0003</td>
            <td> <a href="https://learngis2.maps.arcgis.com/home/webmap/viewer.html?id=873d303d3c6c49fb808fb15ecb808d7e">873d303d3c6c49fb808fb15ecb808d7e</a> </td>
            <td>issue-001</td>
            <td>Approuved</td>
            <td>2021-08-10 17:05:50</td>
            <td>FZM</td>
            <td>Fatima Zahra</td>
            <td><a href="eg012">details</a></td>
        </tr>
        <tr> 
          <td>map-v0002</td>
          <td><a href="https://learngis2.maps.arcgis.com/home/webmap/viewer.html?id=7070e6747ad04be3bd4f7453e524663b">7070e6747ad04be3bd4f7453e524663b</a></td>
          <td>issue-001</td>
          <td>Unapproved</td>
          <td>2021-08-10 17:05:50</td>
          <td>FZM</td>
          <td>Fatima Zahra</td>
          <td><a href="eg012">details</a></td>
        </tr>
        <tr>
          <td>map-v0001</td>
          <td><a href="https://learngis2.maps.arcgis.com/home/webmap/viewer.html?id=7070e6747ad04be3bd41111111111111">7070e6747ad04be3bd41111111111111</a></td>
          <td>issue-001</td>
          <td>Unapproved</td>
          <td>2021-08-10 17:05:50</td>
          <td>FZM</td>
          <td>Fatima Zahra</td>
          <td><a href="eg012">details</a></td>
        </tr>
       
        <tbody>
    </table>
    
</div>
<br/>



<h2>Reported Issues by Reviewers</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Issue ID</th>
            <th>Web Map ID</th>
            <th>Status</th>
            <th>Last Update</th>
            <th>Creator</th>
            <th>Reviewers</th>
            <th>Operations</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>issue-0003</td>
            <td> <a href="https://learngis2.maps.arcgis.com/home/webmap/viewer.html?id=873d303d3c6c49fb808fb15ecb808d7e">873d303d3c6c49fb808fb15ecb808d7e</a> </td>
            <td>Resolved</td>
            <td>2021-08-10 17:05:50</td>
            <td>FZM</td>
            <td>Fatima Zahra</td>
            <td><a href="eg018">details</a></td>
        </tr>
        </tbody>
    </table>
</div>  

<table>
    <tr>
        <td style="width: 80%;">
            <a href="eg010" class="btn btn-docu"><span>Send a new version to review</span></a>
            <p style="font-size: 11px;">The envelope contains the id of the web map to review, a snapshot and some details </p>
        </td>
        <td>
            <a href="eg013" class="btn btn-close"><span>Close This Study</span></a> 
            <p style="font-size: 11px;"><span style="color:red;">*</span>You can't reopen the study after that </p>
        
        </td>
    </tr>
</table>


<br/><br/>
<div class="jumbotron jumbotron-fluid"> 
    <table style="font-size: 12px;"> 
        <tr>
            <td style="width: 50%;">
                <div> 
                    <img src="/assets/schweinfurthii.png" />
                </div> 
            </td>
            <td>
                <p style="font-size: 12px;"> Study of the eastern chimpanzee "schweinfurthii" </p>
                <p style="font-size: 12px;">
                    The eastern chimpanzee is a subspecies of the common chimpanzee and classified as endangered and of global conservation concern, indicating that it has a very high risk of extinction in the wild in the near future.
                </p>
            </td>
        </tr>
       </table>
</div>



</c:if>

<jsp:include page="../../../partials/foot.jsp"/>
