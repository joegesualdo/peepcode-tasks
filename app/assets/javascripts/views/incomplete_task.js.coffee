class PeepcodeTasks.Views.IncompleteTaskView extends Backbone.View
  className: 'task'
  tagName: 'li'
  template: JST['tasks/incomplete_task']
  events:
    'click .destroy': 'destroyTask'
  destroyTask: ->
    @model.destroy()
  render: ->
    $(@el).html @template(model: @model.toJSON())
    @