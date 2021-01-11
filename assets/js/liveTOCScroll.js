// When reading a post, update the on scroll 
$(window).scroll(function () {
    var position = $(this).scrollTop();
    var $sections = $(":header");
    var navbarHeight = getNavbarHeight();

    $sections.each(function () {
        var target = $(this).offset().top - navbarHeight;
        var id = $(this).attr('id');

        if (position >= target) {
            $('a').removeClass('active');
            $('a[href="#' + id + '"]').addClass('active');
        }
    });
});

getNavbarHeight = () => {
    let menu = document.getElementById("menu");
    let menuStyle = getComputedStyle(menu);
    let pad = 50;
    return (parseInt(menuStyle.height) + pad)
}