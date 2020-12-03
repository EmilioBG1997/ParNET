<div>
    <h1 align ='center'>PEDIDO</h1>
    <p>Por favor rellena el siguiente formulario.</p>
    <form action="pdfcliente.php" class = "post">
                <div>
                    <label for="nombre">Nombre del Producto</label>
                    <input type="text" name ='nombre_producto'  maxlength="45">
                    <small id= "nombre">Ingresa nombre del producto</small>
                </div>
                <div>
                    <label for="cantidad">Cantidad</label>
                    <input type="text" name = 'cantidad' maxlength="50">
                    <small id= "cantidad">Ingresa cantidad solicitada</small>
                </div>

                <div >
                    <label for="empresa">Empresa</label>
                    <input type="text" name = 'empresa'  maxlength="45">
                    <small id= "nombre">Ingresa aqui tu empresa</small>
                </div>

                <div >
                    <label for="contacto">Telefono</label>
                    <input type="tel" name = 'contacto'  maxlength="10">
                    <small id= "contacto">Ingresa tu telefono a diez digitos</small>
                </div>
                <div >
                    <input type="submit" value="PDF">
                </div>
            </form>
    </div>

</div>