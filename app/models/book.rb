class Book < ActiveRecord::Base
  mount_uploader :cover_file, BooksUploader
  has_many :pages
end
