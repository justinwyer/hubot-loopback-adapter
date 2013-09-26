Adapter = require("hubot/src/adapter")

class LoopbackAdapter extends Adapter
  reply: (envelope, strings...) ->
    self = @
    self.emit "reply", envelope, strings

  run: ->
    self = @
    self.emit 'connected'

exports.use = (robot) ->
  new LoopbackAdapter robot