class PeepcodeTasks.Views.TasksView extends Backbone.View
  className: 'tasks'
  template: JST['tasks/tasks']
  blankStateTemplate: JST['tasks/blank_state']
  initialize: (options) ->
    @completedSubviews = [
      new PeepcodeTasks.Views.CompletedTasksView collection: @collection
    ]
    @incompleteSubviews = [
      new PeepcodeTasks.Views.IncompleteTasksView collection: @collection
    ]
  render: ->
    $(@el).html @template()
    $(@el).append subview.render().el for subview in @completedSubviews

    # In all cases, show IncompleteTaskView
    $(@el).append subview.render().el for subview in @incompleteSubviews

    @delegateEvents()
    @
  startTracking: ->
    @collection.createStartTask()
    $('#new-task').val('').focus()
