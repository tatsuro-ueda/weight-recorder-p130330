# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
#  class RecordListView extends Backbone.View
#    el: $ 'body'
#    initialize: ->
#      _.bindAll @
#      @counter = 0
#      @render()
#    render: ->
#      $(@el).append '<button>Add List Item</button>'
#      $(@el).append '<ul></ul>'
#    addItem: ->
#      @counter++
#      $('ul').append "<li>Hello, Backbone #{@counter}!</li>"
#    events: 'click button': 'addItem'
#
#  record_list_view = new RecordListView

  class Record extends Backbone.Model
    urlRoot: '/records'
    defaults:
      user_id: ''
      weight: ''
      memo: ''

#  record = new Record
#  recordDetails =
#    user_id: 1
#    weight: 82.0
#    memo: 'backbone test'
#  record.save recordDetails,
#    success: (record) ->
#      console.log record.toJSON()

  record = new Record id:1
  record.fetch
    success: (record) ->
      console.log record.toJSON()