Adapter = require("hubot/src/adapter")

class LoopbackAdapter extends Adapter
  send: (envelope, strings...) ->
    self = @
    self.emit "send", envelope, strings

  reply: (envelope, strings...) ->
    self = @
    self.emit "reply", envelope, strings

  run: ->
    self = @
    self.emit 'connected'

exports.use = (robot) ->
  new LoopbackAdapter robot