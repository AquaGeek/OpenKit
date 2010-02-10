Progress - Feb 9th
==================

After two days of hacking away, here is what I have so far:

![Progress](http://homepage.mac.com/tylers/.Public/GridViewDemo.png "Grid View Demo")

Each color is a separate cell that is provided by the data source. Unfortunately, no reusing of cells is being performed yet, and all cells are being requested and laid out each time layoutSubviews is being called (each time the scroll view moves). Needless to say, performance is pretty horrible.

Architecture
============

OKGridView mimics the design (external and internal) of UITableView pretty closely. Right now, it has some preliminary support for sections as well as variable width columns on a row-by-row basis. I think I will move away from this and force column widths to be uniform on a per-section basis.