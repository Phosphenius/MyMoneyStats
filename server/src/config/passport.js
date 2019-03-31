const JwtStrategy = require('passport-jwt').Strategy
const ExtractJwt = require('passport-jwt').ExtractJwt

const settings = require('../config/settings') // get settings file

module.exports = function (passport) {
  var opts = {}
  opts.jwtFromRequest = ExtractJwt.fromAuthHeaderWithScheme('jwt')
  opts.secretOrKey = settings.secret
  passport.use(new JwtStrategy(opts, function (jwtPayload, done) {
    return done(null, jwtPayload)
  }))
}