
function valida_envia(form) {
    var articulos = form.elements["articulos"].value;
    var cantidad = form.elements["cantidad"].value;
    var valor = form.elements["valor"].value;
    var nombres = form.elements["nombres"].value;
    var apellidos = form.elements["apellidos"].value;
    var tarjeta = form.elements["tarjeta"].value;
    var tarjeta1 = form.elements["tarjeta1"].value.replace(/ /g, ''); // Eliminar espacios en blanco
    var cTarjeta = form.elements["c_tarjeta"].value.replace(/ /g, ''); // Eliminar espacios en blanco

    if (articulos === "0" || cantidad === "" || valor === "" || nombres === "" || apellidos === ""
        || tarjeta === "" || tarjeta1 === "" || cTarjeta === "" || tarjeta1.length !== 16 || tarjeta1 !== cTarjeta) {
        alert("Por favor, completa correctamente todos los campos del formulario.");
        return false;
    } else {
        return true;
    }
    
    
}