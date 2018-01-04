class StorefrontController < ApplicationController
  # give customers three ways to view products: all, by category and by brand; also must update routes.rb #
  def all_items
    @products= Product.all

  end

  def items_by_category
    @category = Category.find(params[:category_id])
    @products = Product.where(category: params[:category_id])

  end

  def items_by_brand
    @products = Product.where(brand: params[:brand])
    @brand = params[:brand]
  end
end
