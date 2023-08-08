/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

//----------------LOGIN FORM
const loginForm = document.querySelector('#loginForm');
const openLoginForm1 = document.querySelector('.open-login');
const closeLoginForm1 = document.querySelector('.close-login');
const closeLoginForm2 = document.querySelector('.openSignup');

openLoginForm1.addEventListener('click',() => {
    loginForm.showModal();
});

closeLoginForm1.addEventListener('click',() => {
    loginForm.close();
});
closeLoginForm2.addEventListener('click',() => {
    loginForm.close();
})

//-----------------SIGNUP FORM
const signupForm = document.querySelector('#signupForm');
const openSignupForm = document.querySelector('.openSignup');
const closeSignupForm = document.querySelector('.closeSignup');

openSignupForm.addEventListener('click', () => {
    signupForm.showModal();
})

closeSignupForm.addEventListener('click', () => {
    signupForm.close();
})


        
        
            $(document).ready(function () {
                
//                console.log("page is ready........");
                
                $("#myform").on('submit', function (event) {
                    
//                    event.preventDefault();
//                    var f = $(this).serialize();
//                        let f= new FormData(this);
    
//                    console.log(f);
                    
                    $(".loader").show();
                    $("#myform").show();
                
                    
//                    $.ajax({
//                        url:"CheckLogin",
//                        data:f,
//                        type:'POST',
//                        success: function (data, textStatus, jqXHR){
//                            console.log(data);
//                            console.log("success.......");
//                            $(".loader").hide();
//                            $("#myform").show();
//                            if( data.trim()==='erroRRRR'){
//                                $('#msg').html("Correct Username/Password");
//                                $('#msg').addClass("green-text");
//                            }else{
//                                $('#msg').html("Incorrect Username/Password");
//                                $('#msg').addClass("red-text");
//                            }
//                        },
//                        error: function (jqXHR, textStatus, errorThrown){
//                            console.log(data);
//                            console.log("error.......");
//                            $(".loader").hide();
//                            $("#myform").show();
//                            $('#msg').html("Incorrect Username/Password");
//                                $('#msg').addClass("red-text");
//                        },
//                        processData: false,
//                        contentType: false
//                        
//                    });
                });
            });
        
