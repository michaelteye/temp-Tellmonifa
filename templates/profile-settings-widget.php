

<?php
    $pg = basename(substr($_SERVER['PHP_SELF'],0,strrpos($_SERVER['PHP_SELF'],'.'))); // get file name from url and strip extension
?>


<div class="tm-fixed-left set-width">
    <div class="your-profile">
        <div class="ui-block-title ui-block-title-small">
            <h6 class="title">PROFILE SETTINGS</h6>
        </div>
        <div class="li-group ">
            <i class="fas fa-cog search-icon"></i>
            <a href="general-settings.html" class="h6 group-set">General Settings</a>
        </div>
        <div class="li-group ">
            <i class="fas fa-shield-alt search-icon"></i>
            <a href="security-login.html" class="h6 title">Security and Login</a>
        </div>
    
        <div class="li-group ">
            <i class="fas fa-bell search-icon"></i>
            <a href="notifications.html" class="h6 title">Notifications</a>
        </div>
        <div class="li-group ">
            <i class="fas fa-comment search-icon"></i>
            <a href="chat-messages.html" class="h6 title">Chat / Messages</a>
        </div>
        <div class="li-group">
            <i class="fas fa-user-plus search-icon" style="padding: 11px 8px;"></i>
            <a href="friends-requests.html" class="h6 title">Friend Requests</a>
        </div>
        
    </div>
      
        <!-- ... end W-Action -->
</div>