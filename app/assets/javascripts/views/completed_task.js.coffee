class PeepcodeTasks.Views.CompletedTaskView extends Backbone.View
  className: 'task'
  tagName: 'li'
  template: JST['tasks/completed_task']
  render: ->
    $(@el).html @template(@model.toJSON())
    @
  disable: ->
    @$('input').prop 'disabled', true
  enable: ->
    @$('input').prop 'dis abled', false