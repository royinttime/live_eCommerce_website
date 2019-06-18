App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel

  current_product: (live_room_id, product_id) ->
    @perform 'current_product', live_room_id: live_room_id, product_id: product_id
