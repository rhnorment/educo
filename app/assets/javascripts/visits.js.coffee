# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

# client-side form validation for lead generation form:
  $('#visit-form').bootstrapValidator(
    framework: 'bootstrap',
    live: 'disabled',
    message: 'This value is invalid.',
    fields:

      'visit[student_name]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'visit[parent_name]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'visit[student_phone]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'visit[parent_phone]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'visit[student_email]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'
          emailAddress:
            message: 'Not a valid email address.'

      'visit[parent_email]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'
          emailAddress:
            message: 'Not a valid email address.'

      'visit[student_email]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'
          emailAddress:
            message: 'Not a valid email address.'

      'visit[travel_dates]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'visit[travel_times]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

      'visit[airport]':
        validators:
          notEmpty:
            message: 'This field is required and cannot be empty.'

  )