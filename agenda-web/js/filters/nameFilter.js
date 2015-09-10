angular.module("listaTelefonica").filter("name", function (){
	return function (input) {
		var listaDeNomes = input.split(" ");
		var listaDeNomesFormatado = listaDeNomes.map(function(nome){
			if (nome === "da" || nome === "de") return nome;
			return nome.charAt(0).toUpperCase() + nome.substring(1).toLowerCase();
		});

		return listaDeNomesFormatado.join(" ");
	};
});