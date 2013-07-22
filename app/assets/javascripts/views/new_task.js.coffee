class PeepcodeTasks.Views.NewTaskView extends Backbone.View
  tagName: 'form'
  template: JST['tasks/new_task']
  render: ->
    $(@el).html @template()
    @
  focus: ->
    $('#new-task').val('').focus()
  hideWarning: ->
    $('#warning').hide()
  flashWarning: ->
    $('#warning').fadeOut(100)
    $('#warning').fadeIn(400)