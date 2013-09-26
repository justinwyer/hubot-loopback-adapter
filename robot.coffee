Robot = require("hubot/src/robot")

class LoopbackRobot extends Robot
  constructor: (script, name = 'LoopbackBot') ->
    super null, "loopback-adapter", false, name
    self = @
    self.adapter.on "connected", ->
      process.env.HUBOT_AUTH_ADMIN = "1"
      require(script) self
      self.user = self.brain.userForId("1",
        name: "loopback"
        room: "#loopback"
      )

      self.emit "ready"

module.exports = LoopbackRobot