class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :page_count, :publisher
  belongs_to :author
end
