<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Views</title>
</head>
<body>

<h1>Settings</h1>
<form:form action="/show" method="post" modelAttribute="email">
    <table>
        <tr>
            <td>
                <form:label path="languages">Languages</form:label>
            </td>
            <form:select path="languages">
                <form:options items="${languageList}"></form:options>
            </form:select>
        </tr>

        <tr>
            <td><form:label path="pageSize">Page size</form:label></td>
            <td>Show
                <form:select path="pageSize">
                    <form:option value="5"></form:option>
                    <form:option value="10"></form:option>
                    <form:option value="15"></form:option>
                    <form:option value="20"></form:option>
                    <form:option value="25"></form:option>
                    <form:option value="50"></form:option>
                    <form:option value="100"></form:option>
                </form:select>
                emails per page
            </td>
        </tr>

        <tr>
            <td><form:label path="spamsFilter">Spam filter</form:label></td>
            <td>
                <form:checkbox path="spamsFilter"></form:checkbox>
                <form:label path="spamsFilter">Enable spams filter</form:label>
            </td>
        </tr>
        <tr>
            <td><form:label path="signature">Signature</form:label></td>
            <td><form:textarea path="signature"></form:textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="Update"></td>
            <td><input type="reset" value="Cancel"></td>
        </tr>
    </table>
</form:form>

</body>
</html>