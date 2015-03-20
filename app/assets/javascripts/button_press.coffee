$(document).on 'click', '#push-me-button', (e) ->
  e.preventDefault()
  button = $(@)
  button.removeClass('just-pressed')

  # Reflow the element so the animation is re-triggered
  button[0].offsetWidth = button[0].offsetWidth
  button.addClass('just-pressed')

  $.ajax
    type: 'POST'
    url: '/button_presses'
    data:
      button_press:
        chat_room_id: $(@).data('chat-room-id')
    success: () ->
      # Do nothing
    error: () ->
      alert "Oops."
