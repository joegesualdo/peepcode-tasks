window.PeepcodeTasks =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    console.log 'Hello from Backbone!'
    tasks = new PeepcodeTasks.Collections.Tasks()
    tasks.fetch({
      success: ->
        view = new PeepcodeTasks.Views.AppView({collection: tasks})
        view.render().el
    })



$(document).ready ->
  PeepcodeTasks.initialize()
