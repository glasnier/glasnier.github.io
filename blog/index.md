---
title: Blog
layout: blog2
---

<!--<div class="container">-->
<div class="row">
  <div class="col-lg-6">
   <h1>{{ page.title }} <a href="{{ site.url }}/blog/feeds/feed.xml"><img src="{{ site.url }}/img/feed-icon.svg" alt="Atom feed" width="18px" title="News feed"></a></h1> 
   <hr>   
        {% for post in site.posts %}
          
            <p><h3><small>{{ post.date | date: "%Y/%m/%d" }}</small> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></h3></p>
            
            <p><small>category: <a href="{{ site.url }}/blog/categories/{{ post.category }}">{{ post.category }}</a> | tags: {% for tag in post.tags %} &nbsp;<a href="{{ site.url }}/blog/tags/{{ tag }}">{{ tag }}</a> {% endfor %}</small> <span><small class="text-right"> | author: {{ post.author}}</small></span></p>

            {{ post.excerpt | remove: '<p>' | remove: '</p>' }}...

            <p><a href="{{ post.url }}">READ MORE <i class="fa fa-angle-right"></i></a></p>
          
        <hr>
        {% endfor %}
  </div>
</div> <!-- end of row -->
<!--</div>--> <!-- end of container -->