<!-- Topbar -->
<nav id="topbar" class="navbar navbar-expand-lg navbar-light bg-warning nav-shadow">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      <span class="navbar_toggler_title">菜单</span>
    </button>
    <button class="navbar-toggler home_btn" type="button">
      <span class="mdi mdi-home"></span>
      <span class="navbar_toggler_title">主页</span>
    </button>
  
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            <span class="mdi mdi-near-me d-none d-sm-block"></span>板块导航
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">发布需求</a>
            <a class="dropdown-item" href="#">供给市场</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/Index/index.html">二手市场</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">首 页</a>
          </div>
        </li>
      </ul>
      <div class="title d-none d-md-block">
        校园猪&nbsp;|&nbsp;
        <span class="school_name">SchoolName</span>
      </div>
  
      <a class="nav_btn">
        <span class="mdi mdi-apple-keyboard-caps"></span> 我发布的
      </a>
      <a class="nav_btn">
        <span class="mdi mdi-cards-heart"></span> 我想要的
      </a>
      <a class="nav_btn">
        <span class="mdi mdi-folder-star"></span> 收藏
      </a>
  
      <div id="user_list">
        <a id="user_name">
          <span class="name">UserName</span>
          <img id="user_head" src=""></img>
          <span class="badge badge-pill badge-primary">8</span>
        </a>
  
        <div id="user_info">
          <ul>
            <li class="user_list_btn">
              <a>用户消息</a>
              <span id="user_msg" class="badge badge-warning">4</span>
            </li>
            <li class="user_list_btn">
              <a>系统通知</a>
              <span id="sys_msg" class="badge badge-warning">4</span>
            </li>
            <li class="user_list_btn">
              <a>注销</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- TopBar -->