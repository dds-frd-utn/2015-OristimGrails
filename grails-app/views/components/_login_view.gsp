<!-- Modal Structure -->
<div id="login" class="modal">
            <div class="modal-content">
              <h4>Iniciar Sesion</h4>

                        <div class="row">
                        <div class="input-field col s12">
                                <input id="username" type="text" class="validate">
                                <label for="username">Username</label>
                        </div>
                        </div>

                        <div class="row">
                        <div class="input-field col s12">
                                <input id="password" type="password" class="validate">
                                <label for="password">Password</label>
                        </div>
                        </div>
                    
            </div>
            <div class="modal-footer">
                    <a id="loginUser" href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Login</a>
            </div>
</div>
<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">
    	$( "#loginUser" ).click(function() {
            // alert("holamundo");
            // email = $( "#email" ).val();
            // pass = $( "#password" ).val();
            // window.location.replace("login");
            $.ajax({
                type: "POST",
                url: "login",
                data: {
                    username: $( "#username" ).val(),
                    password: $( "#password" ).val()
                },
                success: function(){
                     alert("hola")
                },
                dataType: String
            }); 

            $.post("login",{
                    username: $( "#username" ).val(),
                    password: $( "#password" ).val()
                }).done(function( data ) {
                    
                    if( data == "Fail" ){
                        alert("Fallo al iniciar sesion");
                    }
                    window.location.reload();                 
                });

  	    });
</script>