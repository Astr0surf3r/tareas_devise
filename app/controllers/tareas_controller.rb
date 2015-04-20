class TareasController < ApplicationController
  def create

  	@tarea = Tarea.new(tarea_params)

  	if @tarea.save

  		redirect_to root_path

  	else

  		render 'new'

  	end

  end


  private

  def tarea_params
  	params.require(:tarea).permit(:contenido, :usuario_id)
  end
end
