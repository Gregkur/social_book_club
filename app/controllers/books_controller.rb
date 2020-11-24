class BooksController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]
  def index
    @books = policy_scope(Book).all
  end
end
