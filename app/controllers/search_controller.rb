require 'json'

class SearchController < ApplicationController

  def show
    response = TocService.call(params[:book_id])
    @table_of_contents = JSON.parse(response.body)
    @status = 'success'
  rescue
    @message = 'There was an error, check your book id.'
    @status = 'error'
  end
end
