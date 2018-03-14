class DosesController < ApplicationController
  def create
    # we need `cocktail_id` to asssociate dose with corresponding cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      respond_to do |format|
        format.html { redirect_to cocktail_path(@cocktail) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'doses/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cockatil_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
