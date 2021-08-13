$( document).ready(function() {
'use strict';


$('#singleUploadForm').submit(function(event) {
    var formElement = this;
    // You can directly create form data from the form element
    // (Or you could get the files from input element and append them to FormData as we did in vanilla javascript)
    console.log(formElement);
    var formData = new FormData(formElement);

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: "/uploadFile",
        data: formData,
        processData: false,
        contentType: false,
        success: function (response) {
            console.log(response);
            // process response
        },
        error: function (error) {
            console.log(error);
            // process error
        }
    });

    event.preventDefault();
});


$('#submitReport').click(function(event) {
    alert('ggggggggggggggggggggg2');
    console.log('data:text/html;charset=UTF-8,'+encodeURIComponent(document.documentElement.outerHTML));
    this.href='data:text/html;charset=UTF-8,'+encodeURIComponent(document.documentElement.outerHTML);


    alert('ggggggggggggggggggggg');
    var formElement = this;
    // You can directly create form data from the form element
    // (Or you could get the files from input element and append them to FormData as we did in vanilla javascript)
    console.log(formElement);
    var formData = new FormData(formElement);

    var content = 'data:text/html;charset=UTF-8,'+encodeURIComponent(document.documentElement.outerHTML);
    var blob = new Blob([content], { type: "text/xml"});

    //formData.append("webmasterfile", blob);

    formData.append('fffffff', content, 'chris2.html');
    console.log(formData);

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: "/uploadFile",
        data: formData,
        processData: false,
        contentType: false,
        success: function (response) {
            console.log(response);
            // process response
        },
        error: function (error) {
            console.log(error);
            // process error
        }
    });

    event.preventDefault();
});



    
    
});