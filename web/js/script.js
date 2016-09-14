
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