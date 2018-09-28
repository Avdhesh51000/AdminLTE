$(window).scroll(function () {
    console.log($(window).scrollTop())
    if ($(window).scrollTop() > 1) {
        $('.custom_header').addClass('dark_header');
    }
    if ($(window).scrollTop() < 1) {
        $('.custom_header').removeClass('dark_header');
    }

    
});

$('.icon').on('click', function() {
    $(this).toggleClass('open');
});

var headerHeight = $(".inner_header").outerHeight();
$('body').css("padding-top", + headerHeight);
//alert(headerHeight);

