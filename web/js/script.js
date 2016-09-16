
$(".addplus").click(function(){
    
    $(".addplus").toggle();
    $("#addform").toggleClass('hiddenform');
    
});


$(".addplus_service").click(function(){
    $(".addplus_service").toggle();
    $("#addform_service").toggleClass('hiddenform');
});
$("#addplus_lot").click(function(){
    $("#lot").after($("#lot").clone());
});


	
$(function(){
   $('#datepicker1').datepicker({
      format: 'dd-mm-yyyy',
      lang: 'fr-FR'
    });
});

//SCRIPT POUR PAGE CLIENT

$("#btn-view").hide();
	
$("#btn-add").click(function(){
        $(".content-loader").fadeOut('slow', function()
        {
                $(".content-loader").fadeIn('slow');
                $(".content-loader").load('tpl/pages/addClient.tpl');
                $("#btn-add").hide();
                $("#btn-view").show();
        });
});

$("#btn-view").click(function(){

        $("body").fadeOut('slow', function()
        {
                $("body").load('?page=clients');
                $("body").fadeIn('slow');
                window.location.href="?page=clients";
        });
});
$('#clientTable').DataTable();

$('#clientTable')
.removeClass( 'display' )
.addClass('table table-bordered');

$('#serviceTable').DataTable();

$('#serviceTable')
.removeClass( 'display' )
.addClass('table table-bordered');