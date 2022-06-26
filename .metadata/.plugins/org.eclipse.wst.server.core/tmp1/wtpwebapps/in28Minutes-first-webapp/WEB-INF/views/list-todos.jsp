<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Todos for ${name }</title>

<!-- Include <mvc:resources location="/webjars/**" mapping="/webjars/"></mvc:resources>
	inorder to link the css and js scripts -->
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
    rel="stylesheet">

</head>
<body>
	<h1>Hi there ${name} ;)</h1>
	<h2>Here are your todos :</h2>
	<br>
	<table>
		<caption>Your todos are</caption>
		<thead>
			<tr>
				<th>id user</th>
				<th></th>
				<th>Description</th>
				<th>targetDate</th>
				<th>is Completed</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<th>${todo.id }</th>
					<th>${todo.user }</th>
					<th>${todo.desc }</th>
					<th>${todo.targetDate }</th>
					<th>${todo.done }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<h5>
		<a href="add-todo">Click here to add new Todos!</a>
	</h5>

	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>