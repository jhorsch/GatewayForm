// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require turbolinks
//= require_tree .



$(function(){
    $('.datepicker').datepicker(
    {   changeMonth: true, changeYear: true,  minDate: "-70Y", maxDate: "+1D", val: "1/1/11" });
});


//plugin not working
$(function(){
    $('.datepicker').pickadate();
});

$(function(){
    $('#pswd_fld').blur(function(){
        var password_length = $(this).val().length;
        if (password_length <= 6)
        {
            $(this).addClass('input_fail');
        }
        else
        {
            $(this).addClass('input_sucess');
        }

    });
});



// $(function(){
//     $('#sp_checkbox').change(function(){

//         var prev = $(this).prev();
//         var value = prev.val();
//         var type = prev.attr('type');

//         var name = prev.attr('name');
//         var id = prev.attr('id');
//         var classA = prev.attr('class');

//         var new_type = (type == 'password') ? 'text' : 'password';

//         prev.remove();
//         $(this).before('<input type="' + new_type + '" value="'  + value + '" name="'  + name + '" id="'  + id + '" class="'  + classA + '" />');

//     });

//     $('.forgot_pass').hide();

//     $('.password').focus(function(){
//         $('.forgot_pass').toggle();
//     })

//     //  $('.password').blur(function(){
//     //     $('.forgot_pass').hide();
//     // })

// });





