# -*- coding: utf-8 -*-
'''
fastmat/MLUltraSound.pxd
 -------------------------------------------------- part of the fastmat package

  Header file for MLUltraSound class (structural description).


  Author      : sempersn
  Introduced  : 2017-10-06
 ------------------------------------------------------------------------------

   Copyright 2016 Sebastian Semper, Christoph Wagner
       https://www.tu-ilmenau.de/ems/

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

 ------------------------------------------------------------------------------
'''
import cython
cimport numpy as np

from .Partial cimport Partial
from .core.types cimport *

################################################################################
################################################## class MLUltraSound
cdef class MLUltraSound(Partial):

    ############################################## class variables
    cdef public np.ndarray _tenT            # defining elements
    cdef public np.ndarray _diags           # matrix diagonals tensor
    cdef intsize _numBlocksN
    cdef intsize _numSize1
    cdef intsize _numSize2
    cdef np.ndarray _arrN

    ############################################## class methods
    cpdef np.ndarray _reference(self)
