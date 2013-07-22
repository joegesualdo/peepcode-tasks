class PeepcodeTasks.Views.CompletedTasksView extends Backbone.View
  id: 'completed-tasks'
  tagName: 'ul'
  render: ->
    $(@el).empty()
    for task in @collection.completedTasks()
      completedTaskView = new PeepcodeTasks.Views.CompletedTaskView model: task
      $(@el).append completedTaskView.render().el
    @