        <h1 style="padding-left:15px;"><a href="/CMS" id="brand">cms</a></h1>
        <ul id="menu">
            <li><a href="/CMS">Home</a></li>
           <?php if((isset($_SESSION["userid"])) && (isset($_SESSION["isadmin"])))
           {?>
            <li><a href="/CMS/php/userSetting.php">Change Credentials</a></li>
            <li><a href="/CMS/php/viewContacts.php">View Contacts</a></li>
            <li><a href="/CMS/php/logout.php">Logout</a></li>
            <li><a href="/CMS/php/createPosts.php">Create Posts</a></li>
            <li><a href="/CMS/php/postsList.php">View Posts</a></li>
            <?php }else{ ?>
            <li><a href="/CMS/php/contact.php">Contact</a></li>
            <li><a href="/CMS/php/login.php">Login</a></li>
           
            
            <li>
                <form method="post" id="searchForm" action="/CMS/php/search.php">
                    <input type="text" name="term" placeholder="search by title" />
                    <input type="submit" value="search"/>
                </form>
            </li>
             <?php } ?>
        </ul>

