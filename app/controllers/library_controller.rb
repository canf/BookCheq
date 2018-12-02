class LibraryController < ApplicationController
  before_action :authenticate_user!
  def index
    @library_books = curent_user.library_additions
  end
end
