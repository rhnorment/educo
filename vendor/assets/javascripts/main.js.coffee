$(document).ready ->

  $('[data-hover="dropdown"]').dropdownHover()

  $('#testimonials-carousel').carousel
    interval: 6000
    pause: 'hover'

  $('#testimonials-carousel .carousel-inner > .item:first').addClass('active')

