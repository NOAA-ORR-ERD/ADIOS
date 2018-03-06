.. ADIOS documentation master file, created by
   sphinx-quickstart on Mon Mar  5 14:47:33 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##############################
The ADIOS Oil Database Project
##############################

NEWS
====

NOAA/ADIOS will be at `Interspill <https://www.interspillevent.com/>`_ in London, England, 12-15 March, 2018.

If you have an interst in the project, please find Chris Barker (look for the NOAA Logo on his shirt). Or drop him an email to arrange a meeting:

Chris.Barker@noaa.gov

Contents
========

.. toctree::
   :maxdepth: 1

   collaboration
   data_schema
   software/index

Project goals
=============

The goal of this project is to provide a publicly available library of oil chemistry data that can be used to support oil spill response, planning, and preparedness.

We aim to provide not just data itself, but software to make it easy to access and manipulate the data.

ADIOS Components
================

The project will consist of multiple integrated components:

* Publicly accessible database of oils and their properties suitable for oil spill planning, response, modeling (and environmental impact analysis and injury assessment?).

* User interface software for viewing and manipulating the database (web based and desktop).

* Web API for accessing the data over the Internet (hosted by NOAA).

* Software library (in the Python language) for working with the data via code.

* Data and file format standards for data import / export and interchange.


Open Source:
------------

All data and software will be openly available and unencumbered by licensing restrictions.

Software source code will be published (probably on gitHub) -- open source license or public domain.

Oil Data will be available via a public Web API.


Proprietary data:
-----------------

There is a need for spill responders and government agencies to occasionally work with business proprietary data. No such data will be in the public database hosted by NOAA. But the software and data interchange formats will be independent of the data itself. Any organization will be able to use the software to manage their own data as they see fit. The database software will be able to export and import full data records (or multiple records), if there is a need to transfer data from one database to another, or use a database record to initialize an oil spill model, such as NOAA's GNOME model.


Contacts
========

For collaboration opportunities and project level information:

Chris.Barker@noaa.gov

For oil chemistry / assay questions:

Robert.Jones@noaa.gov

This site is manged in the project gitHub project -- comments, additions, etc can be submitted there:

https://github.com/NOAA-ORR-ERD/ADIOS


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
