<div class="ui-block">
    <div class="progress post-progress">
        <div class="post-progress-bar progress-bar"></div>
    </div>
    <div class="news-feed-form">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active inline-items" data-toggle="tab" href="#home-1" role="tab" aria-expanded="true">
                    <svg class="olymp-status-icon">
                        <use xlink:href="assets/svg-icons/sprites/icons.svg#olymp-status-icon"></use>
                    </svg>
                    <!-- <span>Post</span> -->
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link inline-items" data-toggle="tab" href="#poll-1" role="tab" aria-expanded="false">
                    <svg class="olymp-poll-h">
                        <use xlink:href="assets/svg-icons/sprites/icons.svg#olymp-poll-h"></use>
                    </svg>
                    <!-- <span>Poll</span> -->
                </a>
            </li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane active" id="home-1" role="tabpanel" aria-expanded="true">
                <form>
                    <div class="author-thumb">
                        <img src="assets/img/author-page.jpg" alt="author">
                    </div>
                    <div class="form-group with-icon label-floating is-empty">
                        <input type="text" name="post-title" class="form-control post-title" placeholder="Title" style="border: none;border-bottom: 1px solid #edf2f6;border-radius: 0px;">
                        <textarea class="form-control" placeholder="What happend..." style="border-top:none;"></textarea>
                    </div>
                    <div class="hidden add-media">
                        <div class="add-media-items">
                            <a href="" class="add-media-close"><i class="far fa-times-circle"></i></a>
                        </div>
                         <div class="add-media-items">
                            
                        </div>
                         <div class="add-media-items">
                            
                        </div>
                        <div class="add-media-items">
                            <a href="javascript:void(0)" class="add-item"><i class="fas fa-plus" id="icon_upload"  onclick="_upload()"></i></a>
                        </div>
                    </div>
                    <div class="add-options-message">
                       <!--  <a href="#" class="options-message" data-toggle="tooltip" data-placement="top" data-original-title="ADD PHOTOS">
                            <svg class="olymp-camera-icon" data-toggle="modal" data-target="#update-header-photo">
                                <use xlink:href="assets/svg-icons/sprites/icons.svg#olymp-camera-icon"></use>
                            </svg>
                        </a> -->
                        <input type="file" id="file_upload_id" style="display:none">
                        <a href="javascript:void(0)" class="options-message" data-toggle="tooltip" data-placement="top" data-original-title="UPLOAD MEDIA">
                            <svg class="olymp-computer-icon" id="icon_upload">
                                <use xlink:href="assets/svg-icons/sprites/icons.svg#olymp-computer-icon"></use>
                            </svg>
                        </a>
                        <div class="btn-group dropup" style="float: right;top: -6px;" >
                        <button type="button" class="btn btn-primary btn-md-2">
                            Post
                        </button>
                        <button type="button" class="btn btn-primary btn-md-2 dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                            <div class="dropdown-menu dropdown-menu-left">
                                <a class="dropdown-item" href="#">Post</a>
                                <a class="dropdown-item" href="#">Post for Answer</a>
                            </div>
                        </div>
                        
                        <!-- /////Mobile -->
                       <!--  <div class="btn-group dropup" style="float: right;top: -6px;" id="tm-sm-flex-display">
                            <button type="button" class="btn btn-primary btn-md-2">
                                Post
                            </button>
                            <button type="button" class="btn btn-primary btn-md-2 dropdown-toggle dropdown-toggle-split" data-toggle="modal" data-target="#post-select">
                            </button>
                        </div> -->
                        <!-- Mobile End -->
                        <!-- <button class="btn btn-primary btn-md-2">Post</button> -->
                    </div>
                </form>
            </div>
            <div class="tab-pane" id="poll-1" role="tabpanel" aria-expanded="true">
                <form>
                    <div class="author-thumb">
                        <img src="assets/img/author-page.jpg" alt="author">
                    </div>
                    <div class="form-group with-icon label-floating is-empty">
                        <!-- <label class="control-label">Ask Question</label> -->
                        <textarea class="form-control" placeholder="Ask Question"></textarea>
                    </div>
                    <div class="poll-options">
                        <div class="form-group label-floating is-empty mb-3">
                            <label class="control-label">Choice 1</label>
                            <input type="text" name="poll-options-1" class="form-control">
                        </div>
                        <div class="form-group label-floating is-empty mb-3">
                            <label class="control-label">Choice 2</label>
                            <input type="text" name="poll-options-1" class="form-control">
                        </div>
                        <button class="btn btn-primary " data-toggle="tooltip" data-placement="top" data-original-title="ADD CHOICE"><i class="fa fa-plus"></i></button>
                        <div class="poll-time">
                            <div class="form-group is-empty mb-3">
                                <label class="control-label">Poll Length</label>
                                <div class="row">
                                    <div class="col-lg-4 form-group label-floating">
                                        <label class="control-label">Days</label>
                                        <select>
                                            <option>0</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-4 form-group label-floating">
                                        <label class="control-label">Hours</label>
                                        <select>
                                            <option>0</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-4 form-group label-floating">
                                        <label class="control-label">Minutes</label>
                                        <select>
                                            <option>0</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
           
                    <div class="add-options-message" style="border-top: 1px solid #dee2e6;">
                       
                        <button class="btn btn-primary btn-md-2">Post</button>
                       
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>