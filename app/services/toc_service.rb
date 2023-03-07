class TocService < ApplicationService
  attr_reader :book_id

  def initialize(book_id)
    @book_id = book_id
  end

  def call
    get_data
  end

  private

  def get_data
    HTTParty.get("https://s3.amazonaws.com/tocs.flatworldknowledge.com/#{@book_id}.json")
  end
end