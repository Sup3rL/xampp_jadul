<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>MyWebsite</title>
    <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
    <div id="container">
        <div id="header">
            <h1>PERTEMUAN I -- SISTEM PAKAR</h1>
        </div>

        <div id="sidebar">
            <h3>navigasi</h3>
            <ul id="navmenu">
                <li><a id='haruskanan' href="index.php">profil</a></li>
                <li><a href="?module=galeri#pos">galeri</a></li>
                <li><a href="?module=jadwal#pos">Jadwal Kuliah</a></li>
                <li><a href="?module=form#pos">Form</a></li>
            </ul>
        </div>

        <div id="page"> 
                    <?php if(isset($_GET['module'])){
                include "konten/".$_GET['module'].".php";
                    }else{
                include "konten/home.php";}?>
        </div>

            <div id="clear"></div>


    </div>
    
</body>

<footer id="footer">
    <p>&copy;</p>
</footer>
</html>