angular.module("listaTelefonica").service("operadorasAPI", function ($http, config){
	this.getOperadoras = function () {
		return $http.get(config.baseUrl + "/operadoras");
	};
)};

// angular.module("listaTelefonica").factory("contatosAPI", function ($http, config){
// 	var _getContatos = function (){
// 		return $http.get(config.baseUrl + "/lista");
// 	};
	

// 	//metodo para salvar os contato
// 	var _saveContato = function(contato){
// 		return $http.post(config.baseUrl + "lista");
// 	};

// 	return { 
// 		getContatos: _getContatos,
// 		saveContato: _saveContato
// 	};
// });
