class MonthliesController < ApplicationController
  before_action :set_monthly, only: [:show, :edit, :update, :destroy]

  def index
    @monthly_clients   = Monthly.all.where(kind: "client"  ).all.sort_by{ |m| m.year.to_s + m.month.to_s.rjust(2, "0") }
    @monthly_locations = Monthly.all.where(kind: "location").all.sort_by{ |m| m.year.to_s + m.month.to_s.rjust(2, "0") }
  end

  def show
    redirect_to monthlies_path
  end

  def new
    @monthly = Monthly.new
  end

  def edit
  end

  def create
    @monthly = Monthly.new(monthly_params)

    if @monthly.save
      redirect_to monthlies_path, notice: "#{@monthly.year}-#{@monthly.month} was successfully created."
    else
      render :new
    end
  end

  def update
    if @monthly.update(monthly_params)
      redirect_to monthlies_path, notice: "#{@monthly.year}-#{@monthly.month} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @monthly.destroy
    redirect_to monthlies_url, notice: 'Monthly was successfully destroyed.'
  end

  private
    def set_monthly
      @monthly = Monthly.find(params[:id])
    end

    def monthly_params
      params.require(:monthly).permit(:year, :month, :kind, :quantity)
    end
end
