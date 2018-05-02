/*! jQuery v1.11.3 | (c) 2005, 2015 jQuery Foundation, Inc. | jquery.org/license */
$(document).ready(function(){
             
            //Ocultamos el menú al cargar la página
            $("#menu").hide();
             
            /* mostramos el menú si hacemos click derecho
            con el ratón */
                $("table tr:not(:first-child)").bind("contextmenu", function(e){
                  $("#menu").css({'display':'block', 'left':e.pageX, 'top':e.pageY});
                  alert($(this).attr('id'));
                  return false;
            });
             
             
            //cuando hagamos click, el menú desaparecerá
            $(document).click(function(e){
                  if(e.button == 0){
                        $("#menu").css("display", "none");
                  }
            });
             
            //si pulsamos escape, el menú desaparecerá
            $(document).keydown(function(e){
                  if(e.keyCode == 27){
                        $("#menu").css("display", "none");
                  }
            });
             
            //controlamos los botones del menú
            $("#menu").click(function(e){
                   
                  // El switch utiliza los IDs de los <li> del menú
                  switch(e.target.id){
                        case "copiar":
                              alert("copiado!");
                              break;      
                        case "mover":
                              alert("movido!");
                              break;
                        case "eliminar":
                              alert("eliminado!");
                              break;
                  }
                   
            });
             
                         
      });