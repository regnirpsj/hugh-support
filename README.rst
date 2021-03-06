==============================================
Hull University Graphics Helper (HUGH) Support
==============================================

.. image:: https://travis-ci.org/regnirpsj/hugh-support.svg?branch=master
   :target: https://travis-ci.org/regnirpsj/hugh-support
   
.. image:: https://coveralls.io/repos/github/regnirpsj/hugh-support/badge.svg?branch=master
   :target: https://coveralls.io/github/regnirpsj/hugh-support?branch=master

:Author: Jan P Springer <regnirpsj@gmail.com>

.. contents::

.. _Boost:                          http://www.boost.org/
.. _CMake:                          http://www.cmake.org/
.. _Department of Computer Science: http://www2.hull.ac.uk/science/computer_science.aspx
.. _Doxygen:                        http://www.doxygen.org/
.. _GLI:                            http://gli.g-truc.net/
.. _GLM:                            http://glm.g-truc.net/
.. _The University of Hull:         http://www.hull.ac.uk/
.. _hugh-build-system:              http://github.com/regnirpsj/hugh-build-system

Introduction
============

``hugh-support`` is an (experimental) infrastructure project to support the various graphics modules at the `Department of Computer Science`_, `The University of Hull`_.

Building and Installation
=========================

Quick Setup
-----------

Linux::

 $> cd <src-dir-created-by-git-clone>
 $> mkdir build && cd build
 $> cmake -DCMAKE_INSTALL_PREFIX=../install ..
 $> cmake --build . --clean-first
 $> cmake --build . --target test_all
 $> cmake --build . --target install

Windows x86::

 $> cd <src-dir-created-by-git-clone>
 $> mkdir build.x86 && cd build.x86
 $> cmake -DCMAKE_INSTALL_PREFIX=../install.x86 ..
 $> cmake --build . --clean-first -- /nologo /v:q
 $> cmake --build . --target test_all -- /nologo /v:q
 $> cmake --build . --target install -- /nologo /v:q

 Options after `--` apply to `MSBuild.exe`.
 
Windows x64::

 $> cd <src-dir-created-by-git-clone>
 $> mkdir build.x64 && cd build.x64
 $> cmake -G "Visual Studio 12 2013 Win64" -DCMAKE_INSTALL_PREFIX=../install.x64 ..
 $> cmake --build . --clean-first -- /nologo /v:q
 $> cmake --build . --target test_all -- /nologo /v:q
 $> cmake --build . --target install -- /nologo /v:q

 Replace the `Visual Studio 12 2013 Win64` generator version as needed.
 
Overview
--------

[to be written]

Requirements
------------

Mandatory:

* `Boost`_
* `GLM`_/`GLI`_
* `hugh-build-system`_

Optional:

* `Doxygen`_

Acknowledgements
================

[to be written]

License
=======

Copyright 2016 `The University of Hull`_. Distributed under the LGPLv2.1 (see the accompanying file LICENSE).
