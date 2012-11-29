class SearchesController < ApplicationController
  respond_to :html, :json

  def index
  end

  def new
  	@search = Search.new
  end

  def create
  	@search = Search.new(params[:search])
    @results = @search.facebook_page_contents(@search.search_id)
  	if @search.save
      respond_to do |format|
        format.js { render 'show_result.js.erb', :locals => {:results => @results } }
      end
    end
  end

  def show
  	@search = Search.find(params[:id])
  	@results = @search.facebook_page_contents(@search.search_id)
  end

end
