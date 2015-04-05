$(document).on('page:ready') ->

  $('[data-hover="dropdown"]').dropdownHover()

  $('#testimonials-carousel').carousel
    interval: 6000
    pause: 'hover'

  $('#testimonials-carousel .carousel-inner > .item:first').addClass('active')

  $('#subscription-form').formValidation
    framework: 'bootstrap'
    fields:
      email:
        validators:
          notEmpty:
            message: 'Cannot be empty'
          emailAddress:
            message: 'Please enter a valid email address'