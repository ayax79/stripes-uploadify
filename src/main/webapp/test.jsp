<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld" %>
<html>
<head>
    <title>test</title>
</head>
<body>
<input type="file" name="fileInput" id="fileInput" />
<script type="text/javascript">
$(document).ready(function() {
    $('#fileInput').fileUpload ({
    'uploader'  : 'uploader.swf',
    'script'    : '<s:url beanclass="com.blackbox.UploadifyActionBean" />',
    'cancelImg' : 'cancel.png',
    'auto'      : true,
    'folder'    : '/tmp/uploads'
    });
    });
</script>
</body>
</html>