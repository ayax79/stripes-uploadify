<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld" %>
<html>
<head>
    <title>test</title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="jquery.uploadify.js" type="text/javascript"></script>
</head>
<body>
<input type="file" name="fileInput" id="fileInput"/>
<script type="text/javascript">
    $(document).ready(function() {
        $('#fileInput').fileUpload({
            'uploader'  : 'uploader.swf',
            'script'    : '<s:url beanclass="com.blackbox.UploadifyActionBean" />', /* maps the action */
            'cancelImg' : 'cancel.png',
            'auto'      : true,
            'fileDataName' : 'fileData', /* maps to the field in the action */
            'onError'   : function(event, queueID, fileObj, errorObj) {
                alert('error' + errorObj.type + ' status: ' + errorObj.status, ' text: ' + errorObj.text);
            },
            'multi' : true

        });
    });
</script>


</body>
</html>