class ThingWorker
  include Sidekiq::Worker

  def perform(name)
    Thing.create!(name: name)
  end
end
