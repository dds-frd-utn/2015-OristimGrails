%{-- Modal Mas Informacion --}%
<div id="masinformacion" class="modal modal-fixed-footer">
  <div class="modal-content">
    <h4>Mas Informacion</h4>
    <p>Aca podra encontrar la direccion para los distintos controllers de la aplicacion.</p>
    %{-- Mostrar los controllers --}%
    <ul>
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
        </g:each>
    </ul>
    
  </div>
  <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
  </div>
</div>