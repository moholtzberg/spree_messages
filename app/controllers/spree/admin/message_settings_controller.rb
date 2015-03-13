class Spree::Admin::MessageSettingsController < Spree::Admin::ResourceController

  def index
    @reviews = collection
  end
  
  def show
    @form = Spree::Message.find(params[:id])
  end
  
  def complete
    review = Spree::Message.find(params[:id])
    if review.update_attribute(:complete, true)
      flash[:notice] = Spree.t(:info_form_submission_is_complete)
    else
      flash[:error] = Spree.t(:error_form_submission_is_complete)
    end
    redirect_to admin_messages_path
  end
  
  private

  def collection
    params[:q] ||= {}

    @search = Spree::MessageSetting.all
    # @collection = @search.result.includes([:product, :user, :feedback_reviews]).page(params[:page]).per(params[:per_page])
    @collection = @search
  end
end