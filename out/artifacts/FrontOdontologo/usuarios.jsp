<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Gestión de Usuarios - EndoDental</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="Style.css">
</head>
<body>

<div class="dashboard-wrapper">
    <nav class="sidebar">
        <img src="img/sinfondo.png" alt="EndoDental" class="sidebar-logo">
        <ul class="sidebar-menu">
            <li><a href="<%= request.getContextPath() %>/usuarios.jsp" class="sidebar-link active"><i class="fas fa-users-cog"></i> Usuarios</a></li>
            <li style="margin-top: auto;"><a href="<%= request.getContextPath() %>/index.jsp" class="sidebar-link text-danger"><i class="fas fa-sign-out-alt"></i> Salir</a></li>
        </ul>
    </nav>

    <main class="main-content">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <div>
                <h2 class="fw-bold">Gestión de Usuarios</h2>
                <p class="text-muted">Administra el acceso de médicos y personal administrativo.</p>
            </div>
            <button class="btn btn-primary-custom" data-bs-toggle="modal" data-bs-target="#modalNuevoUsuario">
                <i class="fas fa-user-plus me-2"></i> Nuevo Usuario
            </button>
        </div>

        <div class="custom-table-container">
            <table class="table table-custom table-hover">
                <thead>
                <tr>
                    <th>Nombre Completo</th>
                    <th>Usuario</th>
                    <th>Rol</th>
                    <th>Email</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><img src="img/1.jpg" class="rounded-circle me-2" width="30"> Carlos Admin</td>
                    <td>admin</td>
                    <td><span class="role-badge role-admin">Administrador</span></td>
                    <td>admin@endodental.com</td>
                    <td><span class="badge bg-success">Activo</span></td>
                    <td>
                        <a href="#" class="btn-action-edit"><i class="fas fa-edit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td><img src="img/2.jpeg" class="rounded-circle me-2" width="30"> Dr. Andrés Molina</td>
                    <td>amolina</td>
                    <td><span class="role-badge role-doctor">Odontólogo</span></td>
                    <td>andres@endodental.com</td>
                    <td><span class="badge bg-success">Activo</span></td>
                    <td>
                        <a href="#" class="btn-action-edit"><i class="fas fa-edit"></i></a>
                        <a href="#" class="btn-action-delete"><i class="fas fa-lock"></i></a>
                    </td>
                </tr>
                <tr>
                    <td><img src="img/3.jpg" class="rounded-circle me-2" width="30"> Laura Recepción</td>
                    <td>laura.sec</td>
                    <td><span class="role-badge role-secretaria">Secretaria</span></td>
                    <td>recepcion@endodental.com</td>
                    <td><span class="badge bg-danger">Inactivo</span></td>
                    <td>
                        <a href="#" class="btn-action-edit"><i class="fas fa-edit"></i></a>
                        <a href="#" class="btn-action-delete"><i class="fas fa-unlock"></i></a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </main>
</div>

<div class="modal fade" id="modalNuevoUsuario" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content" style="border-radius: 20px; border: none;">

            <div class="modal-header border-0 pb-0">
                <h5 class="modal-title fw-bold ms-3 mt-3">Registrar Nuevo Usuario</h5>
                <button type="button" class="btn-close me-3 mt-3" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body p-4">
                <form action="UsuarioServlet" method="POST">
                    <input type="hidden" name="action" value="crear">

                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label-custom">Nombre Completo</label>
                            <input type="text" name="nombre_completo" class="form-control form-control-custom" required placeholder="Ej. Dr. Juan Pérez">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label-custom">Correo Electrónico</label>
                            <input type="email" name="email" class="form-control form-control-custom" required placeholder="usuario@endodental.com">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label-custom">Nombre de Usuario</label>
                            <input type="text" name="username" class="form-control form-control-custom" required autocomplete="off">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label-custom">Contraseña</label>
                            <input type="password" name="password" class="form-control form-control-custom" required autocomplete="new-password">
                        </div>

                        <div class="col-md-12 mt-3">
                            <label class="form-label-custom">Rol de Usuario</label>
                            <select name="id_rol" id="selectRol" class="form-select form-control-custom" onchange="toggleDoctorFields()">
                                <option value="3" selected>Secretaria</option>
                                <option value="2">Odontólogo</option>
                                <option value="1">Administrador</option>
                            </select>
                        </div>

                        <div id="camposOdontologo">
                            <h6 class="fw-bold text-primary mb-3"><i class="fas fa-user-md me-2"></i> Datos Profesionales</h6>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label-custom">Especialidad</label>
                                    <input type="text" name="especialidad" class="form-control form-control-custom" placeholder="Ej. Ortodoncia">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label-custom">Código Médico / Licencia</label>
                                    <input type="text" name="codigo_medico" class="form-control form-control-custom" placeholder="Ej. 175588-L">
                                </div>
                            </div>
                        </div>

                        <div class="col-12 mt-3">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" name="estado" id="switchEstado" checked>
                                <label class="form-check-label" for="switchEstado">Usuario Activo</label>
                            </div>
                        </div>
                    </div>

                    <div class="text-end mt-4">
                        <button type="button" class="btn btn-secondary rounded-4 me-2" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary-custom px-4">Crear Usuario</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function toggleDoctorFields() {
        var rol = document.getElementById("selectRol");
        var camposDoc = document.getElementById("camposOdontologo");

        // Asumiendo que el ID del rol Odontólogo es '2'
        if (rol.value == "2") {
            camposDoc.style.display = "block";
            // Animación simple de entrada
            camposDoc.style.opacity = 0;
            setTimeout(function(){ camposDoc.style.opacity = 1; }, 50);
            camposDoc.style.transition = "opacity 0.3s";
        } else {
            camposDoc.style.display = "none";
        }
    }
</script>

</body>
</html>