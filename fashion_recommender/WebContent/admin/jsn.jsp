<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>

<c:set var="list" value="${sessionScope.statelist}"></c:set>
<c:set var="length" value="${f:length(list)}"></c:set>
[
<c:forEach var="i" items="${sessionScope.statelist}" varStatus="j">
{"stateId":"${i.stateId}","stateName":"${i.stateName}"}
<c:if test="${length ne j.count}">,
</c:if>
</c:forEach>
]

