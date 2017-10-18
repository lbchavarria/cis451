<?php
    
    include('connectiondata.txt');
    
    $conn = mysqli_connect($server, $user, $pass, $dbname, $port)
    or die('Error connecting to MySQL server.');
    
    ?>

<html>
<head>
<title>AML</title>
</head>

<body bgcolor="white">


<hr>


<?php
    
    $anime = $_POST['anime'];
    
    $anime = mysqli_real_escape_string($conn, $anime);
    // this is a small attempt to avoid SQL injection
    // better to use prepared statements
    if ($anime != 0) {
    $query1 = "SELECT DISTINCT * FROM anime LEFT OUTER JOIN director USING (direct_id) LEFT OUTER JOIN manga ON adapt_manga_id = manga_id LEFT OUTER JOIN novel ON anime.adapt_novel_id = novel_id WHERE anime_id = ";
    $query1 = $query1."'".$anime."';";
    }
    
    $manga = $_POST['manga'];
    
    $manga = mysqli_real_escape_string($conn, $manga);
    // this is a small attempt to avoid SQL injection
    // better to use prepared statements
    if ($manga != 0) {
    $query2 = "SELECT DISTINCT * FROM manga LEFT OUTER JOIN author USING (author_id) LEFT OUTER JOIN artist USING (artist_id) LEFT OUTER JOIN anime ON adapt_anime_id = anime_id LEFT OUTER JOIN novel ON manga.adapt_novel_id = novel_id WHERE manga_id = ";
    $query2 = $query2."'".$manga."';";
    }
    
    $novel = $_POST['novel'];
    
    $novel = mysqli_real_escape_string($conn, $novel);
    // this is a small attempt to avoid SQL injection
    // better to use prepared statements
    if ($novel != 0) {
        $query3 = "SELECT DISTINCT * FROM novel LEFT OUTER JOIN author USING (author_id) LEFT OUTER JOIN artist USING (artist_id) LEFT OUTER JOIN anime ON adapt_anime_id = anime_id LEFT OUTER JOIN manga ON novel.adapt_manga_id = manga_id WHERE novel_id = ";
        $query3 = $query3."'".$novel."';";
    }
    
    $director = $_POST['director'];
    
    $director = mysqli_real_escape_string($conn, $director);
    // this is a small attempt to avoid SQL injection
    // better to use prepared statements
    if ($director != 0) {
        $query4 = "SELECT DISTINCT * FROM director LEFT OUTER JOIN anime USING (direct_id) WHERE direct_id = ";
        $query4 = $query4."'".$director."';";
    }
    
    $author = $_POST['author'];
    
    $author = mysqli_real_escape_string($conn, $author);
    // this is a small attempt to avoid SQL injection
    // better to use prepared statements
    if ($author != 0) {
        $query5 = "SELECT DISTINCT * FROM author LEFT OUTER JOIN manga USING (author_id) LEFT OUTER JOIN novel USING (author_id) WHERE author_id = ";
        $query5 = $query5."'".$author."';";
    }
    
   /* $character = $_POST['character'];
    
    $character = mysqli_real_escape_string($conn, $character);
    // this is a small attempt to avoid SQL injection
    // better to use prepared statements
    if ($character != 0) {
        $query6 = "SELECT DISTINCT * FROM character INNER JOIN actor ON voice_id = actor_id LEFT OUTER JOIN anime ON in_anime_id = anime_id LEFT OUTER JOIN manga ON in_manga_id = manga_id LEFT OUTER JOIN novel ON in_novel_id = novel_id WHERE character_id = ";
        $query6 = $query6."'".$character."';";
    }*/

    

    ?>


<?php
    if ($anime != 0) {
    $result1 = mysqli_query($conn, $query1)
    or die(mysqli_error($conn));
    
    print "<pre>";
    while($row = mysqli_fetch_array($result1, MYSQLI_BOTH))
    {
        print "\n";
        print "NAME:\n";
        print "$row[anime_name]\n";
        print "\n";
        print "TYPE:\n";
        print "$row[type]\n";
        print "\n";
        print "STATUS:\n";
        print "$row[anime_status]\n";
        print "\n";
        print "AIR DATE:\n";
        print "$row[anime_date_aired] - $row[anime_date_end]\n";
        print "\n";
        print "NUMBER OF EPISODES:\n";
        print "$row[episodes]\n";
        print "\n";
        print "DIRECTED BY:\n";
        print "$row[direct_last_name], $row[direct_first_name]\n";
        print "\n";
        print "MANGA VERSION:\n";
        print "$row[manga_name]\n";
        print "\n";
        print "LIGHT NOVEL VERSION:\n";
        print "$row[novel_name]\n";
        print "\n";
        print "RATING:\n";
        print "$row[rating]\n";
        print "\n";
        print "GENRES:\n";
        print "$row[anime_genres]\n";
        print "\n";
        print "STUDIO:\n";
        print "$row[studio_name]\n";
        print "\n";
        print "DURATION:\n";
        print "$row[duration]\n";
        print "\n";
        print "DESCRIPTION:\n";
        print "$row[anime_desc]\n";
    }
    print "</pre>";
    
    mysqli_free_result($result1);
    }
    
    else if ($manga != 0) {
    $result2 = mysqli_query($conn, $query2)
    or die(mysqli_error($conn));
    
    print "<pre>";
    while($row = mysqli_fetch_array($result2, MYSQLI_BOTH))
    {
        print "\n";
        print "NAME:\n";
        print "$row[manga_name]\n";
        print "\n";
        print "AUTHOR:\n";
        print "$row[author_last_name], $row[author_first_name]\n";
        print "\n";
        print "ARTSIT:\n";
        print "$row[artist_last_name], $row[artist_first_name]\n";
        print "\n";
        print "STATUS:\n";
        print "$row[manga_status]\n";
        print "\n";
        print "PUBLISHED DATE\n";
        print "$row[manga_date_published] - $row[manga_date_end]\n";
        print "\n";
        print "NUMBER OF VOLUMES:\n";
        print "$row[manga_volumes]\n";
        print "\n";
        print "NUMBER OF CHAPTERS:\n";
        print "$row[manga_chapters]\n";
        print "\n";
        print "MAGAZINE PUBLISHED IN:\n";
        print "$row[magazine]\n";
        print "\n";
        print "GENRES:\n";
        print "$row[manga_genres]\n";
        print "\n";
        print "ANIME VERSION:\n";
        print "$row[anime_name]\n";
        print "\n";
        print "LIGHT NOVEL VERSION:\n";
        print "$row[novel_name]\n";
        print "\n";
        print "DESCRIPTION\n";
        print "$row[manga_desc]\n";
    }
        
        
    print "</pre>";
    
    mysqli_free_result($result2);
    }
    
    else if ($novel != 0) {
        $result3 = mysqli_query($conn, $query3)
        or die(mysqli_error($conn));
        
        print "<pre>";
        while($row = mysqli_fetch_array($result3, MYSQLI_BOTH))
        {
            print "\n";
            print "NAME:\n";
            print "$row[novel_name]\n";
            print "\n";
            print "AUTHOR:\n";
            print "$row[author_last_name], $row[author_first_name]\n";
            print "\n";
            print "ARTSIT:\n";
            print "$row[artist_last_name], $row[artist_first_name]\n";
            print "\n";
            print "STATUS:\n";
            print "$row[novel_status]\n";
            print "\n";
            print "PUBLISHED DATE\n";
            print "$row[novel_date_publish] - $row[novel_date_end]\n";
            print "\n";
            print "NUMBER OF VOLUMES:\n";
            print "$row[novel_volumes]\n";
            print "\n";
            print "NUMBER OF CHAPTERS:\n";
            print "$row[novel_chapters]\n";
            print "\n";
            print "GENRES:\n";
            print "$row[novel_genres]\n";
            print "\n";
            print "ANIME VERSION:\n";
            print "$row[anime_name]\n";
            print "\n";
            print "MANGA VERSION:\n";
            print "$row[manga_name]\n";
            print "\n";
            print "DESCRIPTION\n";
            print "$row[novel_desc]\n";
        }
        
        
        print "</pre>";
        
        mysqli_free_result($result3);
    }

    else if ($director != 0) {
        $result4 = mysqli_query($conn, $query4)
        or die(mysqli_error($conn));
        
        print "<pre>";
        while($row = mysqli_fetch_array($result4, MYSQLI_BOTH))
        {
            print "\n";
            print "NAME:\n";
            print "$row[direct_last_name], $row[direct_first_name]\n";
            print "\n";
            print "BIRTHDAY:\n";
            print "$row[dob]\n";
            print "\n";
            print "ANIME DIRECTED:\n";
            print "$row[anime_name]\n";
        }
        
        
        print "</pre>";
        
        mysqli_free_result($result4);
    }
    
    else if ($author != 0) {
        $result5 = mysqli_query($conn, $query5)
        or die(mysqli_error($conn));
        
        print "<pre>";
        while($row = mysqli_fetch_array($result5, MYSQLI_BOTH))
        {
            print "\n";
            print "NAME:\n";
            print "$row[author_last_name], $row[author_first_name]\n";
            print "\n";
            print "BIRTHDAY:\n";
            print "$row[dob]\n";
            print "\n";
            print "MANGA WRITTEN:\n";
            print "$row[manga_name]\n";
            print "\n";
            print "LIGHT NOVEL WRITTEN:\n";
            print "$row[novel_name]\n";
        }
        
        
        print "</pre>";
        
        mysqli_free_result($result4);
    }

    else if ($character != 0) {
        $result6 = mysqli_query($conn, $query6)
        or die(mysqli_error($conn));
        
        print "<pre>";
        while($row = mysqli_fetch_array($result6, MYSQLI_BOTH))
        {
            print "\n";
            print "NAME:\n";
            print "$row[actor_last_name], $row[actor_first_name]\n";
            print "\n";
            print "AGE:\n";
            print "$row[age]\n";
            print "\n";
            print "BIRTHDAY:\n";
            print "$row[dob]\n";
            print "\n";
            print "VOICED BY:\n";
            print "$row[actor_last_name], $row[actor_first_name]\n";
            print "\n";
            print "FROM ANIME:\n";
            print "$row[anime_name]\n";
            print "\n";
            print "FROM MANGA:\n";
            print "$row[manga_name]\n";
            print "\n";
            print "FROM LIGHT NOVEL:\n";
            print "$row[novel_name]\n";
        }
        
        
        print "</pre>";
        
        mysqli_free_result($result4);
    }

    
    
    mysqli_close($conn);
    
    ?>

<p>
<hr>

<p>
<a href="phpfile.txt" >Contents</a>
of the PHP program that created this page. 	 

</body>
</html>
