instance_create_layer(x, y, "Inimigos", obj_explosao);

// Iniciando meu método para ganhar pontos
if (instance_exists(obj_controller)) {
	obj_controller.ganha_pontos(pontos);
}