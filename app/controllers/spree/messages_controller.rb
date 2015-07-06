class Spree::MessagesController < Spree::StoreController
  
  def new
    render "spree/layouts/contact"
  end
  
  def create
    puts "****************************************************************#{params[:form_submission]}"
    source = params[:form_submission][:source].sub!(/\s*[^A-z0-9]*\z/,'')
    name = params[:form_submission][:name].sub!(/\s*[^A-z0-9]*\z/,'')
    email = params[:form_submission][:email].sub!(/\s*[^A-z0-9]*\z/,'')
    phone = params[:form_submission][:phone].sub!(/\s*[^A-z0-9]*\z/,'')
    company = params[:form_submission][:company].sub!(/\s*[A-z0-9]*\z/,'')
    message = params[:form_submission][:message].sub!(/\s*[^A-z0-9]*\z/,'')
    order = params[:form_submission][:order].nil? ? nil : params[:form_submission][:order].sub!(/\s*[^A-z0-9]*\z/,'') 
    vendor = params[:form_submission][:vendor].nil? ? nil : params[:form_submission][:vendor].sub!(/\s*[^A-z0-9]*\z/,'') 
    product_type = params[:form_submission][:product_type].nil? ? nil : params[:form_submission][:product_type].sub!(/\s*[^A-z0-9]*\z/,'') 
    is_human = params[:form_submission][:is_human].sub!(/\s*[^0-9]*\z/,'')
    
    puts "********************************************"
    puts "********************************************"
    puts "++++ Source: #{source} ++++"
    puts "++++ Name: #{name} ++++"
    puts "++++ Email: #{email} ++++"
    puts "++++ Phone: #{phone} ++++"
    puts "++++ Compnay: #{company} ++++"
    puts "++++ Message: #{message} ++++"
    puts "++++ Vendor: #{vendor} ++++"
    puts "++++ Order: #{order} ++++"
    puts "++++ Product: #{product_type} ++++"
    puts "++++ Is Human: #{is_human}"
    puts "********************************************"
    puts "********************************************"
    form_submission = Spree::Message.new({source: source, name: name, email: email, message: message, order_id: order, taxon_id: product_type, phone: phone, company: company, vendor: vendor})

    puts "[[[[[[[[[[[[[[[[[[[[[#{form_submission.inspect}]]]]]]]]]]]]]]]]]]]]]"
    # @review.product = @product
    # @review.user = spree_current_user if spree_user_signed_in?
    # @review.ip_address = request.remote_ip
    # @review.locale = I18n.locale.to_s if Spree::Reviews::Config[:track_locale]
    # 
    # authorize! :create, @review
    # if @review.save
    #   flash[:notice] = Spree.t('review_successfully_submitted')
    #   redirect_to spree.product_path(@product)
    # else
    #   render :new
    # end
    if is_human == "7"
      puts "ITS A HUMAN"
      if form_submission.save!
        puts "ITS A OK"
        flash[:notice] = "Thank you!"
        redirect_to "/contact"
      end
    end
  
  end
  
end