class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show

  end

  def new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
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

  def person_params
    params.require(:person).permit(:name, :email, :birthdate,
                                   :gender, :dni, :customer)
  end

end
