class SeekersController < ApplicationController
  def index
    @seekers = Seeker.all 
    render json: @seekers, status: :ok
  end

  def create
    @seeker = Seeker.new(seeker_params)
    @seeker.save
    render json: @seeker, status: :created
  end

  def destroy
    @seeker = Contact.where(id: params[:id]).first
    if @contact.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end
  def seeker_params
    params.require(:seeker).permit(:first_name, :last_name)
  end
end
