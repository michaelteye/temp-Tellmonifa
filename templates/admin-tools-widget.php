<?php
    $pg = basename(substr($_SERVER['PHP_SELF'],0,strrpos($_SERVER['PHP_SELF'],'.'))); // get file name from url and strip extension
?>


<div class="tm-fixed-left">
    <div class=" group-list-block">
        <div class="ui-block-title">
            <h6 class="title">Search Filters</h6>
        </div>
        <!-- W-Action -->

        <div class="group-scroll">
                <ul>
                    <li>
                        <div class="li-group ">
                            <i class="fas fa-user-check search-icon" style="padding: 11px 9px;"></i>
                            <a href="membership-request.html" class="h6 group-set">Membership Request</a>
                        </div>
                        
                    </li>
                    <li>
                        <div class="li-group">
                            <i class="fas fa-user-plus search-icon" style="padding: 11px 9px;"></i>
                            <a href="auto-approval.html" class="h6 group-set">Auto Aproval</a>
                        </div>
                        
                    </li>
                    <li>
                        <div class="li-group ">
                            <i class="fas fa-align-justify search-icon"></i>
                            <a href="pending-post.html" class="h6 group-set">Pending Post</a>
                        </div>
                    </li>
                    <li>
                        <div class="li-group">
                            <i class="fas fa-book search-icon"></i>
                            <a href="group-rules.html" class="h6 group-set">Group Rules</a>
                        </div>
                        
                    </li>
                    <li>
                        <div class="li-group">
                            <i class="fas fa-file-prescription search-icon" style="padding: 11px 14px;"></i>
                            <a href="reported-content.html" class="h6 group-set">Reported Content</a>
                        </div>
                        
                    </li>
                    <li>
                        <div class="li-group">
                            <i class="fas fa-cog search-icon"></i>
                            <a href="group-settings.html" class="h6 group-set">Settings</a>
                        </div>
                        
                    </li>
                </ul>
            </div>
        </div>
      
        <!-- ... end W-Action -->
    </div>
</div>
