$(function(){
	$(':delete').on('click', function(){

		var row			= $(this).parents('form'),
			photo_id	= $(this).attr('date-photo-id');

			$(row).hide("slow");

			$.ajax({
			  url: "/photos/" + photo_id
			  type: 'DELETE',
			  success: function(result) {
			   
        }
     });

			

		});

});





// $(function(){
// 	$(':delete').on('click', function(){

// 		var row			= $(this).parents('.col-sm-8.col-xs-8'),
// 			photo_id	= $(this).attr('date-photo-id');

// 			$(row).hide("slow");

// 			$.ajax({

				// url:"/photos/" + photo_id
// 				type: 'DELETE',

// 				data: {
// 					task {

// 						"completed": true
					
			
// 				}
// 			},


//      });

// 		});

// });



// $.ajax({
//   url: your_url,
//   type: 'DELETE',
//   success: function(result) {
//     // Do something with the result
//   }
// });
