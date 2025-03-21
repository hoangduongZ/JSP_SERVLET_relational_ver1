<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 3/20/2025
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<div class="container mt-4">
    <h2 class="text-center">Hệ thống Quản lý Nhân sự</h2>

    <div class="row">
        <!-- Bảng Nhân viên -->
        <div class="col-md-4">
            <h3>Nhân viên</h3>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Phòng ban</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="employee" items="${employees}">
                    <tr>
                        <td>${employee.id}</td>
                        <td>${employee.name}</td>
                        <td>${employee.department.name}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <!-- Form thêm Nhân viên -->
            <h4>Thêm Nhân viên</h4>
            <form action="addEmployee" method="post">
                <div class="mb-2">
                    <input type="text" class="form-control" name="name" placeholder="Tên nhân viên" required>
                </div>
                <div class="mb-2">
                    <select name="departmentId" class="form-control">
                        <c:forEach var="department" items="${departments}">
                            <option value="${department.id}">${department.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Thêm</button>
            </form>
        </div>

        <!-- Bảng Phòng ban -->
        <div class="col-md-4">
            <h3>Phòng ban</h3>
            <div class="container" style="height: 300px; overflow: auto">
                <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="department" items="${departments}">
                        <tr>
                            <td>${department.id}</td>
                            <td>${department.name}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>


            <!-- Form thêm Phòng ban -->
            <h4>Thêm Phòng ban</h4>
            <form action="addDepartment" method="post">
                <div class="mb-2">
                    <input type="text" class="form-control" name="name" placeholder="Tên phòng ban" required>
                </div>
                <button type="submit" class="btn btn-success">Thêm</button>
            </form>
        </div>

        <!-- Bảng Dự án -->
        <div class="col-md-4">
            <h3>Dự án</h3>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Tên dự án</th>
                    <th>Trưởng dự án</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="project" items="${projects}">
                    <tr>
                        <td>${project.id}</td>
                        <td>${project.name}</td>
                        <td>${project.manager.name}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <!-- Form thêm Dự án -->
            <h4>Thêm Dự án</h4>
            <form action="addProject" method="post">
                <div class="mb-2">
                    <input type="text" class="form-control" name="name" placeholder="Tên dự án" required>
                </div>
                <div class="mb-2">
                    <select name="managerId" class="form-control">
                        <c:forEach var="employee" items="${employees}">
                            <option value="${employee.id}">${employee.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-warning">Thêm</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
