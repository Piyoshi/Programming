class DirController < ApplicationController
  def show
	@files = Dir.glob('*')
  end
end
