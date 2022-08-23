# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
Paloma.controller 'Stores/LiveRooms',
  show: ->
    cable = App.cable.subscriptions.create({ channel: "RoomChannel", live_room_id: $("#live_room").attr("data-id") })
    storeId = $("#live_room").attr("data-store-id")
    peopleUrl = "/stores/".concat(storeId, "/live_rooms/people_on_live_chat_room")
    peopleSource = new EventSource(peopleUrl)
    peopleSource.addEventListener 'message', updatePeopleAmount, false
    return

  updatePeopleAmount = (e) ->
    console.log(e)
    $('#people_in_live_room').text(e.data)
    return
