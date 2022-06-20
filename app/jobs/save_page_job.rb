class SavePageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Simulates a long page crawl and save
    p "Starting fake page crawl!"
    sleep 10
    p "If this were a production app, we would have saved the page at #{Time.now().strftime('%F - %H:%M:%S.%L')}"
  end
end
