ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password  
  # or
  #
  controller do
    def update
      if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
      end
      super
    end
  end
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    inputs 'Agregar un nuevo
   usuario' do
    input :email
    input :password
    end
    actions
   end
  
end
