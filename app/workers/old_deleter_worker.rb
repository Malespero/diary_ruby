require 'sidekiq-scheduler'

class OldDeleterWorker
    include Sidekiq::Worker
    sidekiq_options retry: false # job will be discarded if it fails
  def perform
    Diary.old.destroy_all
    puts 'Old private diary deleter worker here'
  end
end