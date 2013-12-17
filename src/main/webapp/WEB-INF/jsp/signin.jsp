<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<sec:authorize access="isAnonymous()">
    <h2>Members</h2>
      <form action="<c:url value='j_spring_security_check' />" method="post">
        <label>Username</label>
        <input type="text" value="" name="j_username" size="10" class="input_field" />
        <label>Password</label>
        <input type="password" value="" name="j_password" class="input_field" />
        <a href="#">Register</a>
        <input type="submit" name="login" value="Login" alt="Login" id="submit_btn" />
      </form>
      <c:if test="${not empty error}">
		<div><font color="red"><br/>
			Invalid username or password</font>
		</div>
	</c:if>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<font size=5>Welcome<br/></font><font size=3> ${username} </font> <br/><br/><br/>
    <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
</sec:authorize>