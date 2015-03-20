class Sync.Message extends Sync.View
  beforeInsert: ($el) ->
    $el.hide()
    @insert($el)

  afterInsert: ->
    $(@$el).find('span.timestamp').livestamp('destroy')
    $(@$el).find('span.timestamp').livestamp()
    $('#chat-window').animate({ scrollTop: $('#chat-window > ul')[0].scrollHeight}, 1000)
    @$el.fadeIn 'slow'
