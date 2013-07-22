class PeepcodeTasks.Views.IncompleteTasksView extends Backbone.View
  id: 'tasks-to-complete'
  tagName: 'ul'
  initialize: ->
    @collection.on('remove', @render, this)
    @collection.on('add', @render, this)
  render: ->
    $(@el).empty()
    for task in @collection.incompleteTasks()
      incompleteTaskView = new PeepcodeTasks.Views.IncompleteTaskView model: task
      $(@el).append incompleteTaskView.render().el
    @