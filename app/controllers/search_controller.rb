class SearchController < ApplicationController
  def index
    @results = NrelService.new(params).search_by_zip
  end
end
