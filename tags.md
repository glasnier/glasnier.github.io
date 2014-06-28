---
title: Tags from Gilles Lasnier's homepage
layout: default
permalink: /blog/tags/
---
<div class="row">
  <div class="col-lg-1 hidden-phone"></div>

  <div class="col-lg-10">

    <div class="page-header" id="tags">
      <h1><i class="fa fa-tags"></i> Tags</h1>
      <p>{{ site.blog-name }} <i class="fa fa-angle-double-right"></i> <a href="{{ site.url }}/blog/tags/" alt="All 'tags'">tags</a>
    </div>

      {% for tag in site.tags %}
      <span>
      <a class="label label-default label-xs" href="{{ site.url }}/blog/tags/{{ tag[0] }}">#{{ tag[0] }} <sup>{{ tag[1].size }}</sup></a>
      </span>
      {% endfor %}
    </ul>   
  </div>
</div>