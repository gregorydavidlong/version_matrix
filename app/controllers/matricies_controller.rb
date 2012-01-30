class MatriciesController < ApplicationController
  def matrix
    @versions = Version.all
    @compatibilities = Compatibility.all
  end

end
