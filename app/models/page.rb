class Page < ActiveRecord::Base

  has_many :revisions

  validates :application_name, :presence => true
  validates :reference, :title, :presence => true
  validates :reference, :uniqueness => true

  before_create :setup_application_name
  before_update :verify_application_name
  before_destroy :verify_application_name
  after_find :verify_application_name

  private

  def setup_application_name()
    self.application_name=APPLICATION_NAME
  end

  def verify_application_name()
    unless self.application_name == APPLICATION_NAME
      raise "Permission denied to page " + self.title
    end
  end

end
