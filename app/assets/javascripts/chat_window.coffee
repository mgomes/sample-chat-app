$(document).on 'keydown', '#chat-message-input', (e) ->
  code = ((if e.keyCode then e.keyCode else e.which))
  if code is 13
    e.preventDefault()
    submit_message(this)

window.submit_message = (message_field) ->
  if $(message_field).val() is ""
    alert "Please ensure you've entered a message and try again."
    $(message_field).focus()
    return false

  $(message_field).prop('disabled', true)

  $.post '/messages',
    message:
      message: $(message_field).val()
  , (response) ->
    $(message_field).val('')
    $(message_field).prop('disabled', false)

ready = ->
  $('#chat-window').animate({ scrollTop: $('#chat-window > ul')[0].scrollHeight}, 1000)

$(document).ready(ready)
$(document).on('page:load', ready)
$(document).on('page:change', ready)
