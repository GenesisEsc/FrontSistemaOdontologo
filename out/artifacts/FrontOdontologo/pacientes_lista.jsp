<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Pacientes - EndoDental</title>
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
            <li><a href="<%= request.getContextPath() %>/dashboard_secretaria.jsp" class="sidebar-link active"><i class="fas fa-home"></i> Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/pacientes_lista.jsp" class="sidebar-link"><i class="fas fa-user-injured"></i> Pacientes</a></li>
            <li><a href="<%= request.getContextPath() %>/citas_gestion.jsp" class="sidebar-link"><i class="fas fa-calendar-alt"></i> Agenda</a></li>
            <li><a href="<%= request.getContextPath() %>/facturacion.jsp" class="sidebar-link"><i class="fas fa-file-invoice-dollar"></i> Facturación</a></li>
            <li><a href="<%= request.getContextPath() %>/inventario.jsp" class="sidebar-link"><i class="fas fa-boxes"></i> Inventario</a></li>
            <li style="margin-top: auto;"><a href="<%= request.getContextPath() %>/index.jsp" class="sidebar-link text-danger"><i class="fas fa-sign-out-alt"></i> Salir</a></li>
        </ul>
    </nav>

    <main class="main-content">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="fw-bold">Gestión de Pacientes</h2>
            <a href="pacientes_form.jsp" class="btn btn-primary-custom"><i class="fas fa-plus me-2"></i> Nuevo Paciente</a>
        </div>

        <div class="custom-table-container">
            <div class="mb-4 d-flex">
                <input type="text" class="form-control form-control-custom w-50 me-2" placeholder="Buscar por cédula o apellido...">
                <button class="btn btn-secondary rounded-4"><i class="fas fa-search"></i></button>
            </div>

            <table class="table table-custom table-hover">
                <thead>
                <tr>
                    <th>Cédula</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Teléfono</th>
                    <th>Email</th>
                    <th>Alergias</th> <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1723456789</td>
                    <td>López Pérez</td>
                    <td>María Fernanda</td>
                    <td>0991234567</td>
                    <td>maria@email.com</td>
                    <td><span class="badge bg-danger">Penicilina</span></td>
                    <td>
                        <a href="pacientes_form.jsp?id=1" class="btn-action-edit" title="Editar"><i class="fas fa-edit"></i></a>
                        <a href="#" class="btn-action-delete" title="Eliminar"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </main>
</div>
</body>
</html>