# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

# client-side form validation for lead generation form:
  $('#lead-form').bootstrapValidator(
    framework: 'bootstrap',
    live: 'disabled',
    message: 'This value is invalid.',
    fields:
      'lead[first_name]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'lead[last_name]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'lead[email]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'
          emailAddress:
            message: 'Not a valid email address.'
  )
