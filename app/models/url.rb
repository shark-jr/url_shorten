class Url < ApplicationRecord
  validates :long_url, format: URI::regexp(%w(http https))
  after_create :shortened_url

  private
  def shortened_url
    random_string = (0...8).map { (65 + rand(26)).chr }.join
    self.update(short_url: random_string)
  end
end
