<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Formulario Paciente - EndoDental</title>
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
        <div class="mb-4">
            <a href="pacientes_lista.jsp" class="text-decoration-none text-muted"><i class="fas fa-arrow-left"></i> Volver a la lista</a>
            <h2 class="fw-bold mt-2">Registrar Nuevo Paciente</h2>
        </div>

        <div class="form-card">
            <form action="PacienteServlet" method="POST">
                <input type="hidden" name="action" value="crear">

                <div class="row g-4">
                    <div class="col-md-6">
                        <label class="form-label-custom">Nombres</label>
                        <input type="text" name="nombres" class="form-control form-control-custom" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label-custom">Apellidos</label>
                        <input type="text" name="apellidos" class="form-control form-control-custom" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label-custom">Cédula</label>
                        <input type="text" name="cedula" class="form-control form-control-custom" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label-custom">Teléfono</label>
                        <input type="text" name="telefono" class="form-control form-control-custom">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label-custom">Correo Electrónico</label>
                        <input type="email" name="email" class="form-control form-control-custom">
                    </div>
                    <div class="col-md-12">
                        <label class="form-label-custom">Alergias / Notas Médicas</label>
                        <textarea name="alergias" class="form-control form-control-custom" rows="3" placeholder="Ej. Penicilina, Ibuprofeno..."></textarea>
                    </div>

                    <div class="col-12 mt-4 text-end">
                        <a href="pacientes_lista.jsp" class="btn btn-secondary rounded-4 me-2 px-4">Cancelar</a>
                        <button type="submit" class="btn btn-primary-custom px-5">Guardar Paciente</button>
                    </div>
                </div>
            </form>
        </div>
    </main>
</div>
</body>
</html>