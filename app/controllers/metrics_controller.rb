class MetricsController < ApplicationController
  before_action :set_metric,  only: [:show, :edit, :update, :destroy]
  before_action :set_metrics, only: [:edit, :index]

  def index
  end

  def new
    @metric = Metric.new
  end

  def edit
  end

  def show
    redirect_to edit_metric_path(params[:id])
  end

  def create
    @metric = Metric.new(metric_params)

    if @metric.save
      redirect_to metrics_path, notice: 'Metric was successfully created.'
    else
      render :new
    end
  end

  def update
    if @metric.update(metric_params)
      redirect_to metrics_path, notice: 'Metric was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @metric.destroy
    redirect_to metrics_path, notice: 'Metric was successfully destroyed.'
  end

  private
  def set_metric
    @metric = Metric.find(params[:id])
  end

  def set_metrics
    @metrics = Metric.all
  end

  def metric_params
    params.require(:metric).permit(:name, :quantity)
  end
end
