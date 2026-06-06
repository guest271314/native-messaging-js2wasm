(module
  (type $__arr_externref (array (mut externref)))
  (type $__vec_externref (struct (field $length (mut i32)) (field $data (mut (ref null 0)))))
  (type $__arr_f64 (array (mut f64)))
  (type $__vec_f64 (struct (field $length (mut i32)) (field $data (mut (ref null 2)))))
  (type $__str_data (array (mut i16)))
  (type $AnyString (sub (struct (field $len i32))))
  (type $NativeString (sub $type5 (struct (field $len i32) (field $off i32) (field $data (ref null 4)))))
  (type $ConsString (sub $type5 (struct (field $len i32) (field $left (ref null 5)) (field $right (ref null 5)))))
  (type $$wasi_fd_write (func (param i32 i32 i32 i32) (result i32)))
  (type $type9 (func (param i32) (result i32)))
  (type $type12 (func (param externref)))
  (type $type13 (func))
  (type $type14 (func (param f64)))
  (type $type15 (func (param externref) (result i32)))
  (type $__arr_ref_5 (array (mut (ref null 5))))
  (type $type31 (func (param (ref null 5) (ref null 5)) (result i32)))
  (type $type32 (func (param (ref null 5) i32 i32) (result (ref null 5))))
  (type $type33 (func (param (ref null 5) i32) (result (ref null 5))))
  (type $type34 (func (param (ref null 5) (ref null 5) i32) (result i32)))
  (type $type35 (func (param (ref null 5)) (result (ref null 5))))
  (type $type36 (func (param (ref null 5) i32 (ref null 5)) (result (ref null 5))))
  (type $type38 (func (param (ref null 5) (ref null 5) (ref null 5)) (result (ref null 5))))
  (type $__vec_ref_5 (struct (field $length (mut i32)) (field $data (mut (ref null 16)))))
  (type $type41 (func (param i32) (result (ref null 5))))
  (type $type42 (func (param i32 i32)))
  (type $__arr_i8_byte (array (mut i8)))
  (type $__vec_i8_byte (struct (field $length (mut i32)) (field $data (mut (ref null 33)))))
  (type $__box_number_struct (struct (field $value f64)))
  (type $__box_boolean_struct (struct (field $value i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write_import (type 8)))
  (import "wasi_snapshot_preview1" "fd_read" (func $fd_read_import (type 8)))
  (global $__wasi_bump_ptr (mut i32) (i32.const 1024))
  (global $__lin_u8_arena_ptr (mut i32) (i32.const 262144))
  (global $__mod_FRAME_CHUNK (mut f64) (f64.const 0))
  (global $__mod_MAX_RUN (mut f64) (f64.const 0))
  (global $__mod_COMMA (mut f64) (f64.const 0))
  (global $__mod_OPEN_BRACKET (mut f64) (f64.const 0))
  (global $__mod_CLOSE_BRACKET (mut f64) (f64.const 0))
  (global $__current_this (mut externref) (ref.null extern))
  (memory 3)
  (tag $__exn (type 11))
  (func $__str_copy_tree (param (ref null 5) (ref null 4) i32) (result i32)
    (local $flat (ref null 6))
    (local $flatOff i32)
    (local $flatLen i32)
    (local $cur (ref null 5))
    (local $worklist (ref null 16))
    (local $wlTop i32)
    (local $newWl (ref null 16))
    local.get 0
    ref.test (ref 6)
    (if
      (then
      local.get 0
      ref.cast (ref 6)
      local.set 3
      local.get 3
      ref.as_non_null
      struct.get 6 1
      local.set 4
      local.get 3
      ref.as_non_null
      struct.get 6 0
      local.set 5
      local.get 1
      local.get 2
      local.get 3
      ref.as_non_null
      struct.get 6 2
      local.get 4
      local.get 5
      array.copy 4 4
      local.get 2
      local.get 5
      i32.add
      return
      )
    )
    i32.const 16
    array.new_default 16
    local.set 7
    i32.const 0
    local.set 8
    local.get 0
    local.set 6
    (block
      (loop
        (block
          (loop
            local.get 6
            ref.as_non_null
            ref.test (ref 6)
            br_if 1
            local.get 8
            local.get 7
            ref.as_non_null
            array.len
            i32.ge_s
            (if
              (then
              local.get 7
              ref.as_non_null
              array.len
              i32.const 1
              i32.shl
              array.new_default 16
              local.set 9
              local.get 9
              ref.as_non_null
              i32.const 0
              local.get 7
              ref.as_non_null
              i32.const 0
              local.get 8
              array.copy 16 16
              local.get 9
              local.set 7
              )
            )
            local.get 7
            ref.as_non_null
            local.get 8
            local.get 6
            ref.as_non_null
            ref.cast (ref 7)
            struct.get 7 2
            array.set 16
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            local.get 6
            ref.as_non_null
            ref.cast (ref 7)
            struct.get 7 1
            local.set 6
            br 0
          )
        )
        local.get 6
        ref.as_non_null
        ref.cast (ref 6)
        local.set 3
        local.get 3
        ref.as_non_null
        struct.get 6 1
        local.set 4
        local.get 3
        ref.as_non_null
        struct.get 6 0
        local.set 5
        local.get 1
        local.get 2
        local.get 3
        ref.as_non_null
        struct.get 6 2
        local.get 4
        local.get 5
        array.copy 4 4
        local.get 2
        local.get 5
        i32.add
        local.set 2
        local.get 8
        i32.eqz
        br_if 1
        local.get 8
        i32.const 1
        i32.sub
        local.set 8
        local.get 7
        ref.as_non_null
        local.get 8
        array.get 16
        local.set 6
        br 0
      )
    )
    local.get 2
  )
  (func $__str_flatten (param (ref null 5)) (result (ref null 6))
    (local $len i32)
    (local $buf (ref null 4))
    local.get 0
    ref.test (ref 6)
    (if (result (ref null 6))
      (then
      local.get 0
      ref.cast (ref 6)
      )
      (else
      local.get 0
      struct.get 5 0
      local.set 1
      local.get 1
      array.new_default 4
      local.set 2
      local.get 0
      local.get 2
      i32.const 0
      call 2
      drop
      local.get 1
      i32.const 0
      local.get 2
      struct.new 6
      )
    )
  )
  (func $__str_concat (param (ref null 5) (ref null 5)) (result (ref null 5))
    (local $lenA i32)
    (local $lenB i32)
    (local $newLen i32)
    (local $newArr (ref null 4))
    (local $flatA (ref null 6))
    (local $flatB (ref null 6))
    local.get 0
    struct.get 5 0
    local.set 2
    local.get 1
    struct.get 5 0
    local.set 3
    local.get 2
    local.get 3
    i32.add
    local.set 4
    local.get 4
    i32.const 64
    i32.ge_u
    (if (result (ref null 5))
      (then
      local.get 4
      local.get 0
      local.get 1
      struct.new 7
      )
      (else
      local.get 0
      call 3
      local.set 6
      local.get 1
      call 3
      local.set 7
      local.get 4
      array.new_default 4
      local.set 5
      local.get 5
      ref.as_non_null
      i32.const 0
      local.get 6
      ref.as_non_null
      struct.get 6 2
      local.get 6
      ref.as_non_null
      struct.get 6 1
      local.get 2
      array.copy 4 4
      local.get 5
      ref.as_non_null
      local.get 2
      local.get 7
      ref.as_non_null
      struct.get 6 2
      local.get 7
      ref.as_non_null
      struct.get 6 1
      local.get 3
      array.copy 4 4
      local.get 4
      i32.const 0
      local.get 5
      ref.as_non_null
      struct.new 6
      )
    )
  )
  (func $__str_buf_next_cap (param i32 i32) (result i32)
    local.get 0
    i32.const 16
    i32.lt_s
    (if
      (then
      i32.const 16
      local.set 0
      )
    )
    (block
      (loop
        local.get 0
        local.get 1
        i32.ge_s
        br_if 1
        local.get 0
        i32.const 1
        i32.shl
        local.set 0
        br 0
      )
    )
    local.get 0
  )
  (func $__str_equals (type 21)
    (local $len i32)
    (local $i i32)
    (local $aData (ref null 4))
    (local $bData (ref null 4))
    (local $aOff i32)
    (local $bOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 2
    local.get 2
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    i32.ne
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 6
    local.get 1
    ref.cast (ref 6)
    struct.get 6 1
    local.set 7
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 4
    local.get 1
    ref.cast (ref 6)
    struct.get 6 2
    local.set 5
    i32.const 0
    local.set 3
    (block
      (loop
        local.get 3
        local.get 2
        i32.ge_u
        br_if 1
        local.get 4
        local.get 6
        local.get 3
        i32.add
        array.get_u 4
        local.get 5
        local.get 7
        local.get 3
        i32.add
        array.get_u 4
        i32.ne
        (if
          (then
          i32.const 0
          return
          )
        )
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0
      )
    )
    i32.const 1
  )
  (func $__str_compare (type 21)
    (local $lenA i32)
    (local $lenB i32)
    (local $minLen i32)
    (local $i i32)
    (local $aData (ref null 4))
    (local $bData (ref null 4))
    (local $aOff i32)
    (local $bOff i32)
    (local $ca i32)
    (local $cb i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 2
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 2
    local.get 3
    local.get 2
    local.get 3
    i32.lt_u
    select
    local.set 4
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 8
    local.get 1
    ref.cast (ref 6)
    struct.get 6 1
    local.set 9
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 6
    local.get 1
    ref.cast (ref 6)
    struct.get 6 2
    local.set 7
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_u
        br_if 1
        local.get 6
        local.get 8
        local.get 5
        i32.add
        array.get_u 4
        local.set 10
        local.get 7
        local.get 9
        local.get 5
        i32.add
        array.get_u 4
        local.set 11
        local.get 10
        local.get 11
        i32.lt_u
        (if
          (then
          i32.const -1
          return
          )
        )
        local.get 10
        local.get 11
        i32.gt_u
        (if
          (then
          i32.const 1
          return
          )
        )
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 2
    local.get 3
    i32.lt_u
    (if
      (then
      i32.const -1
      return
      )
    )
    local.get 2
    local.get 3
    i32.gt_u
    (if
      (then
      i32.const 1
      return
      )
    )
    i32.const 0
  )
  (func $__str_substring (type 22)
    (local $sOff i32)
    (local $sLen i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 3
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 4
    local.get 1
    i32.const 0
    local.get 1
    i32.const 0
    i32.gt_s
    select
    local.tee 1
    local.get 4
    local.get 1
    local.get 4
    i32.lt_s
    select
    local.set 1
    local.get 2
    i32.const 0
    local.get 2
    i32.const 0
    i32.gt_s
    select
    local.tee 2
    local.get 4
    local.get 2
    local.get 4
    i32.lt_s
    select
    local.set 2
    local.get 1
    local.get 2
    i32.gt_s
    (if
      (then
      local.get 2
      local.get 1
      local.set 2
      local.set 1
      )
    )
    local.get 2
    local.get 1
    i32.sub
    local.get 3
    local.get 1
    i32.add
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    struct.new 6
  )
  (func $__str_charAt (type 23)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    i32.const 0
    i32.lt_s
    local.get 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    i32.ge_s
    i32.or
    (if (result (ref null 5))
      (then
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 4
      struct.new 6
      )
      (else
      i32.const 1
      i32.const 0
      local.get 0
      ref.cast (ref 6)
      struct.get 6 2
      local.get 0
      ref.cast (ref 6)
      struct.get 6 1
      local.get 1
      i32.add
      array.get_u 4
      array.new_fixed 4 1
      struct.new 6
      )
    )
  )
  (func $__str_slice (type 22)
    (local $len i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 1
    i32.const 0
    i32.lt_s
    (if
      (then
      local.get 3
      local.get 1
      i32.add
      local.set 1
      )
    )
    local.get 1
    i32.const 0
    i32.lt_s
    (if
      (then
      i32.const 0
      local.set 1
      )
    )
    local.get 2
    i32.const 0
    i32.lt_s
    (if
      (then
      local.get 3
      local.get 2
      i32.add
      local.set 2
      )
    )
    local.get 2
    i32.const 0
    i32.lt_s
    (if
      (then
      i32.const 0
      local.set 2
      )
    )
    local.get 0
    local.get 1
    local.get 2
    call 8
  )
  (func $__str_indexOf (type 24)
    (local $hLen i32)
    (local $nLen i32)
    (local $i i32)
    (local $j i32)
    (local $hData (ref null 4))
    (local $nData (ref null 4))
    (local $hOff i32)
    (local $nOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    local.set 4
    local.get 4
    i32.eqz
    (if
      (then
      local.get 2
      i32.const 0
      local.get 2
      i32.const 0
      i32.gt_s
      select
      local.tee 5
      local.get 3
      local.get 5
      local.get 3
      i32.lt_s
      select
      return
      )
    )
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 9
    local.get 1
    ref.cast (ref 6)
    struct.get 6 1
    local.set 10
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 7
    local.get 1
    ref.cast (ref 6)
    struct.get 6 2
    local.set 8
    local.get 2
    i32.const 0
    local.get 2
    i32.const 0
    i32.gt_s
    select
    local.set 5
    (block
      (loop
        local.get 5
        local.get 3
        local.get 4
        i32.sub
        i32.gt_s
        br_if 1
        i32.const 0
        local.set 6
        (block
          (loop
            local.get 6
            local.get 4
            i32.ge_s
            (if
              (then
              local.get 5
              return
              )
            )
            local.get 7
            local.get 9
            local.get 5
            i32.add
            local.get 6
            i32.add
            array.get_u 4
            local.get 8
            local.get 10
            local.get 6
            i32.add
            array.get_u 4
            i32.ne
            br_if 1
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            br 0
          )
        )
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    i32.const -1
  )
  (func $__str_lastIndexOf (type 24)
    (local $hLen i32)
    (local $nLen i32)
    (local $i i32)
    (local $j i32)
    (local $hData (ref null 4))
    (local $nData (ref null 4))
    (local $hOff i32)
    (local $nOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    local.set 4
    local.get 4
    i32.eqz
    (if
      (then
      local.get 2
      local.get 3
      local.get 2
      local.get 3
      i32.lt_s
      select
      return
      )
    )
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 9
    local.get 1
    ref.cast (ref 6)
    struct.get 6 1
    local.set 10
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 7
    local.get 1
    ref.cast (ref 6)
    struct.get 6 2
    local.set 8
    local.get 2
    local.get 3
    local.get 4
    i32.sub
    local.tee 5
    local.get 2
    local.get 5
    i32.lt_s
    select
    local.set 5
    (block
      (loop
        local.get 5
        i32.const 0
        i32.lt_s
        br_if 1
        i32.const 0
        local.set 6
        (block
          (loop
            local.get 6
            local.get 4
            i32.ge_s
            (if
              (then
              local.get 5
              return
              )
            )
            local.get 7
            local.get 9
            local.get 5
            i32.add
            local.get 6
            i32.add
            array.get_u 4
            local.get 8
            local.get 10
            local.get 6
            i32.add
            array.get_u 4
            i32.ne
            br_if 1
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            br 0
          )
        )
        local.get 5
        i32.const 1
        i32.sub
        local.set 5
        br 0
      )
    )
    i32.const -1
  )
  (func $__str_includes (type 24)
    local.get 0
    local.get 1
    local.get 2
    call 11
    i32.const -1
    i32.ne
  )
  (func $__str_startsWith (type 24)
    (local $sLen i32)
    (local $pLen i32)
    (local $i i32)
    (local $sData (ref null 4))
    (local $pData (ref null 4))
    (local $sOff i32)
    (local $pOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    local.set 4
    local.get 2
    local.get 4
    i32.add
    local.get 3
    i32.gt_s
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 8
    local.get 1
    ref.cast (ref 6)
    struct.get 6 1
    local.set 9
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 6
    local.get 1
    ref.cast (ref 6)
    struct.get 6 2
    local.set 7
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_s
        (if
          (then
          i32.const 1
          return
          )
        )
        local.get 6
        local.get 8
        local.get 2
        i32.add
        local.get 5
        i32.add
        array.get_u 4
        local.get 7
        local.get 9
        local.get 5
        i32.add
        array.get_u 4
        i32.ne
        br_if 1
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    i32.const 0
  )
  (func $__str_endsWith (type 24)
    (local $sxLen i32)
    (local $i i32)
    (local $sData (ref null 4))
    (local $xData (ref null 4))
    (local $startPos i32)
    (local $sLen i32)
    (local $sOff i32)
    (local $xOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 8
    local.get 2
    local.get 8
    local.get 2
    local.get 8
    i32.lt_s
    select
    local.set 2
    local.get 2
    local.get 3
    i32.sub
    local.set 7
    local.get 7
    i32.const 0
    i32.lt_s
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 9
    local.get 1
    ref.cast (ref 6)
    struct.get 6 1
    local.set 10
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 5
    local.get 1
    ref.cast (ref 6)
    struct.get 6 2
    local.set 6
    i32.const 0
    local.set 4
    (block
      (loop
        local.get 4
        local.get 3
        i32.ge_s
        (if
          (then
          i32.const 1
          return
          )
        )
        local.get 5
        local.get 9
        local.get 7
        i32.add
        local.get 4
        i32.add
        array.get_u 4
        local.get 6
        local.get 10
        local.get 4
        i32.add
        array.get_u 4
        i32.ne
        br_if 1
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0
      )
    )
    i32.const 0
  )
  (func $__str_isWhitespace (type 9)
    local.get 0
    i32.const 32
    i32.eq
    local.get 0
    i32.const 9
    i32.ge_u
    local.get 0
    i32.const 13
    i32.le_u
    i32.and
    i32.or
    local.get 0
    i32.const 160
    i32.eq
    i32.or
    local.get 0
    i32.const 65279
    i32.eq
    i32.or
  )
  (func $__str_trimStart (type 25)
    (local $len i32)
    (local $i i32)
    (local $sData (ref null 4))
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 4
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 3
    i32.const 0
    local.set 2
    (block
      (loop
        local.get 2
        local.get 1
        i32.ge_s
        br_if 1
        local.get 3
        local.get 4
        local.get 2
        i32.add
        array.get_u 4
        call 16
        i32.eqz
        br_if 1
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0
      )
    )
    local.get 0
    local.get 2
    local.get 1
    call 8
  )
  (func $__str_trimEnd (type 25)
    (local $end i32)
    (local $sData (ref null 4))
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 3
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 2
    (block
      (loop
        local.get 1
        i32.const 0
        i32.le_s
        br_if 1
        local.get 2
        local.get 3
        local.get 1
        i32.add
        i32.const 1
        i32.sub
        array.get_u 4
        call 16
        i32.eqz
        br_if 1
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        br 0
      )
    )
    local.get 0
    i32.const 0
    local.get 1
    call 8
  )
  (func $__str_trim (type 25)
    local.get 0
    call 17
    call 18
  )
  (func $__str_repeat (type 23)
    (local $sLen i32)
    (local $newLen i32)
    (local $newArr (ref null 4))
    (local $dst i32)
    (local $srcData (ref null 4))
    (local $copyI i32)
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 2
    local.get 1
    i32.const 0
    i32.le_s
    (if (result (ref null 5))
      (then
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 4
      struct.new 6
      )
      (else
      local.get 2
      i32.eqz
      (if (result (ref null 5))
        (then
        i32.const 0
        i32.const 0
        i32.const 0
        array.new_default 4
        struct.new 6
        )
        (else
        local.get 0
        ref.cast (ref 6)
        struct.get 6 1
        local.set 8
        local.get 2
        local.get 1
        i32.mul
        local.tee 3
        array.new_default 4
        local.set 4
        local.get 0
        ref.cast (ref 6)
        struct.get 6 2
        local.set 6
        i32.const 0
        local.set 5
        (block
          (loop
            local.get 5
            local.get 3
            i32.ge_u
            br_if 1
            local.get 4
            local.get 5
            local.get 6
            local.get 8
            local.get 2
            array.copy 4 4
            local.get 5
            local.get 2
            i32.add
            local.set 5
            br 0
          )
        )
        local.get 3
        i32.const 0
        local.get 4
        struct.new 6
        )
      )
      )
    )
  )
  (func $__str_padStart (type 26)
    (local $sLen i32)
    (local $padLen i32)
    (local $fillLen i32)
    (local $repeated (ref null 5))
    (local $prefix (ref null 5))
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 2
    call 3
    ref.cast null (ref null 5)
    local.set 2
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 3
    local.get 1
    i32.ge_s
    (if (result (ref null 5))
      (then
      local.get 0
      )
      (else
      local.get 2
      ref.cast (ref 6)
      struct.get 6 0
      local.set 4
      local.get 4
      i32.eqz
      (if (result (ref null 5))
        (then
        local.get 0
        )
        (else
        local.get 1
        local.get 3
        i32.sub
        local.set 5
        local.get 2
        local.get 5
        local.get 4
        i32.add
        i32.const 1
        i32.sub
        local.get 4
        i32.div_u
        call 20
        i32.const 0
        local.get 5
        call 8
        local.get 0
        call 4
        )
      )
      )
    )
  )
  (func $__str_padEnd (type 26)
    (local $sLen i32)
    (local $padLen i32)
    (local $fillLen i32)
    (local $suffix (ref null 5))
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 2
    call 3
    ref.cast null (ref null 5)
    local.set 2
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    local.get 3
    local.get 1
    i32.ge_s
    (if (result (ref null 5))
      (then
      local.get 0
      )
      (else
      local.get 2
      ref.cast (ref 6)
      struct.get 6 0
      local.set 4
      local.get 4
      i32.eqz
      (if (result (ref null 5))
        (then
        local.get 0
        )
        (else
        local.get 1
        local.get 3
        i32.sub
        local.set 5
        local.get 2
        local.get 5
        local.get 4
        i32.add
        i32.const 1
        i32.sub
        local.get 4
        i32.div_u
        call 20
        i32.const 0
        local.get 5
        call 8
        local.set 6
        local.get 0
        local.get 6
        ref.as_non_null
        call 4
        )
      )
      )
    )
  )
  (func $__str_toLowerCase (type 25)
    (local $len i32)
    (local $srcData (ref null 4))
    (local $newArr (ref null 4))
    (local $i i32)
    (local $ch i32)
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 6
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 2
    local.get 1
    array.new_default 4
    local.set 3
    i32.const 0
    local.set 4
    (block
      (loop
        local.get 4
        local.get 1
        i32.ge_u
        br_if 1
        local.get 2
        local.get 6
        local.get 4
        i32.add
        array.get_u 4
        local.set 5
        local.get 3
        local.get 4
        local.get 5
        i32.const 65
        i32.ge_u
        local.get 5
        i32.const 90
        i32.le_u
        i32.and
        (if (result i32)
          (then
          local.get 5
          i32.const 32
          i32.add
          )
          (else
          local.get 5
          )
        )
        array.set 4
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0
      )
    )
    local.get 1
    i32.const 0
    local.get 3
    struct.new 6
  )
  (func $__str_toUpperCase (type 25)
    (local $len i32)
    (local $srcData (ref null 4))
    (local $newArr (ref null 4))
    (local $i i32)
    (local $ch i32)
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 6
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 2
    local.get 1
    array.new_default 4
    local.set 3
    i32.const 0
    local.set 4
    (block
      (loop
        local.get 4
        local.get 1
        i32.ge_u
        br_if 1
        local.get 2
        local.get 6
        local.get 4
        i32.add
        array.get_u 4
        local.set 5
        local.get 3
        local.get 4
        local.get 5
        i32.const 97
        i32.ge_u
        local.get 5
        i32.const 122
        i32.le_u
        i32.and
        (if (result i32)
          (then
          local.get 5
          i32.const 32
          i32.sub
          )
          (else
          local.get 5
          )
        )
        array.set 4
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0
      )
    )
    local.get 1
    i32.const 0
    local.get 3
    struct.new 6
  )
  (func $__str_getSubstitution (param (ref null 5) (ref null 5) (ref null 5) (ref null 5)) (result (ref null 5))
    (local $result (ref null 5))
    (local $len i32)
    (local $data (ref null 4))
    (local $off i32)
    (local $i i32)
    (local $segStart i32)
    (local $ch i32)
    (local $next i32)
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 2
    call 3
    ref.cast null (ref null 5)
    local.set 2
    local.get 3
    call 3
    ref.cast null (ref null 5)
    local.set 3
    i32.const 0
    i32.const 0
    i32.const 0
    array.new_default 4
    struct.new 6
    ref.cast null (ref null 5)
    local.set 4
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 5
    local.get 0
    ref.cast (ref 6)
    struct.get 6 2
    local.set 6
    local.get 0
    ref.cast (ref 6)
    struct.get 6 1
    local.set 7
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    (block
      (loop
        local.get 8
        local.get 5
        i32.ge_s
        br_if 1
        local.get 6
        local.get 7
        local.get 8
        i32.add
        array.get_u 4
        local.set 10
        local.get 10
        i32.const 36
        i32.eq
        local.get 8
        i32.const 1
        i32.add
        local.get 5
        i32.lt_s
        i32.and
        (if
          (then
          local.get 6
          local.get 7
          local.get 8
          i32.add
          i32.const 1
          i32.add
          array.get_u 4
          local.set 11
          local.get 11
          i32.const 36
          i32.eq
          (if
            (then
            local.get 4
            ref.as_non_null
            local.get 0
            local.get 9
            local.get 8
            call 8
            ref.as_non_null
            call 4
            local.set 4
            local.get 4
            ref.as_non_null
            local.get 0
            local.get 8
            local.get 8
            i32.const 1
            i32.add
            call 8
            ref.as_non_null
            call 4
            local.set 4
            local.get 8
            i32.const 2
            i32.add
            local.set 9
            local.get 9
            local.set 8
            )
            (else
            local.get 11
            i32.const 38
            i32.eq
            (if
              (then
              local.get 4
              ref.as_non_null
              local.get 0
              local.get 9
              local.get 8
              call 8
              ref.as_non_null
              call 4
              local.set 4
              local.get 4
              ref.as_non_null
              local.get 1
              ref.as_non_null
              call 4
              local.set 4
              local.get 8
              i32.const 2
              i32.add
              local.set 9
              local.get 9
              local.set 8
              )
              (else
              local.get 11
              i32.const 96
              i32.eq
              (if
                (then
                local.get 4
                ref.as_non_null
                local.get 0
                local.get 9
                local.get 8
                call 8
                ref.as_non_null
                call 4
                local.set 4
                local.get 4
                ref.as_non_null
                local.get 2
                ref.as_non_null
                call 4
                local.set 4
                local.get 8
                i32.const 2
                i32.add
                local.set 9
                local.get 9
                local.set 8
                )
                (else
                local.get 11
                i32.const 39
                i32.eq
                (if
                  (then
                  local.get 4
                  ref.as_non_null
                  local.get 0
                  local.get 9
                  local.get 8
                  call 8
                  ref.as_non_null
                  call 4
                  local.set 4
                  local.get 4
                  ref.as_non_null
                  local.get 3
                  ref.as_non_null
                  call 4
                  local.set 4
                  local.get 8
                  i32.const 2
                  i32.add
                  local.set 9
                  local.get 9
                  local.set 8
                  )
                  (else
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  )
                )
                )
              )
              )
            )
            )
          )
          )
          (else
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          )
        )
        br 0
      )
    )
    local.get 4
    ref.as_non_null
    local.get 0
    local.get 9
    local.get 5
    call 8
    ref.as_non_null
    call 4
  )
  (func $__str_replace (type 28)
    (local $idx i32)
    (local $searchLen i32)
    (local $prefix (ref null 5))
    (local $suffix (ref null 5))
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 2
    call 3
    ref.cast null (ref null 5)
    local.set 2
    local.get 0
    local.get 1
    i32.const 0
    call 11
    local.set 3
    local.get 3
    i32.const -1
    i32.eq
    (if (result (ref null 5))
      (then
      local.get 0
      )
      (else
      local.get 1
      ref.cast (ref 6)
      struct.get 6 0
      local.set 4
      local.get 0
      i32.const 0
      local.get 3
      call 8
      local.set 5
      local.get 0
      local.get 3
      local.get 4
      i32.add
      i32.const 2147483647
      call 8
      local.set 6
      local.get 5
      ref.as_non_null
      local.get 2
      local.get 1
      local.get 5
      ref.as_non_null
      local.get 6
      ref.as_non_null
      call 25
      call 4
      local.get 6
      ref.as_non_null
      call 4
      )
    )
  )
  (func $__str_replaceAll (type 28)
    (local $result (ref null 5))
    (local $pos i32)
    (local $idx i32)
    (local $searchLen i32)
    (local $prefix (ref null 5))
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 2
    call 3
    ref.cast null (ref null 5)
    local.set 2
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    local.set 6
    local.get 6
    i32.eqz
    (if (result (ref null 5))
      (then
      local.get 0
      ref.cast (ref 6)
      struct.get 6 0
      local.set 5
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 4
      struct.new 6
      ref.cast null (ref null 5)
      local.get 2
      call 4
      local.set 3
      i32.const 0
      local.set 4
      (block
        (loop
          local.get 4
          local.get 5
          i32.ge_s
          br_if 1
          local.get 3
          ref.as_non_null
          local.get 0
          local.get 4
          local.get 4
          i32.const 1
          i32.add
          call 8
          ref.as_non_null
          call 4
          local.get 2
          call 4
          local.set 3
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 0
        )
      )
      local.get 3
      ref.as_non_null
      )
      (else
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 4
      struct.new 6
      ref.cast null (ref null 5)
      local.set 3
      i32.const 0
      local.set 4
      (block
        (loop
          local.get 0
          local.get 1
          local.get 4
          call 11
          local.set 5
          local.get 5
          i32.const -1
          i32.eq
          br_if 1
          local.get 0
          local.get 4
          local.get 5
          call 8
          local.set 7
          local.get 3
          ref.as_non_null
          local.get 7
          ref.as_non_null
          call 4
          local.get 2
          local.get 1
          local.get 0
          i32.const 0
          local.get 5
          call 8
          ref.as_non_null
          local.get 0
          local.get 5
          local.get 6
          i32.add
          i32.const 2147483647
          call 8
          ref.as_non_null
          call 25
          call 4
          local.set 3
          local.get 5
          local.get 6
          i32.add
          local.set 4
          br 0
        )
      )
      local.get 3
      ref.as_non_null
      local.get 0
      local.get 4
      i32.const 2147483647
      call 8
      ref.as_non_null
      call 4
      )
    )
  )
  (func $__str_split (param (ref null 5) (ref null 5)) (result (ref null 29))
    (local $sLen i32)
    (local $sepLen i32)
    (local $pos i32)
    (local $idx i32)
    (local $part (ref null 5))
    (local $resultArr (ref null 16))
    (local $resultLen i32)
    (local $resultCap i32)
    (local $newArr (ref null 16))
    local.get 0
    call 3
    ref.cast null (ref null 5)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 5)
    local.set 1
    local.get 0
    ref.cast (ref 6)
    struct.get 6 0
    local.set 2
    local.get 1
    ref.cast (ref 6)
    struct.get 6 0
    local.set 3
    i32.const 8
    array.new_default 16
    local.set 7
    i32.const 0
    local.set 8
    i32.const 8
    local.set 9
    i32.const 0
    local.set 4
    local.get 3
    i32.eqz
    (if
      (then
      local.get 2
      array.new_default 16
      local.set 7
      local.get 2
      local.set 9
      i32.const 0
      local.set 4
      (block
        (loop
          local.get 4
          local.get 2
          i32.ge_s
          br_if 1
          local.get 0
          local.get 4
          local.get 4
          i32.const 1
          i32.add
          call 8
          local.set 6
          local.get 7
          local.get 4
          local.get 6
          array.set 16
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 0
        )
      )
      local.get 2
      local.get 7
      ref.as_non_null
      struct.new 29
      return
      )
    )
    (block
      (loop
        local.get 0
        local.get 1
        local.get 4
        call 11
        local.set 5
        local.get 5
        i32.const -1
        i32.eq
        (if
          (then
          local.get 0
          local.get 4
          local.get 2
          call 8
          local.set 6
          local.get 8
          local.get 9
          i32.ge_s
          (if
            (then
            local.get 9
            i32.const 2
            i32.mul
            local.set 9
            local.get 9
            array.new_default 16
            local.set 10
            local.get 10
            i32.const 0
            local.get 7
            i32.const 0
            local.get 8
            array.copy 16 16
            local.get 10
            local.set 7
            )
          )
          local.get 7
          local.get 8
          local.get 6
          array.set 16
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          br 2
          )
        )
        local.get 0
        local.get 4
        local.get 5
        call 8
        local.set 6
        local.get 8
        local.get 9
        i32.ge_s
        (if
          (then
          local.get 9
          i32.const 2
          i32.mul
          local.set 9
          local.get 9
          array.new_default 16
          local.set 10
          local.get 10
          i32.const 0
          local.get 7
          i32.const 0
          local.get 8
          array.copy 16 16
          local.get 10
          local.set 7
          )
        )
        local.get 7
        local.get 8
        local.get 6
        array.set 16
        local.get 8
        i32.const 1
        i32.add
        local.set 8
        local.get 5
        local.get 3
        i32.add
        local.set 4
        br 0
      )
    )
    local.get 8
    local.get 7
    ref.as_non_null
    struct.new 29
  )
  (func $__str_fromCodePoint (type 31)
    local.get 0
    i32.const 65535
    i32.gt_u
    (if (result (ref null 5))
      (then
      i32.const 2
      i32.const 0
      local.get 0
      i32.const 65536
      i32.sub
      i32.const 10
      i32.shr_u
      i32.const 55296
      i32.add
      local.get 0
      i32.const 65536
      i32.sub
      i32.const 1023
      i32.and
      i32.const 56320
      i32.add
      array.new_fixed 4 2
      struct.new 6
      )
      (else
      i32.const 1
      i32.const 0
      local.get 0
      array.new_fixed 4 1
      struct.new 6
      )
    )
  )
  (func $__str_fromCharCode (type 31)
    i32.const 1
    i32.const 0
    local.get 0
    i32.const 65535
    i32.and
    array.new_fixed 4 1
    struct.new 6
  )
  (func $__wasi_write_string (type 32)
    i32.const 0
    local.get 0
    i32.store offset=0 align=4
    i32.const 4
    local.get 1
    i32.store offset=0 align=4
    i32.const 1
    i32.const 0
    i32.const 1
    i32.const 8
    call 0
    drop
  )
  (func $__wasi_write_string_stderr (type 32)
    i32.const 0
    local.get 0
    i32.store offset=0 align=4
    i32.const 4
    local.get 1
    i32.store offset=0 align=4
    i32.const 2
    i32.const 0
    i32.const 1
    i32.const 8
    call 0
    drop
  )
  (func $__lin_u8_alloc (type 9)
    (local $ret i32)
    (local $next i32)
    global.get 1
    local.set 1
    local.get 1
    local.get 0
    i32.add
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.set 2
    local.get 2
    memory.size
    i32.const 65536
    i32.mul
    i32.gt_u
    (if
      (then
      local.get 2
      memory.size
      i32.const 65536
      i32.mul
      i32.sub
      i32.const 65535
      i32.add
      i32.const 65536
      i32.div_u
      memory.grow
      drop
      )
    )
    local.get 2
    global.set 1
    local.get 1
  )
  (func $readExact (param (ref null 34) f64) (result i32)
    (local $got f64)
    (local $r externref)
    (local $__stdin_vec_2 (ref null 34))
    (local $__stdin_arr_3 (ref null 33))
    (local $__stdin_off_4 i32)
    (local $__stdin_cap_5 i32)
    (local $__stdin_needPages_6 i32)
    (local $__stdin_nread_7 i32)
    (local $__stdin_j_8 i32)
    f64.const 0
    local.set 2
    (block
      (loop
        local.get 2
        local.get 1
        f64.lt
        i32.eqz
        br_if 1
        local.get 0
        ref.as_non_null
        local.set 4
        local.get 4
        struct.get 34 1
        local.set 5
        local.get 2
        i32.trunc_sat_f64_s
        local.set 6
        local.get 4
        struct.get 34 0
        local.get 6
        i32.sub
        local.set 7
        i32.const 65536
        local.get 7
        i32.add
        i32.const 65535
        i32.add
        i32.const 16
        i32.shr_u
        local.set 8
        local.get 8
        memory.size
        i32.gt_u
        (if
          (then
          local.get 8
          memory.size
          i32.sub
          memory.grow
          drop
          )
        )
        i32.const 0
        i32.const 65536
        i32.store offset=0 align=4
        i32.const 4
        local.get 7
        i32.store offset=0 align=4
        i32.const 0
        i32.const 0
        i32.const 1
        i32.const 8
        call 1
        drop
        i32.const 8
        i32.load offset=0 align=4
        local.set 9
        i32.const 0
        local.set 10
        (block
          (loop
            local.get 10
            local.get 9
            i32.ge_s
            br_if 1
            local.get 5
            local.get 6
            local.get 10
            i32.add
            i32.const 65536
            local.get 10
            i32.add
            i32.load8_u offset=0 align=1
            array.set 33
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            br 0
          )
        )
        local.get 9
        f64.convert_i32_s
        call 41
        local.set 3
        local.get 3
        call 42
        f64.const 0
        f64.le
        (if
          (then
          i32.const 0
          return
          )
        )
        local.get 2
        local.get 3
        call 42
        f64.add
        local.set 2
        br 0
      )
    )
    i32.const 1
    return
  )
  (func $readAt (param (ref null 34) f64 f64) (result i32)
    (local $got f64)
    (local $r externref)
    (local $__stdin_vec_2 (ref null 34))
    (local $__stdin_arr_3 (ref null 33))
    (local $__stdin_off_4 i32)
    (local $__stdin_cap_5 i32)
    (local $__stdin_needPages_6 i32)
    (local $__stdin_nread_7 i32)
    (local $__stdin_j_8 i32)
    f64.const 0
    local.set 3
    (block
      (loop
        local.get 3
        local.get 2
        f64.lt
        i32.eqz
        br_if 1
        local.get 0
        ref.as_non_null
        local.set 5
        local.get 5
        struct.get 34 1
        local.set 6
        local.get 1
        local.get 3
        f64.add
        i32.trunc_sat_f64_s
        local.set 7
        local.get 5
        struct.get 34 0
        local.get 7
        i32.sub
        local.set 8
        i32.const 65536
        local.get 8
        i32.add
        i32.const 65535
        i32.add
        i32.const 16
        i32.shr_u
        local.set 9
        local.get 9
        memory.size
        i32.gt_u
        (if
          (then
          local.get 9
          memory.size
          i32.sub
          memory.grow
          drop
          )
        )
        i32.const 0
        i32.const 65536
        i32.store offset=0 align=4
        i32.const 4
        local.get 8
        i32.store offset=0 align=4
        i32.const 0
        i32.const 0
        i32.const 1
        i32.const 8
        call 1
        drop
        i32.const 8
        i32.load offset=0 align=4
        local.set 10
        i32.const 0
        local.set 11
        (block
          (loop
            local.get 11
            local.get 10
            i32.ge_s
            br_if 1
            local.get 6
            local.get 7
            local.get 11
            i32.add
            i32.const 65536
            local.get 11
            i32.add
            i32.load8_u offset=0 align=1
            array.set 33
            local.get 11
            i32.const 1
            i32.add
            local.set 11
            br 0
          )
        )
        local.get 10
        f64.convert_i32_s
        call 41
        local.set 4
        local.get 4
        call 42
        f64.const 0
        f64.le
        (if
          (then
          i32.const 0
          return
          )
        )
        local.get 3
        local.get 4
        call 42
        f64.add
        local.set 3
        br 0
      )
    )
    i32.const 1
    return
  )
  (func $decodeLength (param (ref null 34)) (result externref)
    (local $__tmp_0 (ref null 34))
    (local $__bounds_idx_1 i32)
    (local $__bounds_arr_2 (ref null 33))
    (local $__bounds_idx_3 i32)
    (local $__bounds_arr_4 (ref null 33))
    (local $__bounds_idx_5 i32)
    (local $__bounds_arr_6 (ref null 33))
    (local $__bounds_idx_7 i32)
    (local $__bounds_arr_8 (ref null 33))
    local.get 0
    local.tee 1
    ref.is_null
    (if
      (then
      i32.const 63
      i32.const 0
      i32.const 84
      i32.const 121
      i32.const 112
      i32.const 101
      i32.const 69
      i32.const 114
      i32.const 114
      i32.const 111
      i32.const 114
      i32.const 58
      i32.const 32
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 97
      i32.const 99
      i32.const 99
      i32.const 101
      i32.const 115
      i32.const 115
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 121
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 110
      i32.const 117
      i32.const 108
      i32.const 108
      i32.const 32
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 50
      i32.const 56
      i32.const 58
      i32.const 49
      i32.const 48
      array.new_fixed 4 63
      struct.new 6
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 34 1
    i32.const 0
    local.set 2
    local.set 3
    local.get 2
    local.get 3
    array.len
    i32.lt_u
    (if (result i32)
      (then
      local.get 3
      local.get 2
      array.get_u 33
      )
      (else
      i32.const 0
      )
    )
    f64.convert_i32_s
    local.get 0
    local.tee 1
    ref.is_null
    (if
      (then
      i32.const 63
      i32.const 0
      i32.const 84
      i32.const 121
      i32.const 112
      i32.const 101
      i32.const 69
      i32.const 114
      i32.const 114
      i32.const 111
      i32.const 114
      i32.const 58
      i32.const 32
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 97
      i32.const 99
      i32.const 99
      i32.const 101
      i32.const 115
      i32.const 115
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 121
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 110
      i32.const 117
      i32.const 108
      i32.const 108
      i32.const 32
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 50
      i32.const 56
      i32.const 58
      i32.const 50
      i32.const 50
      array.new_fixed 4 63
      struct.new 6
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 34 1
    i32.const 1
    local.set 4
    local.set 5
    local.get 4
    local.get 5
    array.len
    i32.lt_u
    (if (result i32)
      (then
      local.get 5
      local.get 4
      array.get_u 33
      )
      (else
      i32.const 0
      )
    )
    f64.convert_i32_s
    f64.const 256
    f64.mul
    f64.add
    local.get 0
    local.tee 1
    ref.is_null
    (if
      (then
      i32.const 63
      i32.const 0
      i32.const 84
      i32.const 121
      i32.const 112
      i32.const 101
      i32.const 69
      i32.const 114
      i32.const 114
      i32.const 111
      i32.const 114
      i32.const 58
      i32.const 32
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 97
      i32.const 99
      i32.const 99
      i32.const 101
      i32.const 115
      i32.const 115
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 121
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 110
      i32.const 117
      i32.const 108
      i32.const 108
      i32.const 32
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 50
      i32.const 56
      i32.const 58
      i32.const 52
      i32.const 48
      array.new_fixed 4 63
      struct.new 6
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 34 1
    i32.const 2
    local.set 6
    local.set 7
    local.get 6
    local.get 7
    array.len
    i32.lt_u
    (if (result i32)
      (then
      local.get 7
      local.get 6
      array.get_u 33
      )
      (else
      i32.const 0
      )
    )
    f64.convert_i32_s
    f64.const 65536
    f64.mul
    f64.add
    local.get 0
    local.tee 1
    ref.is_null
    (if
      (then
      i32.const 63
      i32.const 0
      i32.const 84
      i32.const 121
      i32.const 112
      i32.const 101
      i32.const 69
      i32.const 114
      i32.const 114
      i32.const 111
      i32.const 114
      i32.const 58
      i32.const 32
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 97
      i32.const 99
      i32.const 99
      i32.const 101
      i32.const 115
      i32.const 115
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 121
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 110
      i32.const 117
      i32.const 108
      i32.const 108
      i32.const 32
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 50
      i32.const 56
      i32.const 58
      i32.const 54
      i32.const 48
      array.new_fixed 4 63
      struct.new 6
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 34 1
    i32.const 3
    local.set 8
    local.set 9
    local.get 8
    local.get 9
    array.len
    i32.lt_u
    (if (result i32)
      (then
      local.get 9
      local.get 8
      array.get_u 33
      )
      (else
      i32.const 0
      )
    )
    f64.convert_i32_s
    f64.const 16777216
    f64.mul
    f64.add
    return_call 41
  )
  (func $writeLength (type 13)
    (local $__tmp_0 f64)
    (local $__tmp_1 f64)
    (local $__arr_data_2 (ref null 2))
    (local $__ta_src_3 (ref null 3))
    (local $__ta_len_4 i32)
    (local $__ta_dst_5 (ref null 33))
    (local $__ta_src_data_6 (ref null 2))
    (local $__ta_copy_i_7 i32)
    local.get 0
    f64.const 255
    local.set 1
    f64.trunc
    local.tee 2
    local.get 2
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 1
    f64.trunc
    local.tee 1
    local.get 1
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    local.get 0
    f64.const 8
    local.set 1
    f64.trunc
    local.tee 2
    local.get 2
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 1
    f64.trunc
    local.tee 1
    local.get 1
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.shr_s
    f64.convert_i32_s
    f64.const 255
    local.set 1
    f64.trunc
    local.tee 2
    local.get 2
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 1
    f64.trunc
    local.tee 1
    local.get 1
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    local.get 0
    f64.const 16
    local.set 1
    f64.trunc
    local.tee 2
    local.get 2
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 1
    f64.trunc
    local.tee 1
    local.get 1
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.shr_s
    f64.convert_i32_s
    f64.const 255
    local.set 1
    f64.trunc
    local.tee 2
    local.get 2
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 1
    f64.trunc
    local.tee 1
    local.get 1
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    local.get 0
    f64.const 24
    local.set 1
    f64.trunc
    local.tee 2
    local.get 2
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 1
    f64.trunc
    local.tee 1
    local.get 1
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.shr_s
    f64.convert_i32_s
    f64.const 255
    local.set 1
    f64.trunc
    local.tee 2
    local.get 2
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 1
    f64.trunc
    local.tee 1
    local.get 1
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    array.new_fixed 2 4
    local.set 3
    i32.const 4
    local.get 3
    struct.new 3
    local.set 4
    local.get 4
    struct.get 3 0
    local.tee 5
    local.get 5
    array.new_default 33
    local.set 6
    local.get 4
    struct.get 3 1
    local.set 7
    i32.const 0
    local.set 8
    (block
      (loop
        local.get 8
        local.get 5
        i32.ge_u
        br_if 1
        local.get 6
        local.get 8
        local.get 7
        local.get 8
        array.get 2
        i32.trunc_sat_f64_s
        array.set 33
        local.get 8
        i32.const 1
        i32.add
        local.set 8
        br 0
      )
    )
    local.get 5
    local.get 6
    struct.new 34
    ref.as_non_null
    call 53
    i32.const 1
    drop
    drop
  )
  (func $logFrameBodyRead (type 13)
    i32.const 16
    i32.const 0
    i32.const 91
    i32.const 104
    i32.const 111
    i32.const 115
    i32.const 116
    i32.const 93
    i32.const 32
    i32.const 114
    i32.const 101
    i32.const 99
    i32.const 101
    i32.const 105
    i32.const 118
    i32.const 101
    i32.const 100
    i32.const 32
    array.new_fixed 4 16
    struct.new 6
    f64.const 4
    local.get 0
    f64.add
    drop
    i32.const 0
    i32.const 0
    array.new_fixed 4 0
    struct.new 6
    ref.cast null (ref null 5)
    call 4
    i32.const 29
    i32.const 0
    i32.const 32
    i32.const 99
    i32.const 104
    i32.const 97
    i32.const 114
    i32.const 115
    i32.const 44
    i32.const 32
    i32.const 100
    i32.const 101
    i32.const 99
    i32.const 108
    i32.const 97
    i32.const 114
    i32.const 101
    i32.const 100
    i32.const 32
    i32.const 98
    i32.const 111
    i32.const 100
    i32.const 121
    i32.const 32
    i32.const 108
    i32.const 101
    i32.const 110
    i32.const 103
    i32.const 116
    i32.const 104
    i32.const 32
    array.new_fixed 4 29
    struct.new 6
    ref.cast null (ref null 5)
    call 4
    i32.const 0
    i32.const 0
    array.new_fixed 4 0
    struct.new 6
    ref.cast null (ref null 5)
    call 4
    i32.const 1
    i32.const 0
    i32.const 10
    array.new_fixed 4 1
    struct.new 6
    ref.cast null (ref null 5)
    call 4
    call 54
    i32.const 1
    drop
  )
  (func $emitRun (param (ref null 34) f64 f64)
    (local $k f64)
    (local $__linu8_ptr_1 i32)
    (local $__linu8_len_2 i32)
    (local $__linu8_addr_3 i32)
    (local $__linu8_val_4 f64)
    (local $__linu8_addr_5 i32)
    (local $__linu8_val_6 f64)
    (local $__tmp_7 (ref null 34))
    (local $__bounds_idx_8 i32)
    (local $__bounds_arr_9 (ref null 33))
    (local $__linu8_addr_10 i32)
    (local $__linu8_val_11 f64)
    local.get 2
    f64.const 2
    f64.add
    i32.trunc_sat_f64_s
    local.set 5
    local.get 5
    call 33
    local.set 4
    local.get 4
    f64.const 0
    i32.trunc_sat_f64_s
    i32.add
    local.set 6
    global.get 5
    local.set 7
    local.get 6
    local.get 7
    i32.trunc_sat_f64_s
    i32.store8 offset=0 align=1
    f64.const 0
    local.set 3
    (block
      (loop
        local.get 3
        local.get 2
        f64.lt
        i32.eqz
        br_if 1
        local.get 4
        local.get 3
        f64.const 1
        f64.add
        i32.trunc_sat_f64_s
        i32.add
        local.set 8
        local.get 0
        local.tee 10
        ref.is_null
        (if
          (then
          i32.const 63
          i32.const 0
          i32.const 84
          i32.const 121
          i32.const 112
          i32.const 101
          i32.const 69
          i32.const 114
          i32.const 114
          i32.const 111
          i32.const 114
          i32.const 58
          i32.const 32
          i32.const 67
          i32.const 97
          i32.const 110
          i32.const 110
          i32.const 111
          i32.const 116
          i32.const 32
          i32.const 97
          i32.const 99
          i32.const 99
          i32.const 101
          i32.const 115
          i32.const 115
          i32.const 32
          i32.const 112
          i32.const 114
          i32.const 111
          i32.const 112
          i32.const 101
          i32.const 114
          i32.const 116
          i32.const 121
          i32.const 32
          i32.const 111
          i32.const 110
          i32.const 32
          i32.const 110
          i32.const 117
          i32.const 108
          i32.const 108
          i32.const 32
          i32.const 111
          i32.const 114
          i32.const 32
          i32.const 117
          i32.const 110
          i32.const 100
          i32.const 101
          i32.const 102
          i32.const 105
          i32.const 110
          i32.const 101
          i32.const 100
          i32.const 32
          i32.const 97
          i32.const 116
          i32.const 32
          i32.const 52
          i32.const 50
          i32.const 58
          i32.const 50
          i32.const 48
          array.new_fixed 4 63
          struct.new 6
          extern.convert_any
          throw 0
          )
        )
        local.get 10
        struct.get 34 1
        local.get 1
        local.get 3
        f64.add
        i32.trunc_sat_f64_s
        local.set 11
        local.set 12
        local.get 11
        local.get 12
        array.len
        i32.lt_u
        (if (result i32)
          (then
          local.get 12
          local.get 11
          array.get_u 33
          )
          (else
          i32.const 0
          )
        )
        f64.convert_i32_s
        local.set 9
        local.get 8
        local.get 9
        i32.trunc_sat_f64_s
        i32.store8 offset=0 align=1
        local.get 3
        f64.const 1
        f64.add
        local.set 3
        br 0
      )
    )
    local.get 4
    local.get 2
    f64.const 1
    f64.add
    i32.trunc_sat_f64_s
    i32.add
    local.set 13
    global.get 6
    local.set 14
    local.get 13
    local.get 14
    i32.trunc_sat_f64_s
    i32.store8 offset=0 align=1
    local.get 2
    f64.const 2
    f64.add
    call 37
    i32.const 0
    local.get 4
    i32.store offset=0 align=4
    i32.const 4
    local.get 5
    i32.store offset=0 align=4
    i32.const 1
    i32.const 0
    i32.const 1
    i32.const 8
    call 0
    drop
    i32.const 1
    drop
  )
  (func $main (type 12)
    (local $header (ref null 34))
    (local $one (ref null 34))
    (local $buf (ref null 34))
    (local $__ta_size_3 i32)
    (local $__ta_size_4 i32)
    (local $__ta_size_5 i32)
    (local $declaredLen externref)
    (local $__tmp_7 externref)
    (local $__tmp_8 externref)
    (local $__tmp_9 anyref)
    (local $__tmp_10 anyref)
    (local $small (ref null 34))
    (local $__ta_size_12 i32)
    (local $interiorRemaining f64)
    (local $fill f64)
    (local $truncated i32)
    (local $need f64)
    (local $last f64)
    (local $__tmp_18 i32)
    (local $__bounds_idx_19 i32)
    (local $__bounds_arr_20 (ref null 33))
    (local $__tmp_21 f64)
    (local $runLen externref)
    (local $consumed externref)
    (local $rem f64)
    (local $m f64)
    (local $__vec_26 (ref null 34))
    (local $__idx_27 i32)
    (local $__bounds_idx_28 i32)
    (local $__bounds_arr_29 (ref null 33))
    (local $__val_30 i8)
    (local $__vec_data_31 (ref null 33))
    (local $__vec_ncap_32 i32)
    (local $__vec_ndata_33 (ref null 33))
    (local $__vec_ocap_34 i32)
    (local $tmp (ref null 34))
    (local $__ta_size_36 i32)
    (local $t f64)
    (local $__vec_38 (ref null 34))
    (local $__idx_39 i32)
    (local $__bounds_idx_40 i32)
    (local $__bounds_arr_41 (ref null 33))
    (local $__val_42 i8)
    (local $__vec_data_43 (ref null 33))
    (local $__vec_ncap_44 i32)
    (local $__vec_ndata_45 (ref null 33))
    (local $__vec_ocap_46 i32)
    (local $startPos f64)
    (local $stop f64)
    (local $c f64)
    (local $__bounds_idx_50 i32)
    (local $__bounds_arr_51 (ref null 33))
    (local $__bounds_idx_52 i32)
    (local $__bounds_arr_53 (ref null 33))
    f64.const 1048576
    global.set 2
    global.get 2
    f64.const 2
    f64.sub
    global.set 3
    f64.const 44
    global.set 4
    f64.const 91
    global.set 5
    f64.const 93
    global.set 6
    f64.const 4
    i32.trunc_sat_f64_s
    local.tee 3
    local.get 3
    array.new_default 33
    struct.new 34
    local.set 0
    f64.const 1
    i32.trunc_sat_f64_s
    local.tee 4
    local.get 4
    array.new_default 33
    struct.new 34
    local.set 1
    global.get 2
    i32.trunc_sat_f64_s
    local.tee 5
    local.get 5
    array.new_default 33
    struct.new 34
    local.set 2
    (block
      (loop
        i32.const 1
        i32.eqz
        br_if 1
        local.get 0
        f64.const 4
        call 34
        i32.eqz
        (if
          (then
          br 2
          )
        )
        local.get 0
        call 36
        local.set 6
        local.get 6
        f64.const 0
        call 41
        local.set 7
        local.set 8
        local.get 8
        call 46
        local.get 7
        call 46
        i32.and
        (if (result i32)
          (then
          local.get 8
          call 42
          local.get 7
          call 42
          f64.eq
          )
          (else
          local.get 8
          call 47
          local.get 7
          call 47
          i32.and
          (if (result i32)
            (then
            local.get 8
            call 44
            local.get 7
            call 44
            i32.eq
            )
            (else
            local.get 8
            any.convert_extern
            local.get 7
            any.convert_extern
            local.set 10
            local.tee 9
            ref.test (ref -19)
            local.get 10
            ref.test (ref -19)
            i32.and
            (if (result i32)
              (then
              local.get 9
              ref.cast (ref -19)
              local.get 10
              ref.cast (ref -19)
              ref.eq
              )
              (else
              i32.const 0
              )
            )
            )
          )
          )
        )
        (if
          (then
          br 2
          )
        )
        local.get 6
        call 42
        call 38
        local.get 6
        call 42
        global.get 2
        f64.le
        (if
          (then
          local.get 6
          call 42
          i32.trunc_sat_f64_s
          local.tee 12
          local.get 12
          array.new_default 33
          struct.new 34
          local.set 11
          local.get 11
          local.get 6
          call 42
          call 34
          i32.eqz
          (if
            (then
            br 3
            )
          )
          local.get 6
          call 42
          call 37
          local.get 11
          ref.as_non_null
          call 53
          i32.const 1
          drop
          br 1
          )
        )
        local.get 1
        f64.const 1
        call 34
        i32.eqz
        (if
          (then
          br 2
          )
        )
        local.get 6
        call 42
        f64.const 2
        f64.sub
        local.set 13
        f64.const 0
        local.set 14
        i32.const 0
        local.set 15
        (block
          (loop
            local.get 13
            f64.const 0
            f64.gt
            i32.eqz
            br_if 1
            global.get 2
            local.get 14
            f64.sub
            local.set 16
            local.get 13
            local.get 16
            f64.ge
            (if
              (then
              local.get 2
              local.get 14
              local.get 16
              call 35
              i32.eqz
              (if
                (then
                i32.const 1
                local.set 15
                br 3
                )
              )
              global.get 2
              local.set 14
              local.get 13
              local.get 16
              f64.sub
              local.set 13
              global.get 3
              local.set 17
              (block
                (loop
                  local.get 17
                  f64.const 0
                  f64.gt
                  local.tee 18
                  (if (result i32)
                    (then
                    local.get 2
                    struct.get 34 1
                    local.get 17
                    f64.const 1
                    f64.sub
                    i32.trunc_sat_f64_s
                    local.set 19
                    local.set 20
                    local.get 19
                    local.get 20
                    array.len
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 20
                      local.get 19
                      array.get_u 33
                      )
                      (else
                      i32.const 0
                      )
                    )
                    global.get 4
                    local.set 21
                    f64.convert_i32_s
                    local.get 21
                    f64.ne
                    )
                    (else
                    local.get 18
                    )
                  )
                  i32.eqz
                  br_if 1
                  local.get 17
                  f64.const 1
                  f64.sub
                  local.set 17
                  br 0
                )
              )
              ref.null extern
              local.set 22
              ref.null extern
              local.set 23
              local.get 17
              f64.const 0
              f64.eq
              (if
                (then
                global.get 3
                call 41
                local.set 22
                global.get 3
                call 41
                local.set 23
                )
                (else
                local.get 17
                f64.const 1
                f64.sub
                call 41
                local.set 22
                local.get 17
                call 41
                local.set 23
                )
              )
              local.get 2
              f64.const 0
              local.get 22
              call 42
              call 39
              local.get 14
              local.get 23
              call 42
              f64.sub
              local.set 24
              f64.const 0
              local.set 25
              (block
                (loop
                  local.get 25
                  local.get 24
                  f64.lt
                  i32.eqz
                  br_if 1
                  local.get 2
                  local.set 26
                  local.get 25
                  i32.trunc_sat_f64_s
                  local.set 27
                  local.get 2
                  struct.get 34 1
                  local.get 23
                  call 42
                  local.get 25
                  f64.add
                  i32.trunc_sat_f64_s
                  local.set 28
                  local.set 29
                  local.get 28
                  local.get 29
                  array.len
                  i32.lt_u
                  (if (result i32)
                    (then
                    local.get 29
                    local.get 28
                    array.get_u 33
                    )
                    (else
                    i32.const 0
                    )
                  )
                  local.set 30
                  local.get 26
                  struct.get 34 1
                  local.set 31
                  local.get 27
                  local.get 31
                  array.len
                  i32.ge_s
                  (if
                    (then
                    local.get 31
                    array.len
                    local.set 34
                    local.get 27
                    i32.const 1
                    i32.add
                    local.set 32
                    local.get 34
                    i32.const 1
                    i32.shl
                    local.get 32
                    i32.gt_s
                    (if
                      (then
                      local.get 34
                      i32.const 1
                      i32.shl
                      local.set 32
                      )
                    )
                    i32.const 4
                    local.get 32
                    i32.gt_s
                    (if
                      (then
                      i32.const 4
                      local.set 32
                      )
                    )
                    local.get 32
                    array.new_default 33
                    local.set 33
                    local.get 33
                    i32.const 0
                    local.get 31
                    i32.const 0
                    local.get 34
                    array.copy 33 33
                    local.get 26
                    local.get 33
                    ref.as_non_null
                    struct.set 34 1
                    local.get 33
                    local.set 31
                    )
                  )
                  local.get 31
                  local.get 27
                  local.get 30
                  array.set 33
                  local.get 27
                  i32.const 1
                  i32.add
                  local.get 26
                  struct.get 34 0
                  i32.gt_s
                  (if
                    (then
                    local.get 26
                    local.get 27
                    i32.const 1
                    i32.add
                    struct.set 34 0
                    )
                  )
                  local.get 25
                  f64.const 1
                  f64.add
                  local.set 25
                  br 0
                )
              )
              local.get 24
              local.set 14
              )
              (else
              local.get 13
              i32.trunc_sat_f64_s
              local.tee 36
              local.get 36
              array.new_default 33
              struct.new 34
              local.set 35
              local.get 35
              local.get 13
              call 34
              i32.eqz
              (if
                (then
                i32.const 1
                local.set 15
                br 3
                )
              )
              f64.const 0
              local.set 37
              (block
                (loop
                  local.get 37
                  local.get 13
                  f64.lt
                  i32.eqz
                  br_if 1
                  local.get 2
                  local.set 38
                  local.get 14
                  local.get 37
                  f64.add
                  i32.trunc_sat_f64_s
                  local.set 39
                  local.get 35
                  struct.get 34 1
                  local.get 37
                  i32.trunc_sat_f64_s
                  local.set 40
                  local.set 41
                  local.get 40
                  local.get 41
                  array.len
                  i32.lt_u
                  (if (result i32)
                    (then
                    local.get 41
                    local.get 40
                    array.get_u 33
                    )
                    (else
                    i32.const 0
                    )
                  )
                  local.set 42
                  local.get 38
                  struct.get 34 1
                  local.set 43
                  local.get 39
                  local.get 43
                  array.len
                  i32.ge_s
                  (if
                    (then
                    local.get 43
                    array.len
                    local.set 46
                    local.get 39
                    i32.const 1
                    i32.add
                    local.set 44
                    local.get 46
                    i32.const 1
                    i32.shl
                    local.get 44
                    i32.gt_s
                    (if
                      (then
                      local.get 46
                      i32.const 1
                      i32.shl
                      local.set 44
                      )
                    )
                    i32.const 4
                    local.get 44
                    i32.gt_s
                    (if
                      (then
                      i32.const 4
                      local.set 44
                      )
                    )
                    local.get 44
                    array.new_default 33
                    local.set 45
                    local.get 45
                    i32.const 0
                    local.get 43
                    i32.const 0
                    local.get 46
                    array.copy 33 33
                    local.get 38
                    local.get 45
                    ref.as_non_null
                    struct.set 34 1
                    local.get 45
                    local.set 43
                    )
                  )
                  local.get 43
                  local.get 39
                  local.get 42
                  array.set 33
                  local.get 39
                  i32.const 1
                  i32.add
                  local.get 38
                  struct.get 34 0
                  i32.gt_s
                  (if
                    (then
                    local.get 38
                    local.get 39
                    i32.const 1
                    i32.add
                    struct.set 34 0
                    )
                  )
                  local.get 37
                  f64.const 1
                  f64.add
                  local.set 37
                  br 0
                )
              )
              local.get 14
              local.get 13
              f64.add
              local.set 14
              f64.const 0
              local.set 13
              f64.const 0
              local.set 47
              (block
                (loop
                  local.get 47
                  local.get 14
                  f64.lt
                  i32.eqz
                  br_if 1
                  local.get 47
                  global.get 3
                  f64.add
                  local.set 48
                  local.get 48
                  local.get 14
                  f64.ge
                  (if
                    (then
                    local.get 14
                    local.set 48
                    )
                    (else
                    local.get 48
                    local.set 49
                    (block
                      (loop
                        local.get 49
                        local.get 47
                        f64.gt
                        local.tee 18
                        (if (result i32)
                          (then
                          local.get 2
                          struct.get 34 1
                          local.get 49
                          f64.const 1
                          f64.sub
                          i32.trunc_sat_f64_s
                          local.set 50
                          local.set 51
                          local.get 50
                          local.get 51
                          array.len
                          i32.lt_u
                          (if (result i32)
                            (then
                            local.get 51
                            local.get 50
                            array.get_u 33
                            )
                            (else
                            i32.const 0
                            )
                          )
                          global.get 4
                          local.set 21
                          f64.convert_i32_s
                          local.get 21
                          f64.ne
                          )
                          (else
                          local.get 18
                          )
                        )
                        i32.eqz
                        br_if 1
                        local.get 49
                        f64.const 1
                        f64.sub
                        local.set 49
                        br 0
                      )
                    )
                    local.get 49
                    local.get 47
                    f64.gt
                    (if
                      (then
                      local.get 49
                      f64.const 1
                      f64.sub
                      local.set 48
                      )
                    )
                    )
                  )
                  local.get 2
                  local.get 47
                  local.get 48
                  local.get 47
                  f64.sub
                  call 39
                  local.get 48
                  local.set 47
                  local.get 47
                  local.get 14
                  f64.lt
                  local.tee 18
                  (if (result i32)
                    (then
                    local.get 2
                    struct.get 34 1
                    local.get 47
                    i32.trunc_sat_f64_s
                    local.set 52
                    local.set 53
                    local.get 52
                    local.get 53
                    array.len
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 53
                      local.get 52
                      array.get_u 33
                      )
                      (else
                      i32.const 0
                      )
                    )
                    global.get 4
                    local.set 21
                    f64.convert_i32_s
                    local.get 21
                    f64.eq
                    )
                    (else
                    local.get 18
                    )
                  )
                  (if
                    (then
                    local.get 47
                    f64.const 1
                    f64.add
                    local.set 47
                    )
                  )
                  br 0
                )
              )
              f64.const 0
              local.set 14
              )
            )
            br 0
          )
        )
        local.get 15
        (if
          (then
          br 2
          )
        )
        local.get 1
        f64.const 1
        call 34
        i32.eqz
        (if
          (then
          br 2
          )
        )
        br 0
      )
    )
  )
  (func $__box_number (param f64) (result externref)
    local.get 0
    struct.new 39
    extern.convert_any
  )
  (func $__unbox_number (param externref) (result f64)
    (local $$any_temp anyref)
    local.get 0
    ref.is_null
    (if
      (then
      f64.const 0
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 39)
    (if
      (then
      local.get 1
      ref.cast (ref 39)
      struct.get 39 0
      return
      )
    )
    f64.const NaN
  )
  (func $__box_boolean (param i32) (result externref)
    local.get 0
    struct.new 40
    extern.convert_any
  )
  (func $__unbox_boolean (type 14)
    (local $$any_temp anyref)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 40)
    (if
      (then
      local.get 1
      ref.cast (ref 40)
      struct.get 40 0
      return
      )
    )
    i32.const 0
  )
  (func $__is_truthy (type 14)
    (local $$any_temp anyref)
    (local $$f64_temp f64)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 39)
    (if
      (then
      local.get 1
      ref.cast (ref 39)
      struct.get 39 0
      local.tee 2
      f64.const 0
      f64.ne
      local.get 2
      local.get 2
      f64.eq
      i32.and
      return
      )
    )
    local.get 1
    ref.test (ref 40)
    (if
      (then
      local.get 1
      ref.cast (ref 40)
      struct.get 40 0
      return
      )
    )
    i32.const 1
  )
  (func $__typeof_number (type 14)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    any.convert_extern
    ref.test (ref 39)
  )
  (func $__typeof_boolean (type 14)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    any.convert_extern
    ref.test (ref 40)
  )
  (func $__typeof_string (type 14)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    any.convert_extern
    ref.test (ref 5)
  )
  (func $__typeof_undefined (type 14)
    local.get 0
    ref.is_null
  )
  (func $__typeof_object (type 14)
    (local $$any_temp anyref)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 39)
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 1
    ref.test (ref 40)
    (if
      (then
      i32.const 0
      return
      )
    )
    i32.const 1
  )
  (func $__typeof_function (type 14)
    i32.const 0
  )
  (func $__typeof (param externref) (result externref)
    ref.null extern
  )
  (func $__wasi_write_uint8array_i8 (param (ref null 34))
    (local $len i32)
    (local $data (ref null 33))
    (local $i i32)
    (local $needPages i32)
    local.get 0
    struct.get 34 0
    local.set 1
    i32.const 131072
    local.get 1
    i32.add
    i32.const 65535
    i32.add
    i32.const 16
    i32.shr_u
    local.set 4
    local.get 4
    memory.size
    i32.gt_u
    (if
      (then
      local.get 4
      memory.size
      i32.sub
      memory.grow
      drop
      )
    )
    local.get 0
    struct.get 34 1
    local.set 2
    i32.const 0
    local.set 3
    (block
      (loop
        local.get 3
        local.get 1
        i32.ge_s
        br_if 1
        i32.const 131072
        local.get 3
        i32.add
        local.get 2
        local.get 3
        array.get_u 33
        i32.store8 offset=0 align=1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0
      )
    )
    i32.const 0
    i32.const 131072
    i32.store offset=0 align=4
    i32.const 4
    local.get 1
    i32.store offset=0 align=4
    i32.const 1
    i32.const 0
    i32.const 1
    i32.const 8
    call 0
    drop
  )
  (func $__wasi_write_any_string_stderr (param (ref null 5))
    (local $flat (ref null 6))
    (local $len i32)
    (local $off i32)
    (local $data (ref null 4))
    (local $i i32)
    (local $needPages i32)
    local.get 0
    call 3
    local.set 1
    local.get 1
    struct.get 6 0
    local.set 2
    i32.const 131072
    local.get 2
    i32.add
    i32.const 65535
    i32.add
    i32.const 16
    i32.shr_u
    local.set 6
    local.get 6
    memory.size
    i32.gt_u
    (if
      (then
      local.get 6
      memory.size
      i32.sub
      memory.grow
      drop
      )
    )
    local.get 1
    struct.get 6 1
    local.set 3
    local.get 1
    struct.get 6 2
    local.set 4
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 2
        i32.ge_s
        br_if 1
        i32.const 131072
        local.get 5
        i32.add
        local.get 4
        local.get 3
        local.get 5
        i32.add
        array.get_u 4
        i32.store8 offset=0 align=1
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    i32.const 0
    i32.const 131072
    i32.store offset=0 align=4
    i32.const 4
    local.get 2
    i32.store offset=0 align=4
    i32.const 2
    i32.const 0
    i32.const 1
    i32.const 8
    call 0
    drop
  )
  (func $__vec_len (type 14)
    (local $__any anyref)
    local.get 0
    any.convert_extern
    local.set 1
    local.get 1
    ref.test (ref 1)
    (if
      (then
      local.get 1
      ref.cast (ref 1)
      struct.get 1 0
      return
      )
      (else
      local.get 1
      ref.test (ref 3)
      (if
        (then
        local.get 1
        ref.cast (ref 3)
        struct.get 3 0
        return
        )
        (else
        local.get 1
        ref.test (ref 29)
        (if
          (then
          local.get 1
          ref.cast (ref 29)
          struct.get 29 0
          return
          )
          (else
          local.get 1
          ref.test (ref 34)
          (if
            (then
            local.get 1
            ref.cast (ref 34)
            struct.get 34 0
            return
            )
            (else
            i32.const 0
            return
            )
          )
          )
        )
        )
      )
      )
    )
    i32.const 0
  )
  (func $__vec_get (param externref i32) (result externref)
    (local $__any anyref)
    local.get 0
    any.convert_extern
    local.set 2
    local.get 2
    ref.test (ref 1)
    (if
      (then
      local.get 2
      ref.cast (ref 1)
      struct.get 1 1
      local.get 1
      array.get 0
      return
      )
      (else
      local.get 2
      ref.test (ref 3)
      (if
        (then
        local.get 2
        ref.cast (ref 3)
        struct.get 3 1
        local.get 1
        array.get 2
        call 41
        return
        )
        (else
        local.get 2
        ref.test (ref 29)
        (if
          (then
          local.get 2
          ref.cast (ref 29)
          struct.get 29 1
          local.get 1
          array.get 16
          extern.convert_any
          return
          )
          (else
          local.get 2
          ref.test (ref 34)
          (if
            (then
            local.get 2
            ref.cast (ref 34)
            struct.get 34 1
            local.get 1
            array.get_u 33
            f64.convert_i32_u
            call 41
            return
            )
            (else
            ref.null extern
            return
            )
          )
          )
        )
        )
      )
      )
    )
    ref.null extern
  )
  (func $_start (type 12)
    call 40
  )
  (export "memory" (memory 0))
  (export "main" (func 40))
  (export "__vec_len" (func 55))
  (export "__vec_get" (func 56))
  (export "_start" (func 57))
  (export "__exn_tag" (tag 0))
)