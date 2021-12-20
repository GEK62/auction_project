class HomeController < ApplicationController
  def index
    @category_groups = CategoryGroup.all
  end

  def about; end
end
