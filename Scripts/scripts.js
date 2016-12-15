var overallcreditsValid = false;
var ddtermSelectValid = false;
var ddyearSelectValid = false;

$(document).ready(function () {
    $("#wvuidcheck").hide();
    $("#wvustarttime").hide();
    $("#credits").hide();
    $("#gpa").hide();
    $("#major").hide();
    $("#courses").hide();
    $("#review").hide();

    $("#btnStart").prop('disabled', true);
    $("#btnWvuId").prop('disabled', true);
    $("#btnWvuStart").prop('disabled', true);
    $("#btnCredits").prop('disabled', true);
    $("#btnGPA").prop('disabled', true);
    $("#btnMajor").prop('disabled', true);
    $("#btnCourses").prop('disabled', true);
    $("#btnStartApplication").prop('disabled', true);

    $("#btnStart").click(function () {
        $("#wvuidcheck").show();
        $("#introduction").hide();
    });

    $("#btnWvuId").click(function () {
        $("#wvustarttime").show();
        $("#wvuidcheck").hide();
    });

    $("#btnWvuStart").click(function () {
        $("#credits").show();
        $("#wvustarttime").hide();
    });

    $("#btnCredits").click(function () {
        $("#gpa").show();
        $("#credits").hide();
    });

    $("#btnGPA").click(function () {
        $("#major").show();
        $("#gpa").hide();
    });

    $("#btnMajor").click(function () {
            $("#courses").show();
            $("#major").hide();
    });

    $("#btnCourses").click(function () {
        $("#review").show();
        $("#courses").hide();
    });

    $("#btnStartApplication").click(function () {
        $("#introduction").show();
        $("#review").hide();
    });

    $("#cbStart").change(function () {
        if ($(this).is(":checked")) {
            $("#btnStart").prop('disabled', false);
        } else {
            $("#btnStart").prop('disabled', true);
        }
    });

    $("#tbwvuid").on('input', function () {
        if ($.isNumeric($("#tbwvuid").val())) {
            if ($("#tbwvuid").val().length === 9) {
                // check if wvu id already in applicant database
                $("#btnWvuId").prop('disabled', false);
            } else {
                $("#btnWvuId").prop('disabled', true);
            }
        } else {
            alert("not numberic");
        }
    });

    $("#ddtermSelect").on('change', function (e) {
        var optionSelected = $(this).find("option:selected");
        var valueSelected = optionSelected.val();
        var textSelected = optionSelected.text();
        // alert(valueSelected);
        if (valueSelected != -1) {
            ddtermSelectValid = true;
        } else {
            ddtermSelectValid = false;
        }
        if (ddtermSelectValid && ddyearSelectValid) {
            $("#btnWvuStart").prop('disabled', false);
        } else {
            $("#btnWvuStart").prop('disabled', true);
        }
        //var optionSelected = $("option:selected", this);
        //var valueSelected = this.value;

    });

    $("#ddyearSelect").on('change', function (e) {
        var optionSelected = $(this).find("option:selected");
        var valueSelected = optionSelected.val();
        var textSelected = optionSelected.text();
        // alert(valueSelected);
        if (valueSelected != -1) {
            ddyearSelectValid = true;
        } else {
            ddyearSelectValid = false;
        }
        if (ddtermSelectValid && ddyearSelectValid) {
            $("#btnWvuStart").prop('disabled', false);
        } else {
            $("#btnWvuStart").prop('disabled', true);
        }
        //var optionSelected = $("option:selected", this);
        //var valueSelected = this.value;

    });

    $("#tboverallcredits").on('input', function () {
        if ($.isNumeric($("#tboverallcredits").val()) && $("#tboverallcredits").val().length > 3) {
            $("#btnCredits").prop('disabled', false);
        } else {
            $("#btnCredits").prop('disabled', false);
        }
    });

    $("#tbgpa").on('input', function () {
        alert($("#tbgpa").val());
        if (($("#tbgpa").val() % 1 != 0) && $("#tbgpa").val().length == 4) {
            $("#btnGPA").prop('disabled', false);
            
        } else {
            $("#btnGPA").prop('disabled', true);
        }
    });

    var date = new Date();
    var year = date.getFullYear();
    var counter = 1;

    $('#ddyearSelect').append('<option value="-1"></option>');
    for (var i = year; i > year - 10; i--) {
        $('#ddyearSelect').append('<option value="' + counter++ + '">' + i + '</option>');
    }

    $('#ddtermSelect').append('<option value="-1"></option>');
    $('#ddtermSelect').append('<option value="1">Spring</option>');
    $('#ddtermSelect').append('<option value="2">Summer</option>');
    $('#ddtermSelect').append('<option value="3">Fall</option>');

});

function checkGPA(gpa) {
    var isDecimal = gpa % 1 != 0;
}
function addYears() {
    var date = new Date();
    var year = date.getFullYear();
    
    for (var i = year; i > year - 10; i--) {
        //alert(i);
        $('#ddyearSelect').append('<option value="">' + i + '</option>');
    }    
}


//alert($("#tbwvuid").val().length); 