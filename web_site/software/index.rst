########
Software
########

There will be a number of components to the ADIOS Oil Library software:

* A database system.

* Python code to manage the data: import / export, validation, etc.

* Python code to work with "incomplete" data: estimate missing properties, generate an oil record suitable for a fate model (GNOME, initially).

* A web API: a system (to be run by NOAA and elsewhere) that provides an API to search and access teh full database from an external system. http / json based. Written in Python

* Front-end User Interface: written in Javascript as a "single page app". This will provide an interface to search, browse, and (optionally) edit an oil library.

