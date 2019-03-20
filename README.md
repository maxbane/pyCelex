pyCelex.py: a python interface to CELEX2.
=========================================

Some code I wrote a while ago for reading stuff, mostly morpho-phonological
data, from CELEX2. Feel free to see if it works for you, fork it, whatever, 
consistent with the LICENSE.

Currently hard-coded to read just the English lexicon, but it shouldn't be hard
to parameterize that.

-Max

Usage example
-------------

Assume you have CELEX2 installed at `/path/to/CELEX2`. This should be top directory
from the CELEX2 disc containing the `README`, and subdirectories `awk`, `c`,
`dutch`, `english`, `german`, etc.

    >>> import pyCelex
    >>> celex = pyCelex.buildWordFormDict('/path/to/CELEX2')
    >>> celex['run']
    [WordForm('run', 75882, 39588, 987, 'S', '@'),
     WordForm('run', 75883, 39589, 626, 'i', '@'),
     WordForm('run', 113816, 39589, 626, 'e1S', '@'),
     WordForm('run', 130829, 39589, 626, 'e2S', '@'),
     WordForm('run', 147739, 39589, 626, 'eP', '@'),
     WordForm('run', 158066, 39589, 626, 'pa', 'IRR')]
    >>> celex['run'][0].cob # corpus freq of first wordform
    987
    >>> dir(celex['run'][0]) # lots of other wordform properties
        ...
    >>> dir(celex['run'][0].lemma) # lemma properties
        ...

