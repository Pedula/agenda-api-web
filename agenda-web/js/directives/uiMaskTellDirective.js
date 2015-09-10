angular.module("listaTelefonica").directive("uiMaskTell", function(){
	return{
		require: "ngModel",
		link: function (scope, element, attrs,ctrl){
			var _formattell = function (tell){
				tell = tell.replace(/[^0-9]+/g, "");
				if (tell.length > 5 ){
					tell = tell.substring(0,5) + "-" + tell.substring(5);
				}
			
				return tell;
			};	

			element.bind("keyup", function(){
				ctrl.$setViewValue(_formattell(ctrl.$viewValue));
				ctrl.$render();
			});
		}
	};
});