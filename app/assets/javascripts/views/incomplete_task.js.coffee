class PeepcodeTasks.Views.IncompleteTaskView extends Backbone.View
  className: 'task'
  tagName: 'li'
  template: JST['tasks/incomplete_task']
  render: ->
    $(@el).html @template(model: @model.toJSON())
    @