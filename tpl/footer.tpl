<div>
       Ceci est notre footer
</div>
        <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
        <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
	<script src="web/js/bootstrap.min.js"></script>
	<script src="web/js/chart.min.js"></script>
	
	<script src="web/js/easypiechart.js"></script>
	<script src="web/js/easypiechart-data.js"></script>
	<script src="web/js/bootstrap-datepicker.js"></script>
        <script src="web/js/lumino.glyphs.js"></script>
        <script src="web/js/script.js"></script>
        <script src="web/js/datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>
</body>
</html>