// Call the dataTables jQuery plugin
$(document).ready(function() {
    cargarUsuarios();
  $('#usuarios').DataTable();
});

async function cargarUsuarios(){
      const request = await fetch('api/usuarios', {
        method: 'GET',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        }
      });
      const usuarios = await request.json();


    let listadoHTML = '';
    for (let usuario of usuarios){
        let btnEliminar = '<a href="#" onclick="eliminarUsuario('+usuario.id+')" class="btn btn-danger btn-circle btn-sm"><i class="fas fa-trash"></i></a>';
        let telefonoTexto = usuario.telefono ==  null ? '-' : usuario.telefono;
        let usuarioHtml = '<tr><td>'+usuario.id
                        +'</td><td>'+usuario.nombre+' '+usuario.apellido
                        +'</td><td>'+usuario.email
                        +'</td><td>'+telefonoTexto
                        +'</td><td>'+btnEliminar+'</td></tr>';
        listadoHTML += usuarioHtml;
    }

    console.log(usuarios);

    document.querySelector('#usuarios tbody').outerHTML = listadoHTML;


}

async function eliminarUsuario(id){
    if (!confirm('¿Desea eliminar este usuario?'))
        return;

    const request = await fetch('api/usuarios/'+id, {
        method: 'DELETE',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        }
      });
    location.reload()
}
