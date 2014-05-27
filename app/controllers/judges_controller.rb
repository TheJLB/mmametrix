class JudgesController < ApplicationController

  def index
    if params[:query].present?
      @judge = Judge.search(params[:query])
    else
      @judge = Judge.paginate(:page => params[:page], :per_page => 20)
    end
  end

  def show
    @judge = Judge.find(params[:id])
  end

  def create
    @judge = Judge.new(params[:id])
    if @judge.save
      redirect_to :action => 'edit'
    else
      @judges = Judge.find(:all)
      render :action => 'new'
    end
  end

  def edit
    @judge = Judge.find(params[:id])
  end

  def update
    @judge = Judge.find(params[:id])

    if @judge.update_attributes(judge_params)
      redirect_to :action => 'show', :id => @judge 
      flash[:notice] = "Judge updated."
    else
      @judges = Judge.find(:all)
      render :action => :edit
    end
  end

  def new
    @judges = Judge.new(params[:id])

    #@judge.save
    #redirect_to @judges
  end

  def destroy
    @judge = Judge.find(params[:id])
    @judge.destroy
    redirect_to judges_path
  end

  private
    def judge_params
      params.require(:judge).permit(:name, :decisions_total, :decisions_unan, :decisions_split, :decisions_major, :draws)
    end
end
