# Copyright (c) 2017, 2019 Oracle and/or its affiliates. All rights reserved. This
# code is released under a tri EPL/GPL/LGPL license. You can use it,
# redistribute it and/or modify it under the terms of the:
#
# Eclipse Public License version 1.0, or
# GNU General Public License version 2, or
# GNU Lesser General Public License version 2.1.

require 'ffi'

module Fiddle

  TYPE_DOUBLE = 'DOUBLE'

  SIZEOF_DOUBLE = Truffle::FFI.type_size(Truffle::FFI::TYPE_DOUBLE)

  def self.dlopen(name=nil)
    Handle.new(name)
  end

end
