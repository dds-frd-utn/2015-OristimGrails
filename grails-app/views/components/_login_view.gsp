<!-- Modal Structure -->
<div id="login" class="modal">
            <div class="modal-content">
              <h4>Iniciar Sesion</h4>


                    <div class="row">
                    <div class="input-field col s12">
                            <input id="email" type="email" class="validate">
                            <label for="email">Email</label>
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
                    <a id="caca" href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Login</a>
            </div>
</div>
<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">
    	$( "#caca" ).click(function() {
            email = $( "#email" ).val();
            pass = $( "#password" ).val();
            window.location.replace("login");
  	});
</script>