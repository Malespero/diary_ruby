# frozen_string_literal: true

require 'sidekiq-scheduler'
# This worker deletes old diarys. old - one which expiration is reached.
class OldDeleterWorker
  include Sidekiq::Worker
  sidekiq_options retry: false # job will be discarded if it fails
  def perform
    Diary.old.destroy_all
    puts 'Old private diary deleter worker here'
  end
end
