class EnglishController < ApplicationController
  def index
  	@words = Word.order("created_at desc").limit(20)
  end
end
