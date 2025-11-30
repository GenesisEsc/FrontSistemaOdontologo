<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>EndoDental</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="Style.css">
</head>
<body>

<div class="dashboard-wrapper">
    <!-- SIDEBAR -->
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

    <!-- CONTENIDO PRINCIPAL -->
    <main class="main-content">
        <div class="d-flex justify-content-between align-items-center mb-5">
            <div>
                <h2 class="fw-bold text-dark">Sistema Interno Endodental</h2>
                <p class="text-muted">Actividades del Día de hoy.</p>
            </div>
            <div class="d-flex align-items-center">
                <img src="img/6.jpg" alt="User" class="team-photo"> <!-- Foto perfil -->
            </div>
        </div>

        <!-- TARJETAS DE ESTADÍSTICAS -->
        <div class="row g-4 mb-5">
            <div class="col-md-4">
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>12</h3>
                        <p>Citas para Hoy</p>
                    </div>
                    <div class="stat-icon"><i class="fas fa-calendar-check"></i></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>85</h3>
                        <p>Pacientes Totales</p>
                    </div>
                    <div class="stat-icon" style="background-color: #E3F2FD; color: #2da1c2;"><i class="fas fa-users"></i></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>$450</h3>
                        <p>Facturado Hoy</p>
                    </div>
                    <div class="stat-icon" style="background-color: #E8F5E9; color: #4CAF50;"><i class="fas fa-dollar-sign"></i></div>
                </div>
            </div>
        </div>
    </main>
</div>

</body>
</html>