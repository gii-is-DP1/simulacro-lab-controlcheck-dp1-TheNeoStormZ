<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="products">
    <h2>
        <c:if test="${product['new']}">New </c:if> Product
    </h2>
    <form:form modelAttribute="product" class="form-horizontal" id="add-owner-form">
        <div class="form-group has-feedback">
            <petclinic:inputField label="name" name="name"/>
            <span class="help-inline"><form:errors path="name"/></span>
            <petclinic:inputField label="price" name="price"/>
            <span class="help-inline"><form:errors path="price"/></span>
            <petclinic:selectField label="ProductType" name="ProductType" names="${list}" size="3"/>
            <span class="help-inline"><form:errors path="ProductType"/></span>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <c:choose>
                    <c:when test="${product['new']}">
                        <button class="btn btn-default" type="submit">Add Product</button>
                    </c:when>
                    <c:otherwise>
                        <button class="btn btn-default" type="submit">Update Product</button>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </form:form>
</petclinic:layout>
