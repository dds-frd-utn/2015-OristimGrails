<footer class="page-footer">
  <div class="container">
    <div class="row">
      <div class="col l6 s12">
        <h5 class="white-text">Sobre nosotros</h5>
        <p class="grey-text text-lighten-4">
          Somos gente de sistema que cursa tercero. Nos gusta viciar, y esto es para el tp final de DDS.
        </p>
      </div>
      <div class="col l4 offset-l2 s12">
        <h5 class="white-text">Integrantes</h5>
        <ul>
          <li>
            <!-- Descripcion Emiliano -->
            <a class="modal-trigger" href="#emiliano">Emiliano</a>
          </li>
          <li>
            <!-- Descripcion Emiliano -->
            <a class="modal-trigger" href="#fede">Fede kpo</a>
          </li>
          <li>
            <!-- Descripcion Emiliano -->
            <a class="modal-trigger" href="#jhony">Jhony</a>
          </li>
          <li>
            <!-- Descripcion Emiliano -->
            <a class="modal-trigger" href="#diego">Diego</a>
          </li>

        </ul>
      </div>
    </div>
  </div>
  <div class="footer-copyright">
    <div class="container">
    © 2015 Copyright Oristim. Prohibido el copypasteo.
    <a class="modal-trigger right" href="#masinformacion">Mas informacion</a>
    </div>
  </div>

  <!--Cargar integrantes del proyecto-->
  <g:render template="/components/integrantes_view"/>
  <g:render template="/components/masinformacion_view"/>
  
</footer>
<!--<script type="text/javascript">
  /*Cargar Integrantes*/
  $("#modalIntegrantes").load(".//components/integrantes_view.html"); 
</script>-->

<!--<script type="text/javascript">
  /*Cargar Mas Informacion*/
  $("#modalMasInformacion").load(".//components/masinformacion_view.html"); 
</script>-->