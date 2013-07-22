class PeepcodeTasks.Views.AppView extends Backbone.View
  el: '#wrap'
  initialize: (options) ->
    @collection.on('reset', @render, @)
    @subviews = [
      new PeepcodeTasks.Views.TasksView({collection: @collection})
      new PeepcodeTasks.Views.NewTaskView({collection: @collection})
    ]
  render: ->
    $(@el).empty()
    $(@el).append subview.render().el for subview in @subviews
    @