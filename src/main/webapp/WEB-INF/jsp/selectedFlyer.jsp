<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Your New Flyer</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/flyer.css">
	</head>
	<body>
  <div class="container-fluid" id="doc-container"
    ><div class="row page" id="page"
      ><div class="col-xs-12 page"
      ><c:if test="${notPreview}">
		<c:import url="/WEB-INF/jsp/header.jsp"/>
	  </c:if
        ><div class="row" id="flyer-body"
      ><div class="col-xs-12" id="body-title"
        ><h1 id="company"><c:out value="${selectedFlyer.company}"/></h1
        ><h2 id="flyer-title"><c:out value="${selectedFlyer.flyerName}"/></h2
      ></div><!-- END BODY TITLE COLUMN
    --><div class="col-xs-12 description"
      	><p><c:out value="${selectedFlyer.flyerDescription}"/></p
      ></div><!-- END DESCRIPTION COLUMN
    --><div class="col-xs-12 takeTab"
    ><c:url var="takeTab" value="/pullTab"
    	><c:param name="flyerName" value="${selectedFlyer.flyerName}"
		/><c:param name="company" value="${selectedFlyer.company}"
		/><c:param name="flyerID" value="${selectedFlyer.flyerID}"
		/><c:param name="userName" value="${selectedFlyer.userName}"
	    /><c:param name="createDate" value="${selectedFlyer.createDate}"
	    /><c:param name="startDate" value="${selectedFlyer.startDate}"
	    /><c:param name="endDate" value="${selectedFlyer.endDate}"
	    /><c:param name="numTabs" value="${selectedFlyer.numberOfTabs}"
	    /><c:param name="flyerInfo" value="${selectedFlyer.flyerDescription}"
	    /><c:param name="category" value="${selectedFlyer.categories}"
	    /><c:param name="isRetired" value="${selectedFlyer.retired}"
    /></c:url
        ><a href="${takeTab}" class="btn btn-default fa fa-ticket link"> <strong>Grab A Tab</strong><br>Only <c:out value="${selectedFlyer.numberOfTabs}"/> left!</a
        ><c:url var="retireFlyer" value="/retireFlyer"
        	><c:param name="flyerID" value="${selectedFlyer.flyerID}"
        /></c:url
        ><c:if test="${selectedFlyer.retired}"
        		><h3 style="color: red">**This Flyer Has Been Retired**</h3
        ></c:if
        ><c:if test="${not empty author}"
        	><br
        	><br
        	><c:if test="${!selectedFlyer.retired}"
        		><a href="${retireFlyer}" class="btn btn-danger fa fa-trash"><strong>Retire This Flyer</strong></a
        	></c:if
        ></c:if
        ><c:if test="${not empty message}"
        	><br
        	><br
        	><h5><c:out value="${message}"/></h5
        ></c:if
      ></div><!-- END TAKE TAB COLUMN
      --></div><!-- END FLYER BODY ROW
      --><div class="row" id="footer"
          ><div class="col-xs-6 creator"
          ><p>Created by: <c:out value="${selectedFlyer.userName}"/> on <c:out value="${selectedFlyer.createDate}"/></p
          ></div><!-- END CREATOR COLUMN
        --><div class="col-xs-6 expire"
            ><p>Offer Expires: <c:out value="${selectedFlyer.endDate}"/> so act fast!</p
          ></div><!-- END CREATOR COLUMN
      --></div><!-- END FOOTER ROW
    --></div><!-- END HOMEPAGE COLUMN
    --></div><!-- END HOMEPAGE ROW
--></div><!-- END CONTAINER -->
</body>
</html>