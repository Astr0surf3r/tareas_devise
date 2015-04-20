class PaginasController < ApplicationController
  
  def bienvenido
  	@usuario = current_usuario
  	@tarea = Tarea.new
  	@tareas = @usuario.tareas
  	
  end

end
