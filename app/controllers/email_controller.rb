class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id]);
    @email.read = true;
    @email.save

    respond_to do |format|
    format.html {redirect_to root_path}
    format.js {}
    end
  end 
  

  def create
    @email = Email.create(
      object: Faker::Book.title,
      body: Faker::Lorem.paragraph(sentence_count: 10),
      read: false,
      )


    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end 


  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end 



  def update
    @email = Email.find(params[:id])
    @email.update(read: !@email.read)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end 

end
