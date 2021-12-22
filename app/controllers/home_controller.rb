class HomeController < ApplicationController
  def index
    @category_groups = CategoryGroup.all
  end

  def about
    @category_groups = CategoryGroup.all
  end

  def contact
    @category_groups = CategoryGroup.all
  end
end
