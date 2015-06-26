class ContactsController < ApplicationController
  before_action :venkat, only: [:show, :edit, :update, :destroy]

  #after_action :send_mails, only: [:create]

  #def send_mails
   # UserMailer.registration_confirmation(@contact).deliver
  #end

  # GET /contacts
  # GET /contacts.json
  def index
    @akshitha = Contact.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show

  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
    #redirect_to contacts_path
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(srinivas_values)

    respond_to do |format|
      if @contact.save
        
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(srinivas_values)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def venkat
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def srinivas_values
      params.require(:contact).permit(:name, :email, :cell, :address)
    end
end
