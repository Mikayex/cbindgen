from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, intptr_t
from libc.stdint cimport uint8_t, uint16_t, uint32_t, uint64_t, uintptr_t
cdef extern from *:
  ctypedef bint bool
  ctypedef struct va_list

cdef extern from *:

  cdef enum Foo_Tag:
    A,

  cdef struct A_Body:
    float _0[20];

  cdef struct Foo:
    Foo_Tag tag;
    A_Body a;

  void root(Foo a);
