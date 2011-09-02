class Page < ActiveRecord::Base
  mount_uploader :file, PagesUploader
  belongs_to :book
  has_many :comments
  
  def next_page
    self.book.pages.where('id > ?', self.id).order('id').first
  end

  def previous_page
  self.book.pages.where('id < ?', self.id).order('id desc').first
  end
end
