class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle:'angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'ruby') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://place-hold.it/600X400"
    self.thumb_image ||= "https://place-hold.it/350X200"
  end
end
