class MatriciesController < ApplicationController
  def matrix
    @products = Product.all
    @compatibilities = Compatibility.all
  end

end
