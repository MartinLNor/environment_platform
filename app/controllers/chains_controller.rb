class ChainsController < ApplicationController
  def index
    @chains = policy_scope(Chain).order(created_at: :desc)
  end

  def show
  end

  def new
    @chain = Chain.new
    authorize @chain
  end

  def create
    @chain = Chain.new(chain_params)
    authorize @chain
    if @chain.save
      redirect_to chains_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def chain_params
    params.require(:chain).permit(:name, :risk, :photo)
  end

end
