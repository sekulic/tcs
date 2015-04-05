class AuthorsController < ApplicationController
  include ApplicationHelper
  before_action :check_isadmin?
  expose(:author, attributes: :author_params)
  expose(:authors)  

  def create
    self.author = Author.new(author_params)

    if author.save
      redirect_to author, notice: 'Author was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if author.update(author_params)
      redirect_to(author, notice: 'Author was successfully updated.')
    else
      render :edit
    end
  end
  def destroy
    author.destroy
    redirect_to authors_url, notice: 'Author was successfully destroyed.'
  end
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_params
      params.require(:author).permit(:first_name, :last_name, :about, :link_profile, :photo)
    end
end
