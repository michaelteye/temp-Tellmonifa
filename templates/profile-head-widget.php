<div class="container">
	<div class="row">
		<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pd-s-0">
			<div class="ui-block">
				<div class="top-header">
					<div class="top-header-thumb">
						<img src="assets/img/top-header1.jpg" alt="nature">
					</div>
					<div class="profile-section">
						<div class="row">
							<div class="col col-lg-5 col-md-5 col-sm-12 col-12">
								<ul class="profile-menu">
									<li>
										<a href="profile" class="active">Timeline</a>
									</li>
									<!-- <li>
										<a href="about">About</a>
									</li> -->
									<li>
										<a href="connections">Connections</a>
									</li>
								</ul>
							</div>
						</div>

						<div class="control-block-button">
							<a href="35-YourAccount-FriendsRequests" class="btn btn-control bg-blue" style="border-radius: 10px;width: 39%;"> <span style="position: relative;top: -4px;">Connect</span>
								<svg class="olymp-happy-face-icon"><use xlink:href="assets/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
							</a>

							<a href="chat-messages" class="btn btn-control bg-purple">
								<svg class="olymp-chat---messages-icon"><use xlink:href="assets/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
							</a>

							<div class="btn btn-control bg-primary more">
								<span style="color: #fff;position: relative;top: -3px;">
                                                <i class="fas fa-user-cog"></i>
                                            </span>
								<ul class="more-dropdown more-with-triangle triangle-bottom-right">
									<li>
										<a href="#" data-toggle="modal" data-target="#update-header-photo">Update Profile Photo</a>
									</li>
									<li>
										<a href="#" data-toggle="modal" data-target="#update-header-photo">Update Header Photo</a>
									</li>
									<li>
										<a href="general-settings">Account Settings</a>
									</li>
								</ul>
							</div>
							<div class="btn btn-control bg-secondary more">
								<svg class="olymp-three-dots-icon"><use xlink:href="assets/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

								<ul class="more-dropdown more-with-triangle triangle-bottom-right">
									<li>
										<a href="#">Report Profile</a>
									</li>
									<li>
										<a href="#">Block Profile</a>
									</li>
									<li>
										<a href="#">Mute Profile</a>
									</li>
									<li>
										<a href="#">Copy Profile Link</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="top-header-author">
						<a href="02-ProfilePage" class="author-thumb">
							<img src="assets/img/author-main1.jpg" alt="author">
						</a>
						<div class="author-content">
							<a href="02-ProfilePage" class="h4 author-name">James Spiegel</a>
							<div class="country">San Francisco, CA</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php require("templates/modals.php") ?>
<?php require("templates/profile-drop.php") ?>