class Semaphive extends (require 'tired')
  @root 'https://semaphoreapp.com/api/v1'

  @resources 'projects', ->
    @resources 'branches', {path: '', resources: ['status']}, ->
      @resources 'builds', ['log']

  @param 'auth_token', -> @auth_token

  constructor: (options) ->
    @auth_token = options.auth_token
    super

module.exports = Semaphive
