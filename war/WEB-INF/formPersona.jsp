<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form name="formPersona" id="formPersona" action="/ajax03" method="post">
<fieldset>
<legend>Registro de Administrador</legend>
<div id="formulario">

<div class="fila">
<div class="etiqueta"><label for="name">Usuario :</label></div>
<div class="control">
<input type="text" name="name" id="name" maxlength="10" required="required" placeholder="Ingrese un usuario" />
</div>
</div>
<div class="fila">
<div class="etiqueta"><label for="lastname">Contrasena :</label></div>
<div class="control"><input type="password" name="lastname" id="lastname" maxlength="20" required="required" placeholder="Ingrese contraseña" /></div>
</div>

<div class="fila">
<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Crear Administrador" /></div>
</div>

</div>
</fieldset>
</form>