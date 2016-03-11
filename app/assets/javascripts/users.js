"use strict";
$( document ).ready(function() {
    $(".btn-success").click(function() {
      $("#jobapp_accepted").prop('checked', true);
      console.log("success");
    });
});




// $( document ).ready(function() {
//   $('#job_accepted').click(function() {
//         var isChecked = $('[id^=accepted]').prop('checked', true);
//         if (isChecked) {
//           $('[id^=accepted]').prop('checked', true);
//         } else {
//         $('[id^=accepted]').prop('checked', false);
//     };
//   });
// });

// $( document ).ready(function() {
//     $("#jobapp_accepted").click(function() {
//       $("#jobapp_accepted").prop('checked', true);
//         $("#jobapp_not_accepted").prop('checked', false);
//       });
//     });
// });
//
//   $("#jobapp_not_accepted").click(function() {
//     $("#jobapp_accepted").prop('checked', false);
//     $("#jobapp_not_accepted").prop('checked', true);
//   });
// });
//
// $( document ).ready(function() {
//   $('#job_accepted').click(function() {
//         var isChecked = $('[id^=accepted]').prop('checked', true);
//         if (isChecked) {
//           $('[id^=accepted]').prop('checked', true);
//         } else {
//         $('[id^=accepted]').prop('checked', false);
//       };
//     };
//     });
//
// });
// $( document ).ready(function() {
//   $('[id^=accepted]').click(function() {
//         $('[id^=accepted]').prop('checked', true);
//         $('[id^=not_accepted]').prop('checked', false);
//     });
//     $('[id^=not_accepted]').click(function() {
//           $('[id^=accepted]').prop('checked', false);
//             $('[id^=not_accepted]').prop('checked', true);
//     });
// });


// $("#jobapp_not_accepted").click(function() {
//     var isDisabled = $("#jobapp_not_accepted").prop('checked', false);
//     if(isDisabled) {
//       console.log("nadia");
//         $("#jobapp_accepted").attr('checked', true);
//     } else {
//       console.log("jose");
//         $("#jobapp_not_accepted").prop('checked', false);
//     }
// });
// });

// $('#myCheckbox').prop('checked', true); // Checks it
// $('#myCheckbox').prop('checked', false); // Unchecks it




// $(function(){
//   $('Update Jobapp').click(function(){
//     console.log("hi");
//     $('.edit_jobapp').hide();
//   });
// });



// $(function(){
//         $("#accepted_Accept").click(function(){
//         if($(this).value(":acce").is(':accepted')){
//           $(this).next().show();
//           }
//         else{
//         $(this).next().hide();
//         }
//       });
//      })

 //     $(function(){
 //       $("#check_checkbox").click(function(){
 //       if($(this).children("input").is(':checked')){
 //     $(this).next().show();
 //     }
 //  else{
 //     $(this).next().hide();
 //     }
 //   });
 // })
