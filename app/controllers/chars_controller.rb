class CharsController < ApplicationController
  before_action :set_char, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chars = Char.all
    respond_with(@chars)
  end

  def show
    @char = Char.find(params[:id])
    respond_with(@char)
  end

  def new
    @char = Char.new
    respond_with(@char)
  end

  def edit
  end

  def create
    @char = Char.new(char_params)
    flash[:notice] = 'Char was successfully created.' if @char.save
    respond_with(@char)
  end

  def update
    flash[:notice] = 'Char was successfully updated.' if @char.update(char_params)
    respond_with(@char)
  end

  def destroy
    @char.destroy
    respond_with(@char)
  end

  private
    def set_char
      @char = Char.find(params[:id])
    end

    def char_params
      params[:char][:user_id] = current_user.id
      params.require(:char).permit(:name, :user_id, :str, :hp, :stats, :updated_at)
    end
end
