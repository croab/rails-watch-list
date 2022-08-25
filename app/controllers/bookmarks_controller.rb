class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.where(list_id == params[:list_id])
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    # @movies = Movie.all
    # @movie_names = @movies.each { |movie| movie.title }
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    # raise
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list_id), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
