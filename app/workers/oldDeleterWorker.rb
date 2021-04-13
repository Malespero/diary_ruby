class OldDeleterWorker
    include Sidekiq::Worker
    sidekiq_options retry: false
    def perform(Diary)
        Diary.destroy
    end
end