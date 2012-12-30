
<?php if(!isset($_SESSION['user']) && !isset($_POST['username'])) {  ?>

<style type="text/css">
.container {
    width: 300px;
      }

.container > .content {
    background-color: #eee;
    padding: 20px;
    margin: 0 -20px; 
    -webkit-border-radius: 10px 10px 10px 10px;
    -moz-border-radius: 10px 10px 10px 10px;
    border-radius: 10px 10px 10px 10px;
    -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
    -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
    box-shadow: 0 1px 2px rgba(0,0,0,.15);
      }
.login-form {
	margin-left: 65px;
	  }
	
legend {
	margin-right: -50px;
	font-weight: bold;
	color: #404040;
	  }
</style>

<div class="container" id="login-page">
		<div class="content">
			<div class="row">
				<div class="login-form">
					<h2>Login</h2>
					<form action="pages/login.php" method='post'>
						<fieldset>
							<div class="clearfix">
								<input type="text" name='username'placeholder="Username">
							</div>
							<div class="clearfix">
								<input type="password" name='password' placeholder="Password">
							</div>
							<button class="btn primary" type="submit">Sign in</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
</div> <!-- /container -->
<?php }

 ?>