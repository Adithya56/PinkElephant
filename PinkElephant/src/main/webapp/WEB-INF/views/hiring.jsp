<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp" %>
<head>
	<link rel="stylesheet" type="text/css" href="./css/home.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="./js/home.js"></script>
    <style>
    .hiring-main {
	    display: flex;
	    /* background-image: url('./images/resume-2.jpeg'); */
	    background-size: cover;
	    background-repeat: no-repeat; /* Prevent image from repeating */
	    padding: 20px;
	    color: white; /* Text color on the background */
	    height: 100vh; /* Set height to 100% of the viewport height */
	    margin-top: -20px;
	    background-color: #fffcf3;
	}

    .hiring-left {
	    flex: 1;
	    display: flex;
	    flex-direction: column; /* Set flex-direction to column */
	    align-items: center;
	    justify-content: center;
	}

    .hiring-left-title {
	    font-size: 30px;
	    font-weight: bold;
	    margin-bottom: 10px; /* Adjust the margin as needed */
	    color:#f37372;
	}
	
	.hiring-left-subtext {
	    font-size: 12px;
	    text-align: center;
	    color:#000;
	}

    .hiring-right {
        flex: 1;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
        margin-right: 100px;
        background-color: #f37372;
        border-radius: 50px;
        margin-bottom: 20px;
    }

    .hiring-upload-resume {
        font-size: 32px;
        font-weight: bold;
        margin-bottom: 20px;
        color: white;
    }

    .hiring-file-upload {
        margin-top: 20px;
    }

    .drop-area {
        border: 2px dashed #ccc;
        padding: 20px;
        text-align: center;
        cursor: pointer;
    }

    .drop-area.highlight {
        border-color: #4CAF50;
    }

    .file-input {
        display: none;
    }

    .file-label {
        display: inline-block;
        background-color: white;
        color: #f37372;
        padding: 10px 20px;
        border-radius: 5px;
        font-weight: bold;
    }

    .file-label:hover {
        cursor: pointer;
    }

    .hiring-submit {
        margin-top: 20px;
        padding: 5px 20px;
        background-color: white; 
        color: #f37372;
        border: none;
        border-radius: 30px;
        font-weight: bold;
    }

    .hiring-submit:hover {
        cursor: pointer;
    }
</style>

</head>
<body>
    <div class="hiring-main">
        <div class="hiring-left">
            <p class="hiring-left-title">Get an opportunity<br> to join with us!!</p>
			<p class="hiring-left-subtext">We do original video, photography, interactive formats,</br> and films, leveraging an agile, craft production approach,</br> in-house post-production facilities and a close-knit network</p>
        </div>
        <div class="hiring-right">
            <div class="hiring-upload-resume"><p>Upload your resume here</p></div>
            <div class="hiring-file-upload">
                <div class="drop-area" id="dropArea">
                    <span class="file-label" onclick="document.getElementById('file').click()">Choose a file</span>
                    <input type="file" id="file" name="file" class="file-input" onchange="handleFileSelect(this)">
                </div>
                <div class="file-name" id="file-name"></div>
            </div>
            <button class="hiring-submit" onclick="uploadFile()">Submit</button>
        </div>
    </div>
</body>
 <script>
        function handleFileSelect(input) {
            const dropArea = document.getElementById('file-name');

            if (input.files.length > 0) {
                dropArea.classList.remove('highlight');
                const fileName = input.files[0].name;
                dropArea.innerHTML = '<p>' + fileName + '</p>';
            }
        }

        function uploadFile() {
   	        var fileInput = document.querySelector('input[type="file"]');
   	        console.log(fileInput); // Check if fileInput is obtained successfully

   	        if (fileInput && fileInput.files && fileInput.files.length > 0) {
   	            var file = fileInput.files[0];
   	            console.log(file); // Check if file is obtained successfully
   	        } else {
   	            alert('Please choose a file.');
   	            return;
   	        }
            // Create FormData object to send file data
            var formData = new FormData();
            formData.append('file', file);

            // Send the file using AJAX
            $.ajax({
                url: "upload",
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function (response) {
                    // Handle success response (if any)
                    toastr.success('Email has been sent, We will look into it !!', 'Success', {
                        positionClass: 'toast-top-center' // Set the position to top-center
                        	 // Clear the content on success
                    });
                    document.querySelector('.file-name').innerHTML = '';
                },
                error: function (error) {
                    // Handle error response (if any)
                    console.error(error);
                    toastr.error('Error uploading file.', 'Success', {
                        positionClass: 'toast-top-center' // Set the position to top-center
                    });
                }
            });
        }
        
        const dropArea = document.getElementById('dropArea');

        ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
            dropArea.addEventListener(eventName, preventDefaults, false);
            document.body.addEventListener(eventName, preventDefaults, false);
        });

        function preventDefaults(e) {
            e.preventDefault();
            e.stopPropagation();
        }

        ['dragenter', 'dragover'].forEach(eventName => {
            dropArea.addEventListener(eventName, highlight, false);
        });

        ['dragleave', 'drop'].forEach(eventName => {
            dropArea.addEventListener(eventName, unhighlight, false);
        });

        function highlight() {
            dropArea.classList.add('highlight');
        }

        function unhighlight() {
            dropArea.classList.remove('highlight');
        }

        dropArea.addEventListener('drop', handleDrop, false);

        function handleDrop(e) {
            e.preventDefault();
            
            const dt = e.dataTransfer;
            const files = dt.files;

            if (files.length > 0) {
                const fileInput = document.getElementById('file');
                console.log(fileInput+"@");
                // Create a new FileList with the dropped file
                const newFileList = new DataTransfer();
                newFileList.items.add(files[0]);

                // Replace the input element's files with the new FileList
                fileInput.files = newFileList.files;

                // Update the drop area content
                handleFileSelect(fileInput);
            }
        }


    </script>
<%@ include file="footer.jsp" %>
</html>
