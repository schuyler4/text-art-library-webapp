class ArtChannal < ApplicationCable::Channel
  def subscribed
    stream_from "art_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # ActionCable.server.broadcast "room_channel", message: data['message']
    Message.create! content: data['message']
  end
end
