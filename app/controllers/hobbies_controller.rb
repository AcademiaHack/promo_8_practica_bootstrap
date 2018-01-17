class HobbiesController < ApplicationController
  def new
    @person = Person.find_by(id: params[:person_id])
    @hobby = @person.hobbies.build
    @kinds = Hobby.kinds.keys
  end

  def create
    @person = Person.find_by(id: params[:person_id])
    @hobby = @person.hobbies.build(hobby_params)
    if @hobby.save
      redirect_to person_path(@person)
    else
      render :new
    end
  end

  private

  def hobby_params
    params.require(:hobby).permit(:name, :descripton, :kind, :person_id)
  end
end
