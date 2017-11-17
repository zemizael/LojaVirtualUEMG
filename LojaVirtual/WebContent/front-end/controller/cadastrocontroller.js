package = br.com.LojaVirtual.DAO;
package = br.com.LojaVirtual.Conexao;

var modprod = angular.module('modulocadastro');



$scope.limpar = (function() {
		
		$scope.cadastro = "";
	});
	
	
	$scope.selecionarProf = (function (cadselecionado) {
		$scope.cadastro = profSelecionado;
	});
	
	$scope.gravar = (function(InserirCarrinho) {
		
		$scope.professores.push();
		$scope.limpar();
	});
	
	$scope.excluir = (function(cadastro) {
	cadselecionado = $scope.cadastro.indexOf(cadastro)
	$scope.cadastro.splice(cadselecionado,1);
	$scope.limpar();
	
	});
	