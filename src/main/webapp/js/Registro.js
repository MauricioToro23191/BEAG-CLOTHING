/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var correo = document.getElementById("correo");
var contra = document.getElementById("C");
var ccontra = document.getElementById("CC");
var identificacion = document.getElementById("identifi");
var primerNombre = document.getElementById("PN");
var primerApellido = document.getElementById("PA");
var direccion = document.getElementById("direccion");
var telefono = document.getElementById("telefono");

/* Accede a la referencia para los labels que tienen asterisco */
var correoAst = document.getElementById("correoAst");
var ContrasenaAst = document.getElementById("ContrasenaAst");
var confContrasenaAst = document.getElementById("ContrasenaAst");
var PNAst = document.getElementById("PNAst");
var PAAst = document.getElementById("PAAst");
var identifiAst = document.getElementById("identifiAst");
var DireccionAst = document.getElementById("DireccionAst");
var FechaAst = document.getElementById("FechaAst");
var TelAst = document.getElementById("TelAst");
var MunAst = document.getElementById("MunAst");

// Si los cuadros de texto tienen algún valor, borra los asteriscos
if (correo.value != "") {
    // No muestra el asterisko
    correoAst.style.display = "none";
}
if (contra.value != "") {
    ContrasenaAst.style.display = "none";
}
if (ccontra.value != "") {
    confContrasenaAst.style.display = "none";
}
if (identificacion.value != "") {
    identifiAst.style.display = "none";
}
if (primerNombre.value != "") {
    // No muestra el asterisko
    PNAst.style.display = "none";
}


if (primerApellido.value != "") {
    PAAst.style.display = "none";
}
if (direccion.value != "") {
    DireccionAst.style.display = "none";
}
if (telefono.value != "") {
    TelAst.style.display = "none";
}

function validarCampos() {
    /* Esta función se asocia con el evento click del botón submitir, botonEnviar, del formulario
     * y retorna verdadero si todos los campos son válidos, falso, en caso contrario
     * @type {Boolean}
     */
    var camposValidos = true;

    if (email.value === "" && validarEmail(email.value)) {
        camposValidos = false;
        alert("Email es requerido");
    }

    if (primerNombre.value === "") {
        camposValidos = false;
        alert("Nombre es requerido");
    }
    if (primerApellido.value === "") {
        camposValidos = false;
        alert("Password es requerido");
    }
    if (contra.value === "") {
        camposValidos = false;
        alert("Repita passoword es requerido");
    }

    if (conntra.value != ccontra.value && !validarContra(contra)) {
        camposValidos = false;
        alert("Los campos Contraseña y confirmar contraseña no coinciden  o rd uns contraseña inalida");
    }

    return camposValidos;
}


/* Asocia la función validarCampos con el evento click del botón enviar */
document.getElementById("botonEnviar").onclick = validarCampos;

// Las siguientes son funciones anónimas, no tienen identifiador, y se están asignando a 
// eventos de los elementos de la pagina web

correo.onfocus = function () {
    // Borra el asterisco del email cuando el campo email obtiene el focus
    correoAst.style.display = "none";
};

correo.onblur = function () {
    if (correo.value === "") {
        // Muestra el asterisco del email cuando se pierde el foco de este campo y  esta vacío
        correoAst.style.display = "inline";
    }
};


contra.onfocus = function () {
    // Borra el asterisco del nombre del usuario cuando este campo obtiene el focus
    ContrasenaAst.style.display = "none";
};

contra.onblur = function () {
    if (contra.value === "") {
        // Muestra el asterisco del nombre del usuario cuando se pierde el foco de este campo y  esta vacío
        ContrasenaAst.style.display = "inline";
    }
};
primerNombre.onfocus = function () {
    // Borra el asterisco del password cuando este campo obtiene el focus
    PNAst.style.display = "none";
};
primerNombre.onblur = function () {
    if (primerNombre.value === "") {
        // Muestra el asterisco del password cuando se pierde el foco de este campo y  esta vacío
        PNAst.style.display = "inline";
    }
};

ccontra.onfocus = function () {
    // Borra el asterisco del repita password cuando este campo obtiene el focus
    confContrasenaAst.style.display = "none";
};
ccontra.onblur = function () {
    if (ccontra.value === "") {
        // Muestra el asterisco del repita password cuando se pierde el foco de este campo y  esta vacío
        confContrasenaAst.style.display = "inline";
    }
};
primerApellido.onfocus = function () {
    // Borra el asterisco del repita password cuando este campo obtiene el focus
    PAAst.style.display = "none";
};
primerApellido.onblur = function () {
    if (primerApellido.value === "") {
        // Muestra el asterisco del repita password cuando se pierde el foco de este campo y  esta vacío
        PAAst.style.display = "inline";
    }
};

direccion.onfocus = function () {
    // Borra el asterisco del repita password cuando este campo obtiene el focus
    DireccionAst.style.display = "none";
};
direccion.onblur = function () {
    if (direccion.value === "") {
        // Muestra el asterisco del repita password cuando se pierde el foco de este campo y  esta vacío
        DireccionAst.style.display = "inline";
    }
};

function mostrarPassword() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
function mostrarRepitaPassword() {
    var x = document.getElementById("repitaPassword");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
function validarEmail(valor) {
  if (/^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3,4})+$/.test(valor)){
   alert("La dirección de email " + valor + " es correcta.");
   return true;
  } else {
   alert("La dirección de email es incorrecta.");
  return false;
    }
}


function validarContra(valor) {
  if (/^(?=.[a-zA-Z])(?=.\d)(?=.[!@#$%^&()+])[A-Za-z\d][A-Za-z\d!@#$%^&*()+]{7,19}$/.test(valor)){
   alert("La dirección de email " + valor + " es correcta.");
   return true;
  } else {
   alert("La dirección de email es incorrecta.");
  return false;
    }
}
