---
title: Categories from Gilles Lasnier's homepage
layout: default
permalink: /blog/categories/
---
<div class="row">
  <div class="col-lg-1 hidden-phone"></div>

  <div class="col-lg-10">

    <div class="page-header" id="categories">
      <h1><i class="fa fa-list"></i> Categories</h1>
      <p>{{ site.blog-name }} <i class="fa fa-angle-double-right"></i> <a href="{{ site.url }}/blog/categories/" alt="All 'categories'">categories</a>
    </div>
  
      {% for cat in site.categories %}
      <span>
        <a class="label label-warning label-xs" href="{{ site.url }}/blog/categories/{{ cat[0] }}">{{ cat[0] }} <sup>{{ cat[1].size }}</sup></a>
      </span>
      {% endfor %}
  </div>
</div>