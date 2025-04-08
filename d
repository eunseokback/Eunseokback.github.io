<!DOCTYPE html>
<html>
<head>
    <title>Plunger Award</title>

    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* General styling */
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
            text-align: center;
            padding: 20px;
            font-family: Arial, sans-serif;
            background-color: #4B0082; /* Deep purple */
            color: white; /* White text */
        }

        .header {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #333;
            color: white;
            padding: 10px 0;
        }

        .header h1, .header h2 {
            margin: 5px 0;
        }

        .content {
            margin-top: 100px; /* Space for fixed header */
        }

        .bio-container {
            display: none;
            margin-bottom: 40px; /* Space between bios */
        }

        .bio-container.active {
            display: block;
        }

        img {
            width: 300px;
            height: auto;
            margin: 20px 0;
            cursor: pointer;
        }

        .nav-links {
            margin-top: 20px;
        }

        .nav-links button {
            padding: 10px 15px;
            margin: 5px;
            border: none;
            background-color: #555;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        .nav-links button:hover {
            background-color: #777;
        }

        #sos-message {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 100px;
            font-weight: bold;
            color: red;
        }

        .comic {
            font-family: "Comic Sans MS", cursive, sans-serif;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Plunger Award</h1>
        <h2>Band Bio</h2>
    </div>

    <!-- 🔊 오디오 추가 -->
        <audio src="The Duck Song.mp3" controls>
        Your browser does not support the audio element.
    </audio>

    <div class="content">
        <div class="nav-links">
            <button onclick="showBio('max')">Max</button>
            <button onclick="showBio('paige')">Paige</button>
            <button onclick="showBio('Eunseok')">Eunseok</button>
        </div>

        <div id="max" class="bio-container active">
            <img src="MaxPhoto.jpg" alt="Max Globokar" onclick="flashSOS()">
            <p><span class="comic">Max</span> Globokar <span class="comic">is</span> a <span class="comic">professional</span> juggler... [생략]</p>
        </div>

        <div id="paige" class="bio-container">
            <img src="Paige.jpg" alt="Paige Birgenheier" onclick="flashSOS()">
            <p><span class="comic">Paige</span> Birgenheier <span class="comic">is</span> a <span class="comic">musician</span>... [생략]</p>
        </div>

        <div id="Eunseok" class="bio-container">
            <img src="Eunseok.jpg" alt="Eunseok" onclick="flashSOS()">
            <p><span class="comic">He</span> has <span class="comic">experienced</span> being... [생략]</p>
        </div>
    </div>

    <div id="sos-message">SOS</div>

    <script>
        function showBio(bioId) {
            document.querySelectorAll('.bio-container').forEach(function(bio) {
                bio.classList.remove('active');
            });
            document.getElementById(bioId).classList.add('active');
        }

        function flashSOS() {
            let sosMessage = document.getElementById("sos-message");
            sosMessage.style.display = "block";
            setTimeout(() => {
                sosMessage.style.display = "none";
            }, 1000);
        }

        // 🔊 유저 클릭 시 오디오 음소거 해제
        document.body.addEventListener("click", function () {
            let audio = document.getElementById("background-audio");
            audio.muted = false;
        });
    </script>
</body>
</html>

