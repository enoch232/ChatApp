class ChatJobJob < ApplicationJob
  queue_as :default

  def perform
    puts "hello"
  end
end
