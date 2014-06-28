---
title: Research Activities
layout: default
---

<div class="row">
  <div class="col-lg-1 hidden-phone"></div>
  
  <div class="col-lg-10">
    <div class="page-header" id="research">
      <h1>Research Activities</h1>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-1 hidden-phone"></div>
  
  <div class="col-lg-6">

    <h2>Research interests</h2>
    
    <p>I'm interested in the design of distributed realtime &amp; embedded systems applied to high-integrity domains such as spatial, avionics, etc. I'm particularly focused on innovative approaches and technologies based on model-driven engineering (analysis, transformation, code generation). I've a strong background in programming and modeling languages to support high-integrity applications, and I tend to be more interested by building model-based process and toolchain driven both analysis and code generation. Problematics addressed here are to ensure the consistency between the various models (and their different abstraction level) involved in the toolchain and to reduce the semantic gap between models and implementation.</p>

    <p>My recent works concern the design and the simulation of cyber-physical systems where heterogeneous system modeling introduces complexities. Combination of model-of-computations (MoC), distributed simulation and network integration are challenges involved here.</p>

    <p>Most of my <strong><a href="{{ site.url }}/publications" alt="Publications">publications</a></strong> are available on line or <strong><a href="{{ site.url }}/publications" alt="Publications">here</a></strong>.</p>

  </div>

  <div class="col-lg-4 text-right">
    <div class="awesome-css" id="latestResearchNews">
      <h2>Latest News <a href="{{ site.url }}/blog/feeds/feed-research.xml"><img src="{{ site.url }}/img/feed-icon.svg" alt="Atom feed" width="18px" title="Research News feed"></a></h2>

      <ul>
        {% for post in site.categories.research limit: 8 %}
          <li><a href="{{ post.url }}">{{ post.title }}</a> <small>({{ post.date | date: "%m/%d/%Y" }})</small> </li>
        {% endfor %}
      </ul>
    
      <h2>Social <small>&amp;</small> Research</h2>

      <ul class="list-inline">
        <li><a href="http://www.informatik.uni-trier.de/~ley/pers/hd/l/Lasnier:Gilles"><img src="{{ site.url }}/img/dblp-icon.png" alt="" width="28px" title="dblp"></a></li>
        <li class="muted"><small>&middot;</small></li>
        <li><a href="http://scholar.google.fr/citations?user=6CZnz1kAAAAJ&hl=en"><img src="{{ site.url }}/img/gs-logo.svg" width="48px"></a><li>
        <li class="muted"><small>&middot;</small></li>
        <li><a href="http://www.researchgate.net/profile/Gilles_Lasnier/"><img src="{{ site.url }}/img/rg-icon.png" width="28px"></a></li>
        <li class="muted"><small>&middot;</small></li>
        <li><a href="http://academic.research.microsoft.com/Author/3824439"><img src="{{ site.url }}/img/mas-icon.png" width="28px"></a></li>
      </ul>
    </div>
  </div>
</div>

<div class="row">

  <div class="col-lg-1 hidden-phone"></div>
 
  <div class="col-lg-10">
    <h2>Contributions to software projects</h2>

    <p>I'm or I've contributed to the following open-source software projects:</p>

    <ul>
      <li><p><a href="http://ptolemy.eecs.berkeley.edu/ptolemyII/">PtolemyII</a>: an open source modeling and simulation tool for heterogeneous systems, developed by the <a href="http://chess.eecs.berkeley.edu/">CHESS team</a> at <a href="http://www.berkeley.edu/index.html">UC-Berkeley</a>. I have implemented the Ptolemy-HLA/CERTI co-simulation tool and the AFDX network actors (based on quantity manager and decorators)</p></li>
      
      <li><p><a href="http://penelope.enst.fr/aadl/wiki/Projects">AADL Behavior annex compiler</a>: I have implemented the AADL behavior annex in <a href="http://www.aadl.info/aadl/currentsite/tool/osate.html">Osate2</a></p></li>
      
      <li><p>AADL-HI: an AADL model-based refinement toolset to validate and generate high-integrity systems. I have developed this prototype during my Ph.D. thesis at TELECOM ParisTech, using <a href="http://www.aadl.info/aadl/currentsite/tool/osate.html">Osate2</a> as front-end and the <a href="http://www.eclipse.org/atl/">ATL framework</a> as model-based transformation technologies (rules description, engine, etc). For recent and similar works you can consult the <a href="http://penelope.enst.fr/aadl/wiki/Projects">RAMSES tool</a></p></li>
      
      <li><p><a href="http://www.aadl.info/aadl/currentsite/tool/osate.html">Osate2</a>: an open source toolset to model and analyze distributed and realtime systems from AADL models, developed by the <a href="http://www.sei.cmu.edu/">Software Engineering Institute</a>. I have improved the annex extension mechanism, and integrated the AADL Behavior annex</p></li>
      
      <li><p><a href="https://github.com/yoogx/polyorb-hi-ada">PolyORB-HI-Ada</a>: a dedicated middleware targeting high-integrity applications and supporting AADL components</li>
      
      <li><p><a href="http://aadl.enst.fr/ocarina/">Ocarina</a>: a compiler for the AADL language and associated model processor (code generation, gateway to model checkers, scheduling analysis tools, etc). I have extended the compiler to support AADLv2 language</p></li>
    
    </ul>
    
    <h2>Postdoctoral research</h2>

    <p>In 2013, I have intregrated the DMIA team at ISAE/Supaero as post-doctoral researcher for one year. I work for the TOAST project which belongs to the TORRENTS domain, funded by the RTRA - STAE Foundation.</p>

    <p>My research is focused on the development of a co-simulation (or co-operative) tool for distributed, heterogeneous and deterministic simulation of distributed and realtime cyber-physical systems. The Ptolemy simulation tool has been chosen for its heterogeneous system modeling capacities and the CERTI framework, compliant to the High-Level Architecture (HLA) standard, for its distributed simulation caracteristic.</p>

    <p>I have developed the Ptolemy-HLA/CERTI co-simulation tool which is right now integrated to the Ptolemy svn tree at UC-Berkeley. This contibution is not a bindings of HLA services for Ptolemy as the ForwardSim solution could be for MatLab. The co-simulation prototype handles high-level logics to deal with the complexities introduced by the co-simulation: time management - i.e.
how events from both worlds are handled in a consistency manner ? - and data communication - i.e. how a data is exchanged in both worlds with a correct representation ? - are discussed and detailed in publications.</p>

    <p>More information available soon...</p>

    <h2>Ph.D thesis</h2>

    <h4>Title: "An Integrated Approach to Validate and Generate High-Integrity Systems by Incremental Refinement of Architectural Models"</h4>

    <p>keywords: aadl; behavior annex; mode-driven engineering; model transformation; code generation; analysis; middleware; ada; ravenscar</p>

    <p>The increasing complexity of distributed realtime and embedded (DRE) systems and their implication in various domains imply new design and development methods. In safety-criticial domains such as space, aeronautical, transport or medecine, their failure could result in the failure of the mission, or in dramatic damages such as human losses. This particular class of systems comes with strong requirements to satisfy safety, reliability and security properties.</p>

    <p>The Model-driven Engineering (MDE) introduces the concept of &laquo; model &raquo; - an abstract description  of the system - and a set of tools (editor, transformation engine, code generator...) to simplify and automatize the design, the validation and the implementation of the system. Thus, various abstractions are realized using different domain-specific modeling languages in order to assess one particular aspect of the system and to re-use model-based analysis tools and generative technologies. These various representations may share some commonalities but the consistency between them is hard to validate (for example: Is the analyzed system the same as the generated one ?).</p>

    <p>This PhD thesis leverages MDE concepts and mechanisms, to enhance the reliability of the model-based development process of DRE systems. Our approach is based on the definition of the architectural and behavioral modeling language AADL-HI Ravenscar - a restriction of AADL (Architecture Analysis & Design Language) and its behavioral annex. This subset of AADL constructs, comes up with a semantic close to the one of an imperative programming language, to drive both the analysis and the code generation of the application components and its relying execution platform (middleware) components. We claim that architectural descriptions express all system component information (architecture, requirements, properties...) relevant for those activities, but it is necessary to extend them with behavioral specifications to make explicit middleware components and artefacts and to reduce the semantic gap between the model and targeted programming language.</p>

    <p>Our approach defines a new design and development process which 1) refines the initial AADL architectural description of the application to an AADL-HI-Ravenscar architectural and behavioral model ; 2) generates and integrates middleware components, deployed and configured statically from the analysis of the application requirements and its properties ; and 3) validates and produces the source code of the whole system, i.e. the application components and the dedicated middleware components. This process is implemented using model-based transformation methods and frameworks that ease the selection of refinement steps and transformation rules according to the targeted execution platform and the programming language.</p> 



  </div>
  


</div> <!-- end row -->
