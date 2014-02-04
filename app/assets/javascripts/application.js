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
// $(function(){
//     $('.datepicker').pickadate();
// });

// $(function(){
//     $('#pswd_fld').blur(function(){
//         var password_length = $(this).val().length;
//         if (password_length <= 6)
//         {
//             $(this).addClass('input_fail');
//         }
//         else
//         {
//             $(this).addClass('input_sucess');
//         }

//     });
// });



$(function(){
    $('#show_password_checkbox').change(function(){

        var prev = $('#pswd_fld');
         var value = prev.val();  //get value from previous element

            if (value.length > 1) {

                var type = prev.attr('type');  //get attribute type from prev
                var name = prev.attr('name');  //get attr name
                var id = prev.attr('id');  //get id

                var new_type = (type == 'password') ? 'text' : 'password';
                prev.remove();

                $('#user_dob').after('<input type="' + new_type + '" value="'  + value + '" name="'  + name + '" id="'  + id + '" />');

            }

    }

    $('#pswd_fld').blur(function(){
        var pass_length = $(this).val().length
        var mynum = 3

           var test = $('.js-form-error').select()
        console.log(typeof(test))

        if ((pass_length < 6) && (3==3)) {
            $('#pswd_fld').addClass('js-form-field-error')
            $('#pswd_fld').before('<p class="js-form-error">Password must be greater than 6 characters</p>')
            // var check = attr($('.js-form-error'))
            // console.log(check) //CHECK TO SEE IF THE CLASS EXISTS??
        }
        else{
            $('#pswd_fld').removeClass('js-form-field-error')
           $ ('.js-form-error').remove()
        }

    })





});



