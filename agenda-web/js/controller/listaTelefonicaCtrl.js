angular.module("listaTelefonica").controller("listaTelefonicaCtrl", function ($scope, contatosAPI, $http, serialGenerator){
	$scope.app = "Lista!";
	
	$scope.contatos = [];
	var carregarContatos = function(){
		contatosAPI.getContatos().success(function (data, status){ 
			$scope.contatos = data
		});
	};

	var carregarOperadoras = function(){
		$http.get("http://localhost:3000/operadoras").success(function (data){
			$scope.operadoras = data
		});
	};

	$scope.adicionarContato = function (contato){
		// contato.serial = serialGenerator.generate(); 
  		var new_listum = {
	        listum: {
	          nomeOp: $scope.contato.nome,
	          telefone: $scope.contato.telefone,
	          operadora_id: $scope.contato.contato.id,
	        }
	    };

		$http.post("http://localhost:3000/lista", new_listum).success(function (data){
			delete $scope.contato;
			$scope.contatoForm.$setPristine();
			carregarContatos();
		});
	};

	$scope.apagarContatos = function(contatos){
		$scope.contatos = contatos.filter(function (contato){
			if (!contato.selecionado) return contato;
		});
	};

	$scope.isContatoSelecionado = function (contatos){
		return contatos.some(function (contato){
				return contato.selecionado;
		});
	};

	$scope.ordenarPor = function (campo){
		$scope.criterioDeOrdenacao = campo;
		$scope.direcaoDaOrdenacao = !$scope.direcaoDaOrdenacao;
	};

	carregarContatos();
	carregarOperadoras();
});