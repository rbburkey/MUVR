$(function(){
        $("#jobapp_accepted").click(function(){
        if($(this).children("input").is(':accepted')){
          $(this).next().show();
          }
        else{
        $(this).next().hide();
        }
      });
     })

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
