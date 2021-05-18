 // float botton

 $(document).ready(function () {
    $('.fixed-action-btn').floatingActionButton();
});


// paralax effect


$(document).ready(function () {
    $('.parallax').parallax();
});


// carrosel 

$(document).ready(function () {
    $('.carousel.carousel-slider').carousel({
        fullWidth: true,
        indicators: true,
        dist: 0
    });
});


// slider 


$(document).ready(function () {
    $('.slider').slider({
        height: 500,
        duration: 400,
        interval: 7000

    });
});

// tooltipped 

$(document).ready(function () {
    $('.tooltipped').tooltip();
});

// Modal footer github

$(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
  });