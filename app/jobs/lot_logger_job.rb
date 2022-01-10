class LotLoggerJob < ApplicationJob
  sidekiq_options queue: :default, retry: 3
  queue_as :default

  def perform(*args)
    puts "Created a lot with following details: #{args}"
  end
end
