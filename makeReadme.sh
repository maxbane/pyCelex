#!/bin/bash
awk '/pyCelex.py/,/END MODULE DOC/' pyCelex.py | head -n-1 > README.md 
