class ApplicationController < ActionController::Base
  before_action :search_params
  
  private
    def search_params
      @search = Publication.search(params[:q])
      @publications = @search.result
      @all_tags = Tag.all
    end
end
