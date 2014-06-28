---
title: HLA/CERTI - PtolemyII framework
description: The framework for heterogeneous and distributed simulation of cyber-physical systems has been integrated to Ptolemy's tree svn.
layout: post
category: research
tag: [ptolemy, hla, certi, distributed, simulation, discrete-event, heterogeneous, model]
author: Gilles Lasnier
---

During my post-doctoral research, I'm working on cyber-physical systems design and simulation. A first contribution is to develop a framework that allows heterogeneous system modeling and distributed simulation<!--more-->. This framework leverages two open-source simulation tools: <a href="http://ptolemy.eecs.berkeley.edu/" alt="Ptolemy">PtolemyII</a> (<a href="http://chess.eecs.berkeley.edu/">UC-Berkeley/CHESS</a>) and <a href="http://savannah.nongnu.org/projects/certi" alt="HLA/CERTI">HLA/CERTI</a> (<a href="http://recherche.isae.fr/en/departments/dmia.html">ISAE/DMIA</a> and <a href="http://www.onera.fr/en/dtim">ONERA/DTIM</a>).

The framework takes benefits from PtolemyII for its heterogeneous system 
modeling and network modeling capacities. Distributed simulation is enable
by the use of the HLA/CERTI achitecture.
This part of my research work is detailed in [dsrt13] and [msr13] papers.
Time management and data commmunication are also explained there.

See the <a href="http://chess.eecs.berkeley.edu/ptexternal/" alt="Ptolemy svn">
Ptolemy svn page</a> to know how to get Ptolemy and the cooperation framework.

The framework is located in the <code>ptolemy.apps.hlacerti</code> java 
package. Information to enable the framework and demos are provided.

This work is a joint effort between the Ptolemy's team from the University California Berkeley, the ISAE/DMIA research team and the ONERA/DTIM research team.