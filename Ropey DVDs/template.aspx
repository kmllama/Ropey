<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="template.aspx.cs" Inherits="Ropey_DVDs.template" %>

<!DOCTYPE html>

<title>Ropey Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .w3-sidebar a {
        font-family: "Roboto", sans-serif
    }

    body, h1, h2, h3, h4, h5, h6, .w3-wide {
        font-family: "Montserrat", sans-serif;
    }

    .newStyle1 {
        font-family: "Comic Sans MS";
    }

    .newStyle2 {
        font-family: Georgia;
    }

    .auto-style1 {
        width: 100%;
    }

    .auto-style2 {
        width: 269px;
    }

    .auto-style3 {
        width: 248px;
        height: 330px;
    }
    .auto-style4 {
        width: 250px;
        height: 370px;
    }
    .auto-style5 {
        width: 183px;
        height: 275px;
    }
</style>
<body class="w3-content" style="max-width: 1200px">

    <!-- Sidebar/menu -->
    <nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index: 3; width: 250px" id="mySidebar">
        <div class="w3-container w3-display-container w3-padding-16">
            <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
            <h3 class="w3-wide"><b class="newStyle2">Ropey DVDs</b></h3>
        </div>
        <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight: bold">
            <a href="#" class="w3-bar-item w3-button">Home</a>
            <a href="#" class="w3-bar-item w3-button">New Release</a>
            <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">Genera <i class="fa fa-caret-down"></i>
            </a>
            <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
                <a href="#" class="w3-bar-item w3-button w3-light-grey"><i class="fa fa-caret-right w3-margin-right"></i>Action</a>
                <a href="#" class="w3-bar-item w3-button">Animation</a>
                <a href="#" class="w3-bar-item w3-button">Thriler</a>
                <a href="#" class="w3-bar-item w3-button">Si-Fi</a>
                <a href="#" class="w3-bar-item w3-button">Comedy</a>
                <a href="#" class="w3-bar-item w3-button">Horhor</a>
                <a href="#" class="w3-bar-item w3-button">3D</a>
                <a href="#" class="w3-bar-item w3-button">Anime</a>
            </div>
            <a href="#" class="w3-bar-item w3-button">Sign In</a>
            <a href="#" class="w3-bar-item w3-button">Explore</a>

        </div>
        <a href="#footer" class="w3-bar-item w3-button w3-padding">Contact</a>
        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding" onclick="document.getElementById('newsletter').style.display='block'">Newsletter</a>
        <a href="#footer" class="w3-bar-item w3-button w3-padding">Subscribe</a>
    </nav>

    <!-- Top menu on small screens -->
    <header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
        <div class="w3-bar-item w3-padding-24 w3-wide">Ropey DVDs</div>
        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
    </header>

    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor: pointer" title="close side menu" id="myOverlay"></div>

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 250px">

        <!-- Push down content on small screens -->
        <div class="w3-hide-large" style="margin-top: 83px"></div>

        <!-- Top header -->
        <header class="w3-container w3-xlarge">
            <p class="w3-left"></p>
            <p class="w3-right">
                <i class="fa fa-shopping-cart w3-margin-right"></i>
                <i class="fa fa-search"></i>
            </p>
        </header>

        <!-- Image header -->
        <div class="w3-display-container w3-container">





            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <img alt="none" class="auto-style3" src="Image/12.jpg" /></td>
                    <td>&nbsp; Wisecracking mercenary Deadpool meets Russell, an angry teenage mutant who lives at an orphanage. When Russell becomes the target of Cable -- a genetically enhanced soldier from the future -- Deadpool realizes that he&#39;ll need some help saving the boy from such a superior enemy. He soon joins forces with Bedlam, Shatterstar, Domino and other powerful mutants to protect young Russell from Cable and his advanced weaponry. Release date: 16 May 2018 (United Kingdom) Director: David Leitch Box office: 785 million USD Budget: 110 million USD Screenplay: Ryan Reynolds, Rhett Reese, Paul Wernick ..</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <img alt="alita" class="auto-style4" src="Image/13.png" /></td>
                    <td>&nbsp;DescriptionSet several centuries in the future, the abandoned Alita is found in the scrapyard of Iron City by Ido,
                        a compassionate cyber-doctor who takes the unconscious cyborg Alita to his clinic. When Alita awakens, she has no memory of who she is, 
                        nor does she have any recognition of the world she finds herself in. As Alita learns to navigate her new life and the treacherous streets of Iron City, 
                        Ido tries to shield her from her mysterious past.
Release date: 6 February 2019 (United Kingdom)</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <img alt="aqua" class="auto-style5" src="Image/15.jpg" /></td>
                    <td>&nbsp;Once home to the most advanced civilization on Earth, the city of Atlantis is now an underwater kingdom ruled by the power-hungry King Orm. With a vast army at his disposal, Orm plans to conquer the remaining oceanic people -- and then the surface world. Standing in his way is Aquaman, Orm's half-human, half-Atlantean brother and true heir to the throne. With help from royal counselor Vulko, Aquaman must retrieve the legendary Trident of Atlan and embrace his destiny as protector of the deep.
Release date: 12 December 2018 (United Kingdom)
Director: James Wan
Box office: 1.144 billion USD</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <img alt="bt" class="auto-style5" src="Image/4.jpg" /></td>
                    <td>&nbsp;Batman, along with his allies and adversaries, finds himself transported from modern Gotham City to feudal Japan.<br />
<p>Initial release: 24 April 2018</p>
                        <p>Director: Junpei Mizusaki</p>

Based on: Batman; by Bob Kane; Bill Finger</td>
                </tr>
            </table>













            <div class="w3-display-topleft w3-text-white" style="padding: 24px 48px">
            </div>
        </div>





        <!-- Footer -->
        <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
            <div class="w3-row-padding">
                <div class="w3-col s4">
                    <h4>Contact</h4>
                    <p>Questions? Go ahead.</p>
                    <form action="/action_page.php" target="_blank">
                        <p>
                            <input class="w3-input w3-border" type="text" placeholder="Name" name="Name" required>
                        </p>
                        <p>
                            <input class="w3-input w3-border" type="text" placeholder="Email" name="Email" required>
                        </p>
                        <p>
                            <input class="w3-input w3-border" type="text" placeholder="Subject" name="Subject" required>
                        </p>
                        <p>
                            <input class="w3-input w3-border" type="text" placeholder="Message" name="Message" required>
                        </p>
                        <button type="submit" class="w3-button w3-block w3-black">Send</button>
                    </form>
                </div>

                <div class="w3-col s4">
                    <h4>About</h4>
                    <p><a href="#">About us</a></p>
                    <p><a href="#">We're hiring</a></p>
                    <p><a href="#">Support</a></p>
                    <p><a href="#">Find store</a></p>
                    <p><a href="#">Shipment</a></p>
                    <p><a href="#">Payment</a></p>
                    <p><a href="#">Gift card</a></p>
                    <p><a href="#">Return</a></p>
                    <p><a href="#">Help</a></p>
                </div>

                <div class="w3-col s4 w3-justify">
                    <h4>Store</h4>
                    <p><i class="fa fa-fw fa-map-marker"></i>Ropey DVD</p>
                    <p><i class="fa fa-fw fa-phone"></i>0044778123123</p>
                    <p><i class="fa fa-fw fa-envelope"></i>rdvd@mailus.co.uk</p>
                    <h4>We accept</h4>
                    <p><i class="fa fa-fw fa-cc-amex"></i>Amex</p>
                    <p><i class="fa fa-fw fa-credit-card"></i>Credit Card</p>
                    <br>
                    <i class="fa fa-facebook-official w3-hover-opacity w3-large"></i>
                    <i class="fa fa-instagram w3-hover-opacity w3-large"></i>
                    <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
                    <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>
                    <i class="fa fa-twitter w3-hover-opacity w3-large"></i>
                    <i class="fa fa-linkedin w3-hover-opacity w3-large"></i>
                </div>
            </div>
        </footer>

        <div class="w3-black w3-center w3-padding-24">Powered by <a href="londonmet.co.uk" title="W3.CSS" target="_blank" class="w3-hover-opacity">K&S</a></div>

        <!-- End page content -->
    </div>

    <!-- Newsletter Modal -->
    <div id="newsletter" class="w3-modal">
        <div class="w3-modal-content w3-animate-zoom" style="padding: 32px">
            <div class="w3-container w3-white w3-center">
                <i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
                <h2 class="w3-wide">NEWSLETTER</h2>
                <p>Join our mailing list to receive updates on new arrivals and special offers.</p>
                <p>
                    <input class="w3-input w3-border" type="text" placeholder="Enter e-mail">
                </p>
                <button type="button" class="w3-button w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
            </div>
        </div>
    </div>

    <script>
        // Accordion 
        function myAccFunc() {
            var x = document.getElementById("demoAcc");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        // Click on the "Jeans" link on page load to open the accordion for demo purposes
        document.getElementById("myBtn").click();


        // Open and close sidebar
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("myOverlay").style.display = "none";
        }
    </script>

</body>
</html>
