class UsersController < InheritedResources::Base
  respond_to :json
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_type

  def index
    @users = type_class.all
  end

  def new
    @user = type_class.new
  end

  private
  def set_type
    @type = type
  end

  def type
    User.types.include?(params[:type]) ? params[:type] : 'User'
  end

  def type_class
    type.constantize
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = type_class.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(type.underscore.to_sym).permit(:type, :first_name, :last_name, :email, :title)
  end
end
