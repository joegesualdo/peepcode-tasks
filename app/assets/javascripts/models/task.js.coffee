class PeepcodeTasks.Models.Task extends Backbone.Model
  defaults:
    tag: ''
  initialize: (attributes, options) ->
    if !attributes.createdAt
      @attributes.createdAt = (new Date).getTime()
    if tag = @extractTag(attributes.title)
      @attributes.tag = tag
    else
      @attributes.tag = null
  extractTag: (text) ->
    if @attributes.title
      matches = @attributes.title.match /\s#(\w+)/
      if matches?.length
        return matches[1]
    ''

  isCompleted: ->
    @attributes.completedAt

  validate: (attributes) -> #This only takes the attributes that have changed
    if (!attributes.title)
      return "Task title must not be blank"
