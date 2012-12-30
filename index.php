<!DOCTYPE html>
<?php 
	include 'config.php';
?>
<html lang="en">
	<head>
		<link href="css/main.css" rel="stylesheet" media="screen">
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

		<title><?php echo $TITLE;?></title>
	</head>
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top">
	      <div class="navbar-inner">
	        <div class="container-fluid">
	          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </a>
	          <a class="brand" href="index.php"><?php echo $TITLE;?></a>
	          <div class="nav-collapse collapse">
	            <p class="navbar-text pull-right">
	            	<?php  if(isset($_SESSION['user'])) { ?>
	              Logged in as <a href="index.php?page=admin" class="navbar-link"><?php echo $_SESSION['user']; ?></a>
	                <?php } else { ?> 
	              Admin login <a href="index.php?page=admin" class="navbar-link">Here</a>
	              <?php } ?>
	            </p>
	            <ul class="nav">
	              <li class="active"><a href="index.php">Home</a></li>
	              <li><a href="#about">About</a></li>
	              <li><a href="#contact">Contact</a></li>
	            </ul>
	          </div><!--/.nav-collapse -->
	        </div>
	      </div>
	    </div>

	   
	    <div class="container-fluid">
	    <?php if(!isset($_GET['page']) || $_GET['page']=='home') include 'pages/home.php';
	    		else include 'pages/' . $_GET["page"] . '.php'; 

	    ?>
	     

	      <hr>

	      <footer>
	        <p>&copy; <?php echo $TITLE;?></p>
	      </footer>

	    </div><!--/.fluid-container-->
	</body>
</html>
