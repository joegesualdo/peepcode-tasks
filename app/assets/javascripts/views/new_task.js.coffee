class PeepcodeTasks.Views.NewTaskView extends Backbone.View
  tagName: 'form'
  template: JST['tasks/new_task']
  events:
    'keypress #new-task': 'saveOnEnter'
  render: ->
    $(@el).html @template()
    @

  saveOnEnter: (event) ->
    if (event.keyCode is 13) #enter key
      event.preventDefault()
      if @collection.create({title:$('#new-task').val()},{validate: true})
        @hideWarning()
        @focus()
      else
        @flashWarning()
  focus: ->
    $('#new-task').val('').focus()
  hideWarning: ->
    $('#warning').hide()
  flashWarning: ->
    $('#warning').fadeOut(100)
    $('#warning').fadeIn(400)