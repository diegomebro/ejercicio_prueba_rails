class PagesController < ApplicationController
  def index
  end
  def save_user

  	@nombre=params[:txt_nombre]
  	@email=params[:txt_mail]
  	@edad=params[:txt_edad]

  	@newuser= User.new(name: @nombre, email: @email, age: @edad)

	if @newuser.save
		@respuesta = "Se guardaron los datos"
	else
		@respuesta = "Ocurrio un error"
	end

  end
end
