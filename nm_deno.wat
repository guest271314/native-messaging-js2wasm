(module
  (type $__vec_base (sub (struct (field $length (mut i32)))))
  (type $__arr_externref (array (mut externref)))
  (type $__vec_externref (sub $type0 (struct (field $length (mut i32)) (field $data (mut (ref null 1))))))
  (type $__arr_f64 (array (mut f64)))
  (type $__vec_f64 (sub $type0 (struct (field $length (mut i32)) (field $data (mut (ref null 3))))))
  (type $__str_data (array (mut i16)))
  (type $AnyString (sub (struct (field $len i32))))
  (type $NativeString (sub $type6 (struct (field $len i32) (field $off i32) (field $data (ref null 5)))))
  (type $ConsString (sub $type6 (struct (field $len i32) (field $left (ref null 6)) (field $right (ref null 6)))))
  (type $$wasi_fd_write (func (param i32 i32 i32 i32) (result i32)))
  (type $__arr_i8_byte (array (mut i8)))
  (type $__subview_i8_byte (sub $type0 (struct (field $length (mut i32)) (field $data (ref null 10)) (field $byteOffset i32))))
  (type $__arr_i16_byte (array (mut i16)))
  (type $__subview_i16_byte (sub $type0 (struct (field $length (mut i32)) (field $data (ref null 12)) (field $byteOffset i32))))
  (type $__arr_i32_byte (array (mut i32)))
  (type $__subview_i32_byte (sub $type0 (struct (field $length (mut i32)) (field $data (ref null 14)) (field $byteOffset i32))))
  (type $__subview_f64 (sub $type0 (struct (field $length (mut i32)) (field $data (ref null 3)) (field $byteOffset i32))))
  (type $__arr_ref_6 (array (mut (ref null 6))))
  (type $type23 (func (param (ref null 6) (ref null 6)) (result i32)))
  (type $type24 (func (param (ref null 6) i32 i32) (result (ref null 6))))
  (type $type25 (func (param (ref null 6) i32) (result (ref null 6))))
  (type $type26 (func (param (ref null 6) (ref null 6) i32) (result i32)))
  (type $type28 (func (param (ref null 6)) (result (ref null 6))))
  (type $type29 (func (param (ref null 6) i32 (ref null 6)) (result (ref null 6))))
  (type $CaseTableI32 (array i32))
  (type $type31 (func (param i32 (ref null 29)) (result i32)))
  (type $type33 (func (param (ref null 6) (ref null 6) (ref null 6)) (result (ref null 6))))
  (type $__vec_ref_6 (sub $type0 (struct (field $length (mut i32)) (field $data (mut (ref null 17))))))
  (type $type36 (func (param i32) (result (ref null 6))))
  (type $__vec_i8_byte (sub $type0 (struct (field $length (mut i32)) (field $data (mut (ref null 10))))))
  (type $main_type (func))
  (type $__box_number_struct (struct (field $value f64)))
  (type $__box_boolean_struct (struct (field $value i32)))
  (type $$BigInt (struct (field $value i64)))
  (type $type46 (func (param externref) (result i32)))
  (type $type47 (func (param externref) (result f64)))
  (type $type48 (func (param externref) (result i64)))
  (type $type52 (func (param externref) (result externref)))
  (type $$Error_struct (struct (field $tag i32) (field $message (mut externref)) (field $name externref) (field $stack (mut externref)) (field $userClassId (mut i32)) (field $props (mut externref))))
  (type $type54 (func (param externref)))
  (type $type55 (func (param externref externref) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write_import (type 9)))
  (import "wasi_snapshot_preview1" "fd_read" (func $fd_read_import (type 9)))
  (global $__wasi_bump_ptr (mut i32) (i32.const 1024))
  (global $__lin_u8_arena_ptr (mut i32) (i32.const 262144))
  (global $__mod_WINDOW (mut f64) (f64.const 0))
  (global $__current_this (mut externref) (ref.null extern))
  (global $__tdz_WINDOW (mut i32) (i32.const 0))
  (global $__init_done (mut i32) (i32.const 0))
  (memory 3)
  (tag $__exn (type 53))
  (func $__str_copy_tree (param (ref null 6) (ref null 5) i32) (result i32)
    (local $flat (ref null 7))
    (local $flatOff i32)
    (local $flatLen i32)
    (local $cur (ref null 6))
    (local $worklist (ref null 17))
    (local $wlTop i32)
    (local $newWl (ref null 17))
    local.get 0
    ref.test (ref 7)
    (if
      (then
      local.get 0
      ref.cast (ref 7)
      local.tee 3
      ref.as_non_null
      struct.get 7 1
      local.set 4
      local.get 3
      ref.as_non_null
      struct.get 7 0
      local.set 5
      local.get 1
      local.get 2
      local.get 3
      ref.as_non_null
      struct.get 7 2
      local.get 4
      local.get 5
      array.copy 5 5
      local.get 2
      local.get 5
      i32.add
      return
      )
    )
    i32.const 16
    array.new_default 17
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
            ref.test (ref 7)
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
              array.new_default 17
              local.tee 9
              ref.as_non_null
              i32.const 0
              local.get 7
              ref.as_non_null
              i32.const 0
              local.get 8
              array.copy 17 17
              local.get 9
              local.set 7
              )
            )
            local.get 7
            ref.as_non_null
            local.get 8
            local.get 6
            ref.as_non_null
            ref.cast (ref 8)
            struct.get 8 2
            array.set 17
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            local.get 6
            ref.as_non_null
            ref.cast (ref 8)
            struct.get 8 1
            local.set 6
            br 0
          )
        )
        local.get 6
        ref.as_non_null
        ref.cast (ref 7)
        local.tee 3
        ref.as_non_null
        struct.get 7 1
        local.set 4
        local.get 3
        ref.as_non_null
        struct.get 7 0
        local.set 5
        local.get 1
        local.get 2
        local.get 3
        ref.as_non_null
        struct.get 7 2
        local.get 4
        local.get 5
        array.copy 5 5
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
        array.get 17
        local.set 6
        br 0
      )
    )
    local.get 2
  )
  (func $__str_flatten (param (ref null 6)) (result (ref null 7))
    (local $len i32)
    (local $buf (ref null 5))
    local.get 0
    ref.test (ref 7)
    (if (result (ref null 7))
      (then
      local.get 0
      ref.cast (ref 7)
      )
      (else
      local.get 0
      struct.get 6 0
      local.tee 1
      array.new_default 5
      local.set 2
      local.get 0
      local.get 2
      i32.const 0
      call 2
      drop
      local.get 1
      i32.const 0
      local.get 2
      struct.new 7
      )
    )
  )
  (func $__str_concat (param (ref null 6) (ref null 6)) (result (ref null 6))
    (local $lenA i32)
    (local $lenB i32)
    (local $newLen i32)
    (local $newArr (ref null 5))
    (local $flatA (ref null 7))
    (local $flatB (ref null 7))
    local.get 0
    struct.get 6 0
    local.set 2
    local.get 1
    struct.get 6 0
    local.set 3
    local.get 2
    local.get 3
    i32.add
    local.tee 4
    i32.const 64
    i32.ge_u
    (if (result (ref null 6))
      (then
      local.get 4
      local.get 0
      local.get 1
      struct.new 8
      )
      (else
      local.get 0
      call 3
      local.set 6
      local.get 1
      call 3
      local.set 7
      local.get 4
      array.new_default 5
      local.tee 5
      ref.as_non_null
      i32.const 0
      local.get 6
      ref.as_non_null
      struct.get 7 2
      local.get 6
      ref.as_non_null
      struct.get 7 1
      local.get 2
      array.copy 5 5
      local.get 5
      ref.as_non_null
      local.get 2
      local.get 7
      ref.as_non_null
      struct.get 7 2
      local.get 7
      ref.as_non_null
      struct.get 7 1
      local.get 3
      array.copy 5 5
      local.get 4
      i32.const 0
      local.get 5
      ref.as_non_null
      struct.new 7
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
  (func $__str_equals (type 22)
    (local $len i32)
    (local $i i32)
    (local $aData (ref null 5))
    (local $bData (ref null 5))
    (local $aOff i32)
    (local $bOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.tee 2
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
    i32.ne
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 6
    local.get 1
    ref.cast (ref 7)
    struct.get 7 1
    local.set 7
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 4
    local.get 1
    ref.cast (ref 7)
    struct.get 7 2
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
        array.get_u 5
        local.get 5
        local.get 7
        local.get 3
        i32.add
        array.get_u 5
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
  (func $__str_compare (type 22)
    (local $lenA i32)
    (local $lenB i32)
    (local $minLen i32)
    (local $i i32)
    (local $aData (ref null 5))
    (local $bData (ref null 5))
    (local $aOff i32)
    (local $bOff i32)
    (local $ca i32)
    (local $cb i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 2
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
    local.set 3
    local.get 2
    local.get 3
    local.get 2
    local.get 3
    i32.lt_u
    select
    local.set 4
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 8
    local.get 1
    ref.cast (ref 7)
    struct.get 7 1
    local.set 9
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 6
    local.get 1
    ref.cast (ref 7)
    struct.get 7 2
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
        array.get_u 5
        local.set 10
        local.get 7
        local.get 9
        local.get 5
        i32.add
        array.get_u 5
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
  (func $__str_substring (type 23)
    (local $sOff i32)
    (local $sLen i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 3
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
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
    ref.cast (ref 7)
    struct.get 7 2
    struct.new 7
  )
  (func $__str_charAt (type 24)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    i32.const 0
    i32.lt_s
    local.get 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    i32.ge_s
    i32.or
    (if (result (ref null 6))
      (then
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 5
      struct.new 7
      )
      (else
      i32.const 1
      i32.const 0
      local.get 0
      ref.cast (ref 7)
      struct.get 7 2
      local.get 0
      ref.cast (ref 7)
      struct.get 7 1
      local.get 1
      i32.add
      array.get_u 5
      array.new_fixed 5 1
      struct.new 7
      )
    )
  )
  (func $__str_charAt_cp (type 24)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    i32.const 0
    i32.lt_s
    local.get 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    i32.ge_s
    i32.or
    (if (result (ref null 6))
      (then
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 5
      struct.new 7
      )
      (else
      local.get 0
      local.get 1
      local.get 1
      i32.const 1
      i32.add
      local.get 0
      ref.cast (ref 7)
      struct.get 7 2
      local.get 0
      ref.cast (ref 7)
      struct.get 7 1
      local.get 1
      i32.add
      array.get_u 5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get 1
      i32.const 1
      i32.add
      local.get 0
      ref.cast (ref 7)
      struct.get 7 0
      i32.lt_s
      i32.and
      (if (result i32)
        (then
        local.get 0
        ref.cast (ref 7)
        struct.get 7 2
        local.get 0
        ref.cast (ref 7)
        struct.get 7 1
        local.get 1
        i32.add
        i32.const 1
        i32.add
        array.get_u 5
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        )
        (else
        i32.const 0
        )
      )
      i32.add
      call 8
      )
    )
  )
  (func $__str_slice (type 23)
    (local $len i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 0
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
    local.get 1
    local.get 2
    i32.ge_s
    (if (result (ref null 6))
      (then
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 5
      struct.new 7
      )
      (else
      local.get 0
      local.get 1
      local.get 2
      call 8
      )
    )
  )
  (func $__str_substr (type 23)
    (local $len i32)
    (local $tail i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 0
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
      i32.const 0
      local.get 1
      local.get 1
      i32.const 0
      i32.lt_s
      select
      local.set 1
      )
    )
    local.get 1
    local.get 3
    i32.gt_s
    (if
      (then
      local.get 3
      local.set 1
      )
    )
    local.get 3
    local.get 1
    i32.sub
    local.set 4
    local.get 2
    local.get 4
    local.get 2
    local.get 4
    i32.lt_s
    select
    local.tee 2
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
    local.get 1
    local.get 2
    i32.add
    call 8
  )
  (func $__str_indexOf (type 25)
    (local $hLen i32)
    (local $nLen i32)
    (local $i i32)
    (local $j i32)
    (local $hData (ref null 5))
    (local $nData (ref null 5))
    (local $hOff i32)
    (local $nOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 3
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
    local.tee 4
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
    ref.cast (ref 7)
    struct.get 7 1
    local.set 9
    local.get 1
    ref.cast (ref 7)
    struct.get 7 1
    local.set 10
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 7
    local.get 1
    ref.cast (ref 7)
    struct.get 7 2
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
            array.get_u 5
            local.get 8
            local.get 10
            local.get 6
            i32.add
            array.get_u 5
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
  (func $__str_lastIndexOf (type 25)
    (local $hLen i32)
    (local $nLen i32)
    (local $i i32)
    (local $j i32)
    (local $hData (ref null 5))
    (local $nData (ref null 5))
    (local $hOff i32)
    (local $nOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 3
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
    local.tee 4
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
    ref.cast (ref 7)
    struct.get 7 1
    local.set 9
    local.get 1
    ref.cast (ref 7)
    struct.get 7 1
    local.set 10
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 7
    local.get 1
    ref.cast (ref 7)
    struct.get 7 2
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
            array.get_u 5
            local.get 8
            local.get 10
            local.get 6
            i32.add
            array.get_u 5
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
  (func $__str_includes (type 25)
    local.get 0
    local.get 1
    local.get 2
    call 13
    i32.const -1
    i32.ne
  )
  (func $__str_startsWith (type 25)
    (local $sLen i32)
    (local $pLen i32)
    (local $i i32)
    (local $sData (ref null 5))
    (local $pData (ref null 5))
    (local $sOff i32)
    (local $pOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 3
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
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
    ref.cast (ref 7)
    struct.get 7 1
    local.set 8
    local.get 1
    ref.cast (ref 7)
    struct.get 7 1
    local.set 9
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 6
    local.get 1
    ref.cast (ref 7)
    struct.get 7 2
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
        array.get_u 5
        local.get 7
        local.get 9
        local.get 5
        i32.add
        array.get_u 5
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
  (func $__str_endsWith (type 25)
    (local $sxLen i32)
    (local $i i32)
    (local $sData (ref null 5))
    (local $xData (ref null 5))
    (local $startPos i32)
    (local $sLen i32)
    (local $sOff i32)
    (local $xOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.tee 1
    ref.cast (ref 7)
    struct.get 7 0
    local.set 3
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 8
    local.get 2
    local.get 8
    local.get 2
    local.get 8
    i32.lt_s
    select
    local.tee 2
    local.get 3
    i32.sub
    local.tee 7
    i32.const 0
    i32.lt_s
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 9
    local.get 1
    ref.cast (ref 7)
    struct.get 7 1
    local.set 10
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 5
    local.get 1
    ref.cast (ref 7)
    struct.get 7 2
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
        array.get_u 5
        local.get 6
        local.get 10
        local.get 4
        i32.add
        array.get_u 5
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
  (func $__str_isWhitespace (param i32) (result i32)
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
    i32.const 5760
    i32.eq
    i32.or
    local.get 0
    i32.const 8192
    i32.ge_u
    local.get 0
    i32.const 8202
    i32.le_u
    i32.and
    i32.or
    local.get 0
    i32.const 8232
    i32.eq
    i32.or
    local.get 0
    i32.const 8233
    i32.eq
    i32.or
    local.get 0
    i32.const 8239
    i32.eq
    i32.or
    local.get 0
    i32.const 8287
    i32.eq
    i32.or
    local.get 0
    i32.const 12288
    i32.eq
    i32.or
    local.get 0
    i32.const 65279
    i32.eq
    i32.or
  )
  (func $__str_trimStart (type 27)
    (local $len i32)
    (local $i i32)
    (local $sData (ref null 5))
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 4
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
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
        array.get_u 5
        call 18
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
  (func $__str_trimEnd (type 27)
    (local $end i32)
    (local $sData (ref null 5))
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 3
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
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
        array.get_u 5
        call 18
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
  (func $__str_trim (type 27)
    local.get 0
    call 19
    call 20
  )
  (func $__str_repeat (type 24)
    (local $sLen i32)
    (local $newLen i32)
    (local $newArr (ref null 5))
    (local $dst i32)
    (local $srcData (ref null 5))
    (local $copyI i32)
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 2
    local.get 1
    i32.const 0
    i32.le_s
    (if (result (ref null 6))
      (then
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 5
      struct.new 7
      )
      (else
      local.get 2
      i32.eqz
      (if (result (ref null 6))
        (then
        i32.const 0
        i32.const 0
        i32.const 0
        array.new_default 5
        struct.new 7
        )
        (else
        local.get 0
        ref.cast (ref 7)
        struct.get 7 1
        local.set 8
        local.get 2
        local.get 1
        i32.mul
        local.tee 3
        array.new_default 5
        local.set 4
        local.get 0
        ref.cast (ref 7)
        struct.get 7 2
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
            array.copy 5 5
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
        struct.new 7
        )
      )
      )
    )
  )
  (func $__str_padStart (type 28)
    (local $sLen i32)
    (local $padLen i32)
    (local $fillLen i32)
    (local $repeated (ref null 6))
    (local $prefix (ref null 6))
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 2
    call 3
    ref.cast null (ref null 6)
    local.set 2
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.tee 3
    local.get 1
    i32.ge_s
    (if (result (ref null 6))
      (then
      local.get 0
      )
      (else
      local.get 2
      ref.cast (ref 7)
      struct.get 7 0
      local.tee 4
      i32.eqz
      (if (result (ref null 6))
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
        call 22
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
  (func $__str_padEnd (type 28)
    (local $sLen i32)
    (local $padLen i32)
    (local $fillLen i32)
    (local $suffix (ref null 6))
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 2
    call 3
    ref.cast null (ref null 6)
    local.set 2
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.tee 3
    local.get 1
    i32.ge_s
    (if (result (ref null 6))
      (then
      local.get 0
      )
      (else
      local.get 2
      ref.cast (ref 7)
      struct.get 7 0
      local.tee 4
      i32.eqz
      (if (result (ref null 6))
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
        call 22
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
  (func $__str_toLowerCase (type 27)
    (local $len i32)
    (local $srcData (ref null 5))
    (local $newArr (ref null 5))
    (local $i i32)
    (local $ch i32)
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 6
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 2
    local.get 1
    array.new_default 5
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
        array.get_u 5
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
        array.set 5
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
    struct.new 7
  )
  (func $__str_toUpperCase (type 27)
    (local $len i32)
    (local $srcData (ref null 5))
    (local $newArr (ref null 5))
    (local $i i32)
    (local $ch i32)
    (local $sOff i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.tee 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 1
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
    local.set 6
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 2
    local.get 1
    array.new_default 5
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
        array.get_u 5
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
        array.set 5
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
    struct.new 7
  )
  (func $__case_simple_upper (type 30)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    local.get 1
    array.len
    i32.const 2
    i32.shr_u
    local.set 11
    i32.const 0
    local.set 2
    local.get 11
    local.set 3
    (block
      (loop
        local.get 2
        local.get 3
        i32.ge_u
        br_if 1
        local.get 2
        local.get 3
        i32.add
        i32.const 1
        i32.shr_u
        local.tee 4
        i32.const 2
        i32.shl
        local.set 5
        local.get 1
        local.get 5
        array.get 29
        local.tee 6
        local.get 0
        i32.gt_s
        (if
          (then
          local.get 4
          local.set 3
          )
          (else
          local.get 4
          i32.const 1
          i32.add
          local.set 2
          )
        )
        br 0
      )
    )
    local.get 2
    i32.eqz
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 2
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.set 5
    local.get 1
    local.get 5
    array.get 29
    local.set 6
    local.get 1
    local.get 5
    i32.const 1
    i32.add
    array.get 29
    local.set 7
    local.get 1
    local.get 5
    i32.const 2
    i32.add
    array.get 29
    local.set 8
    local.get 1
    local.get 5
    i32.const 3
    i32.add
    array.get 29
    local.set 9
    local.get 0
    local.get 6
    i32.sub
    local.set 10
    local.get 8
    i32.const 1
    i32.eq
    (if
      (then
      local.get 10
      local.get 7
      i32.lt_u
      (if
        (then
        local.get 0
        local.get 9
        i32.add
        return
        )
      )
      )
      (else
      local.get 10
      i32.const 1
      i32.and
      i32.eqz
      local.get 10
      i32.const 1
      i32.shr_u
      local.get 7
      i32.lt_u
      i32.and
      (if
        (then
        local.get 0
        local.get 9
        i32.add
        return
        )
      )
      )
    )
    local.get 0
  )
  (func $__case_simple_lower (type 30)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    (local $undefined i32)
    local.get 1
    array.len
    i32.const 2
    i32.shr_u
    local.set 11
    i32.const 0
    local.set 2
    local.get 11
    local.set 3
    (block
      (loop
        local.get 2
        local.get 3
        i32.ge_u
        br_if 1
        local.get 2
        local.get 3
        i32.add
        i32.const 1
        i32.shr_u
        local.tee 4
        i32.const 2
        i32.shl
        local.set 5
        local.get 1
        local.get 5
        array.get 29
        local.tee 6
        local.get 0
        i32.gt_s
        (if
          (then
          local.get 4
          local.set 3
          )
          (else
          local.get 4
          i32.const 1
          i32.add
          local.set 2
          )
        )
        br 0
      )
    )
    local.get 2
    i32.eqz
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 2
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.set 5
    local.get 1
    local.get 5
    array.get 29
    local.set 6
    local.get 1
    local.get 5
    i32.const 1
    i32.add
    array.get 29
    local.set 7
    local.get 1
    local.get 5
    i32.const 2
    i32.add
    array.get 29
    local.set 8
    local.get 1
    local.get 5
    i32.const 3
    i32.add
    array.get 29
    local.set 9
    local.get 0
    local.get 6
    i32.sub
    local.set 10
    local.get 8
    i32.const 1
    i32.eq
    (if
      (then
      local.get 10
      local.get 7
      i32.lt_u
      (if
        (then
        local.get 0
        local.get 9
        i32.add
        return
        )
      )
      )
      (else
      local.get 10
      i32.const 1
      i32.and
      i32.eqz
      local.get 10
      i32.const 1
      i32.shr_u
      local.get 7
      i32.lt_u
      i32.and
      (if
        (then
        local.get 0
        local.get 9
        i32.add
        return
        )
      )
      )
    )
    local.get 0
  )
  (func $__str_toUpperCase_uni (type 27)
    (local $len i32)
    (local $data (ref null 5))
    (local $off i32)
    (local $runs (ref null 29))
    (local $spec (ref null 29))
    (local $specN i32)
    (local $i i32)
    (local $ch i32)
    (local $outLen i32)
    (local $outArr (ref null 5))
    (local $specHit i32)
    (local $specBase i32)
    (local $m i32)
    (local $fs (ref null 7))
    (local $scan i32)
    local.get 0
    call 3
    ref.cast (ref 7)
    local.tee 14
    struct.get 7 0
    local.set 1
    local.get 14
    struct.get 7 1
    local.set 3
    local.get 14
    struct.get 7 2
    local.set 2
    i32.const 97
    i32.const 26
    i32.const 1
    i32.const -32
    i32.const 181
    i32.const 1
    i32.const 1
    i32.const 743
    i32.const 224
    i32.const 23
    i32.const 1
    i32.const -32
    i32.const 248
    i32.const 7
    i32.const 1
    i32.const -32
    i32.const 255
    i32.const 1
    i32.const 1
    i32.const 121
    i32.const 257
    i32.const 24
    i32.const 2
    i32.const -1
    i32.const 305
    i32.const 1
    i32.const 1
    i32.const -232
    i32.const 307
    i32.const 3
    i32.const 2
    i32.const -1
    i32.const 314
    i32.const 8
    i32.const 2
    i32.const -1
    i32.const 331
    i32.const 23
    i32.const 2
    i32.const -1
    i32.const 378
    i32.const 3
    i32.const 2
    i32.const -1
    i32.const 383
    i32.const 1
    i32.const 1
    i32.const -300
    i32.const 384
    i32.const 1
    i32.const 1
    i32.const 195
    i32.const 387
    i32.const 2
    i32.const 2
    i32.const -1
    i32.const 392
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 396
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 402
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 405
    i32.const 1
    i32.const 1
    i32.const 97
    i32.const 409
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 410
    i32.const 1
    i32.const 1
    i32.const 163
    i32.const 411
    i32.const 1
    i32.const 1
    i32.const 42561
    i32.const 414
    i32.const 1
    i32.const 1
    i32.const 130
    i32.const 417
    i32.const 3
    i32.const 2
    i32.const -1
    i32.const 424
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 429
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 432
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 436
    i32.const 2
    i32.const 2
    i32.const -1
    i32.const 441
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 445
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 447
    i32.const 1
    i32.const 1
    i32.const 56
    i32.const 453
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 454
    i32.const 1
    i32.const 1
    i32.const -2
    i32.const 456
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 457
    i32.const 1
    i32.const 1
    i32.const -2
    i32.const 459
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 460
    i32.const 1
    i32.const 1
    i32.const -2
    i32.const 462
    i32.const 8
    i32.const 2
    i32.const -1
    i32.const 477
    i32.const 1
    i32.const 1
    i32.const -79
    i32.const 479
    i32.const 9
    i32.const 2
    i32.const -1
    i32.const 498
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 499
    i32.const 1
    i32.const 1
    i32.const -2
    i32.const 501
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 505
    i32.const 20
    i32.const 2
    i32.const -1
    i32.const 547
    i32.const 9
    i32.const 2
    i32.const -1
    i32.const 572
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 575
    i32.const 2
    i32.const 1
    i32.const 10815
    i32.const 578
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 583
    i32.const 5
    i32.const 2
    i32.const -1
    i32.const 592
    i32.const 1
    i32.const 1
    i32.const 10783
    i32.const 593
    i32.const 1
    i32.const 1
    i32.const 10780
    i32.const 594
    i32.const 1
    i32.const 1
    i32.const 10782
    i32.const 595
    i32.const 1
    i32.const 1
    i32.const -210
    i32.const 596
    i32.const 1
    i32.const 1
    i32.const -206
    i32.const 598
    i32.const 2
    i32.const 1
    i32.const -205
    i32.const 601
    i32.const 1
    i32.const 1
    i32.const -202
    i32.const 603
    i32.const 1
    i32.const 1
    i32.const -203
    i32.const 604
    i32.const 1
    i32.const 1
    i32.const 42319
    i32.const 608
    i32.const 1
    i32.const 1
    i32.const -205
    i32.const 609
    i32.const 1
    i32.const 1
    i32.const 42315
    i32.const 611
    i32.const 1
    i32.const 1
    i32.const -207
    i32.const 612
    i32.const 1
    i32.const 1
    i32.const 42343
    i32.const 613
    i32.const 1
    i32.const 1
    i32.const 42280
    i32.const 614
    i32.const 1
    i32.const 1
    i32.const 42308
    i32.const 616
    i32.const 1
    i32.const 1
    i32.const -209
    i32.const 617
    i32.const 1
    i32.const 1
    i32.const -211
    i32.const 618
    i32.const 1
    i32.const 1
    i32.const 42308
    i32.const 619
    i32.const 1
    i32.const 1
    i32.const 10743
    i32.const 620
    i32.const 1
    i32.const 1
    i32.const 42305
    i32.const 623
    i32.const 1
    i32.const 1
    i32.const -211
    i32.const 625
    i32.const 1
    i32.const 1
    i32.const 10749
    i32.const 626
    i32.const 1
    i32.const 1
    i32.const -213
    i32.const 629
    i32.const 1
    i32.const 1
    i32.const -214
    i32.const 637
    i32.const 1
    i32.const 1
    i32.const 10727
    i32.const 640
    i32.const 1
    i32.const 1
    i32.const -218
    i32.const 642
    i32.const 1
    i32.const 1
    i32.const 42307
    i32.const 643
    i32.const 1
    i32.const 1
    i32.const -218
    i32.const 647
    i32.const 1
    i32.const 1
    i32.const 42282
    i32.const 648
    i32.const 1
    i32.const 1
    i32.const -218
    i32.const 649
    i32.const 1
    i32.const 1
    i32.const -69
    i32.const 650
    i32.const 2
    i32.const 1
    i32.const -217
    i32.const 652
    i32.const 1
    i32.const 1
    i32.const -71
    i32.const 658
    i32.const 1
    i32.const 1
    i32.const -219
    i32.const 669
    i32.const 1
    i32.const 1
    i32.const 42261
    i32.const 670
    i32.const 1
    i32.const 1
    i32.const 42258
    i32.const 837
    i32.const 1
    i32.const 1
    i32.const 84
    i32.const 881
    i32.const 2
    i32.const 2
    i32.const -1
    i32.const 887
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 891
    i32.const 3
    i32.const 1
    i32.const 130
    i32.const 940
    i32.const 1
    i32.const 1
    i32.const -38
    i32.const 941
    i32.const 3
    i32.const 1
    i32.const -37
    i32.const 945
    i32.const 17
    i32.const 1
    i32.const -32
    i32.const 962
    i32.const 1
    i32.const 1
    i32.const -31
    i32.const 963
    i32.const 9
    i32.const 1
    i32.const -32
    i32.const 972
    i32.const 1
    i32.const 1
    i32.const -64
    i32.const 973
    i32.const 2
    i32.const 1
    i32.const -63
    i32.const 976
    i32.const 1
    i32.const 1
    i32.const -62
    i32.const 977
    i32.const 1
    i32.const 1
    i32.const -57
    i32.const 981
    i32.const 1
    i32.const 1
    i32.const -47
    i32.const 982
    i32.const 1
    i32.const 1
    i32.const -54
    i32.const 983
    i32.const 1
    i32.const 1
    i32.const -8
    i32.const 985
    i32.const 12
    i32.const 2
    i32.const -1
    i32.const 1008
    i32.const 1
    i32.const 1
    i32.const -86
    i32.const 1009
    i32.const 1
    i32.const 1
    i32.const -80
    i32.const 1010
    i32.const 1
    i32.const 1
    i32.const 7
    i32.const 1011
    i32.const 1
    i32.const 1
    i32.const -116
    i32.const 1013
    i32.const 1
    i32.const 1
    i32.const -96
    i32.const 1016
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 1019
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 1072
    i32.const 32
    i32.const 1
    i32.const -32
    i32.const 1104
    i32.const 16
    i32.const 1
    i32.const -80
    i32.const 1121
    i32.const 17
    i32.const 2
    i32.const -1
    i32.const 1163
    i32.const 27
    i32.const 2
    i32.const -1
    i32.const 1218
    i32.const 7
    i32.const 2
    i32.const -1
    i32.const 1231
    i32.const 1
    i32.const 1
    i32.const -15
    i32.const 1233
    i32.const 48
    i32.const 2
    i32.const -1
    i32.const 1377
    i32.const 38
    i32.const 1
    i32.const -48
    i32.const 4304
    i32.const 43
    i32.const 1
    i32.const 3008
    i32.const 4349
    i32.const 3
    i32.const 1
    i32.const 3008
    i32.const 5112
    i32.const 6
    i32.const 1
    i32.const -8
    i32.const 7296
    i32.const 1
    i32.const 1
    i32.const -6254
    i32.const 7297
    i32.const 1
    i32.const 1
    i32.const -6253
    i32.const 7298
    i32.const 1
    i32.const 1
    i32.const -6244
    i32.const 7299
    i32.const 2
    i32.const 1
    i32.const -6242
    i32.const 7301
    i32.const 1
    i32.const 1
    i32.const -6243
    i32.const 7302
    i32.const 1
    i32.const 1
    i32.const -6236
    i32.const 7303
    i32.const 1
    i32.const 1
    i32.const -6181
    i32.const 7304
    i32.const 1
    i32.const 1
    i32.const 35266
    i32.const 7306
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 7545
    i32.const 1
    i32.const 1
    i32.const 35332
    i32.const 7549
    i32.const 1
    i32.const 1
    i32.const 3814
    i32.const 7566
    i32.const 1
    i32.const 1
    i32.const 35384
    i32.const 7681
    i32.const 75
    i32.const 2
    i32.const -1
    i32.const 7835
    i32.const 1
    i32.const 1
    i32.const -59
    i32.const 7841
    i32.const 48
    i32.const 2
    i32.const -1
    i32.const 7936
    i32.const 8
    i32.const 1
    i32.const 8
    i32.const 7952
    i32.const 6
    i32.const 1
    i32.const 8
    i32.const 7968
    i32.const 8
    i32.const 1
    i32.const 8
    i32.const 7984
    i32.const 8
    i32.const 1
    i32.const 8
    i32.const 8000
    i32.const 6
    i32.const 1
    i32.const 8
    i32.const 8017
    i32.const 4
    i32.const 2
    i32.const 8
    i32.const 8032
    i32.const 8
    i32.const 1
    i32.const 8
    i32.const 8048
    i32.const 2
    i32.const 1
    i32.const 74
    i32.const 8050
    i32.const 4
    i32.const 1
    i32.const 86
    i32.const 8054
    i32.const 2
    i32.const 1
    i32.const 100
    i32.const 8056
    i32.const 2
    i32.const 1
    i32.const 128
    i32.const 8058
    i32.const 2
    i32.const 1
    i32.const 112
    i32.const 8060
    i32.const 2
    i32.const 1
    i32.const 126
    i32.const 8112
    i32.const 2
    i32.const 1
    i32.const 8
    i32.const 8126
    i32.const 1
    i32.const 1
    i32.const -7205
    i32.const 8144
    i32.const 2
    i32.const 1
    i32.const 8
    i32.const 8160
    i32.const 2
    i32.const 1
    i32.const 8
    i32.const 8165
    i32.const 1
    i32.const 1
    i32.const 7
    i32.const 8526
    i32.const 1
    i32.const 1
    i32.const -28
    i32.const 8560
    i32.const 16
    i32.const 1
    i32.const -16
    i32.const 8580
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 9424
    i32.const 26
    i32.const 1
    i32.const -26
    i32.const 11312
    i32.const 48
    i32.const 1
    i32.const -48
    i32.const 11361
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 11365
    i32.const 1
    i32.const 1
    i32.const -10795
    i32.const 11366
    i32.const 1
    i32.const 1
    i32.const -10792
    i32.const 11368
    i32.const 3
    i32.const 2
    i32.const -1
    i32.const 11379
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 11382
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 11393
    i32.const 50
    i32.const 2
    i32.const -1
    i32.const 11500
    i32.const 2
    i32.const 2
    i32.const -1
    i32.const 11507
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 11520
    i32.const 38
    i32.const 1
    i32.const -7264
    i32.const 11559
    i32.const 1
    i32.const 1
    i32.const -7264
    i32.const 11565
    i32.const 1
    i32.const 1
    i32.const -7264
    i32.const 42561
    i32.const 23
    i32.const 2
    i32.const -1
    i32.const 42625
    i32.const 14
    i32.const 2
    i32.const -1
    i32.const 42787
    i32.const 7
    i32.const 2
    i32.const -1
    i32.const 42803
    i32.const 31
    i32.const 2
    i32.const -1
    i32.const 42874
    i32.const 2
    i32.const 2
    i32.const -1
    i32.const 42879
    i32.const 5
    i32.const 2
    i32.const -1
    i32.const 42892
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 42897
    i32.const 2
    i32.const 2
    i32.const -1
    i32.const 42900
    i32.const 1
    i32.const 1
    i32.const 48
    i32.const 42903
    i32.const 10
    i32.const 2
    i32.const -1
    i32.const 42933
    i32.const 8
    i32.const 2
    i32.const -1
    i32.const 42952
    i32.const 2
    i32.const 2
    i32.const -1
    i32.const 42957
    i32.const 8
    i32.const 2
    i32.const -1
    i32.const 42998
    i32.const 1
    i32.const 1
    i32.const -1
    i32.const 43859
    i32.const 1
    i32.const 1
    i32.const -928
    i32.const 43888
    i32.const 80
    i32.const 1
    i32.const -38864
    i32.const 65345
    i32.const 26
    i32.const 1
    i32.const -32
    array.new_fixed 29 744
    local.set 4
    i32.const 223
    i32.const 2
    i32.const 83
    i32.const 83
    i32.const 0
    i32.const 329
    i32.const 2
    i32.const 700
    i32.const 78
    i32.const 0
    i32.const 496
    i32.const 2
    i32.const 74
    i32.const 780
    i32.const 0
    i32.const 912
    i32.const 3
    i32.const 921
    i32.const 776
    i32.const 769
    i32.const 944
    i32.const 3
    i32.const 933
    i32.const 776
    i32.const 769
    i32.const 1415
    i32.const 2
    i32.const 1333
    i32.const 1362
    i32.const 0
    i32.const 7830
    i32.const 2
    i32.const 72
    i32.const 817
    i32.const 0
    i32.const 7831
    i32.const 2
    i32.const 84
    i32.const 776
    i32.const 0
    i32.const 7832
    i32.const 2
    i32.const 87
    i32.const 778
    i32.const 0
    i32.const 7833
    i32.const 2
    i32.const 89
    i32.const 778
    i32.const 0
    i32.const 7834
    i32.const 2
    i32.const 65
    i32.const 702
    i32.const 0
    i32.const 8016
    i32.const 2
    i32.const 933
    i32.const 787
    i32.const 0
    i32.const 8018
    i32.const 3
    i32.const 933
    i32.const 787
    i32.const 768
    i32.const 8020
    i32.const 3
    i32.const 933
    i32.const 787
    i32.const 769
    i32.const 8022
    i32.const 3
    i32.const 933
    i32.const 787
    i32.const 834
    i32.const 8064
    i32.const 2
    i32.const 7944
    i32.const 921
    i32.const 0
    i32.const 8065
    i32.const 2
    i32.const 7945
    i32.const 921
    i32.const 0
    i32.const 8066
    i32.const 2
    i32.const 7946
    i32.const 921
    i32.const 0
    i32.const 8067
    i32.const 2
    i32.const 7947
    i32.const 921
    i32.const 0
    i32.const 8068
    i32.const 2
    i32.const 7948
    i32.const 921
    i32.const 0
    i32.const 8069
    i32.const 2
    i32.const 7949
    i32.const 921
    i32.const 0
    i32.const 8070
    i32.const 2
    i32.const 7950
    i32.const 921
    i32.const 0
    i32.const 8071
    i32.const 2
    i32.const 7951
    i32.const 921
    i32.const 0
    i32.const 8072
    i32.const 2
    i32.const 7944
    i32.const 921
    i32.const 0
    i32.const 8073
    i32.const 2
    i32.const 7945
    i32.const 921
    i32.const 0
    i32.const 8074
    i32.const 2
    i32.const 7946
    i32.const 921
    i32.const 0
    i32.const 8075
    i32.const 2
    i32.const 7947
    i32.const 921
    i32.const 0
    i32.const 8076
    i32.const 2
    i32.const 7948
    i32.const 921
    i32.const 0
    i32.const 8077
    i32.const 2
    i32.const 7949
    i32.const 921
    i32.const 0
    i32.const 8078
    i32.const 2
    i32.const 7950
    i32.const 921
    i32.const 0
    i32.const 8079
    i32.const 2
    i32.const 7951
    i32.const 921
    i32.const 0
    i32.const 8080
    i32.const 2
    i32.const 7976
    i32.const 921
    i32.const 0
    i32.const 8081
    i32.const 2
    i32.const 7977
    i32.const 921
    i32.const 0
    i32.const 8082
    i32.const 2
    i32.const 7978
    i32.const 921
    i32.const 0
    i32.const 8083
    i32.const 2
    i32.const 7979
    i32.const 921
    i32.const 0
    i32.const 8084
    i32.const 2
    i32.const 7980
    i32.const 921
    i32.const 0
    i32.const 8085
    i32.const 2
    i32.const 7981
    i32.const 921
    i32.const 0
    i32.const 8086
    i32.const 2
    i32.const 7982
    i32.const 921
    i32.const 0
    i32.const 8087
    i32.const 2
    i32.const 7983
    i32.const 921
    i32.const 0
    i32.const 8088
    i32.const 2
    i32.const 7976
    i32.const 921
    i32.const 0
    i32.const 8089
    i32.const 2
    i32.const 7977
    i32.const 921
    i32.const 0
    i32.const 8090
    i32.const 2
    i32.const 7978
    i32.const 921
    i32.const 0
    i32.const 8091
    i32.const 2
    i32.const 7979
    i32.const 921
    i32.const 0
    i32.const 8092
    i32.const 2
    i32.const 7980
    i32.const 921
    i32.const 0
    i32.const 8093
    i32.const 2
    i32.const 7981
    i32.const 921
    i32.const 0
    i32.const 8094
    i32.const 2
    i32.const 7982
    i32.const 921
    i32.const 0
    i32.const 8095
    i32.const 2
    i32.const 7983
    i32.const 921
    i32.const 0
    i32.const 8096
    i32.const 2
    i32.const 8040
    i32.const 921
    i32.const 0
    i32.const 8097
    i32.const 2
    i32.const 8041
    i32.const 921
    i32.const 0
    i32.const 8098
    i32.const 2
    i32.const 8042
    i32.const 921
    i32.const 0
    i32.const 8099
    i32.const 2
    i32.const 8043
    i32.const 921
    i32.const 0
    i32.const 8100
    i32.const 2
    i32.const 8044
    i32.const 921
    i32.const 0
    i32.const 8101
    i32.const 2
    i32.const 8045
    i32.const 921
    i32.const 0
    i32.const 8102
    i32.const 2
    i32.const 8046
    i32.const 921
    i32.const 0
    i32.const 8103
    i32.const 2
    i32.const 8047
    i32.const 921
    i32.const 0
    i32.const 8104
    i32.const 2
    i32.const 8040
    i32.const 921
    i32.const 0
    i32.const 8105
    i32.const 2
    i32.const 8041
    i32.const 921
    i32.const 0
    i32.const 8106
    i32.const 2
    i32.const 8042
    i32.const 921
    i32.const 0
    i32.const 8107
    i32.const 2
    i32.const 8043
    i32.const 921
    i32.const 0
    i32.const 8108
    i32.const 2
    i32.const 8044
    i32.const 921
    i32.const 0
    i32.const 8109
    i32.const 2
    i32.const 8045
    i32.const 921
    i32.const 0
    i32.const 8110
    i32.const 2
    i32.const 8046
    i32.const 921
    i32.const 0
    i32.const 8111
    i32.const 2
    i32.const 8047
    i32.const 921
    i32.const 0
    i32.const 8114
    i32.const 2
    i32.const 8122
    i32.const 921
    i32.const 0
    i32.const 8115
    i32.const 2
    i32.const 913
    i32.const 921
    i32.const 0
    i32.const 8116
    i32.const 2
    i32.const 902
    i32.const 921
    i32.const 0
    i32.const 8118
    i32.const 2
    i32.const 913
    i32.const 834
    i32.const 0
    i32.const 8119
    i32.const 3
    i32.const 913
    i32.const 834
    i32.const 921
    i32.const 8124
    i32.const 2
    i32.const 913
    i32.const 921
    i32.const 0
    i32.const 8130
    i32.const 2
    i32.const 8138
    i32.const 921
    i32.const 0
    i32.const 8131
    i32.const 2
    i32.const 919
    i32.const 921
    i32.const 0
    i32.const 8132
    i32.const 2
    i32.const 905
    i32.const 921
    i32.const 0
    i32.const 8134
    i32.const 2
    i32.const 919
    i32.const 834
    i32.const 0
    i32.const 8135
    i32.const 3
    i32.const 919
    i32.const 834
    i32.const 921
    i32.const 8140
    i32.const 2
    i32.const 919
    i32.const 921
    i32.const 0
    i32.const 8146
    i32.const 3
    i32.const 921
    i32.const 776
    i32.const 768
    i32.const 8147
    i32.const 3
    i32.const 921
    i32.const 776
    i32.const 769
    i32.const 8150
    i32.const 2
    i32.const 921
    i32.const 834
    i32.const 0
    i32.const 8151
    i32.const 3
    i32.const 921
    i32.const 776
    i32.const 834
    i32.const 8162
    i32.const 3
    i32.const 933
    i32.const 776
    i32.const 768
    i32.const 8163
    i32.const 3
    i32.const 933
    i32.const 776
    i32.const 769
    i32.const 8164
    i32.const 2
    i32.const 929
    i32.const 787
    i32.const 0
    i32.const 8166
    i32.const 2
    i32.const 933
    i32.const 834
    i32.const 0
    i32.const 8167
    i32.const 3
    i32.const 933
    i32.const 776
    i32.const 834
    i32.const 8178
    i32.const 2
    i32.const 8186
    i32.const 921
    i32.const 0
    i32.const 8179
    i32.const 2
    i32.const 937
    i32.const 921
    i32.const 0
    i32.const 8180
    i32.const 2
    i32.const 911
    i32.const 921
    i32.const 0
    i32.const 8182
    i32.const 2
    i32.const 937
    i32.const 834
    i32.const 0
    i32.const 8183
    i32.const 3
    i32.const 937
    i32.const 834
    i32.const 921
    i32.const 8188
    i32.const 2
    i32.const 937
    i32.const 921
    i32.const 0
    i32.const 64256
    i32.const 2
    i32.const 70
    i32.const 70
    i32.const 0
    i32.const 64257
    i32.const 2
    i32.const 70
    i32.const 73
    i32.const 0
    i32.const 64258
    i32.const 2
    i32.const 70
    i32.const 76
    i32.const 0
    i32.const 64259
    i32.const 3
    i32.const 70
    i32.const 70
    i32.const 73
    i32.const 64260
    i32.const 3
    i32.const 70
    i32.const 70
    i32.const 76
    i32.const 64261
    i32.const 2
    i32.const 83
    i32.const 84
    i32.const 0
    i32.const 64262
    i32.const 2
    i32.const 83
    i32.const 84
    i32.const 0
    i32.const 64275
    i32.const 2
    i32.const 1348
    i32.const 1350
    i32.const 0
    i32.const 64276
    i32.const 2
    i32.const 1348
    i32.const 1333
    i32.const 0
    i32.const 64277
    i32.const 2
    i32.const 1348
    i32.const 1339
    i32.const 0
    i32.const 64278
    i32.const 2
    i32.const 1358
    i32.const 1350
    i32.const 0
    i32.const 64279
    i32.const 2
    i32.const 1348
    i32.const 1341
    i32.const 0
    array.new_fixed 29 510
    local.tee 5
    array.len
    i32.const 5
    i32.div_u
    local.set 6
    i32.const 0
    local.set 9
    i32.const 0
    local.set 7
    (block
      (loop
        local.get 7
        local.get 1
        i32.ge_u
        br_if 1
        local.get 2
        local.get 3
        local.get 7
        i32.add
        array.get_u 5
        local.set 8
        i32.const -1
        local.set 11
        i32.const 0
        local.set 15
        (block
          (loop
            local.get 15
            local.get 6
            i32.ge_u
            br_if 1
            local.get 5
            local.get 15
            i32.const 5
            i32.mul
            array.get 29
            local.get 8
            i32.eq
            (if
              (then
              local.get 15
              i32.const 5
              i32.mul
              local.set 11
              br 2
              )
            )
            local.get 15
            i32.const 1
            i32.add
            local.set 15
            br 0
          )
        )
        local.get 9
        local.get 11
        i32.const 0
        i32.ge_s
        (if (result i32)
          (then
          local.get 5
          local.get 11
          i32.const 1
          i32.add
          array.get 29
          )
          (else
          i32.const 1
          )
        )
        i32.add
        local.set 9
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        br 0
      )
    )
    local.get 9
    array.new_default 5
    local.set 10
    i32.const 0
    local.set 7
    i32.const 0
    local.set 13
    (block
      (loop
        local.get 7
        local.get 1
        i32.ge_u
        br_if 1
        local.get 2
        local.get 3
        local.get 7
        i32.add
        array.get_u 5
        local.set 8
        i32.const -1
        local.set 11
        i32.const 0
        local.set 15
        (block
          (loop
            local.get 15
            local.get 6
            i32.ge_u
            br_if 1
            local.get 5
            local.get 15
            i32.const 5
            i32.mul
            array.get 29
            local.get 8
            i32.eq
            (if
              (then
              local.get 15
              i32.const 5
              i32.mul
              local.set 11
              br 2
              )
            )
            local.get 15
            i32.const 1
            i32.add
            local.set 15
            br 0
          )
        )
        local.get 11
        i32.const 0
        i32.ge_s
        (if
          (then
          local.get 11
          local.set 12
          local.get 5
          local.get 12
          i32.const 1
          i32.add
          array.get 29
          local.set 8
          i32.const 0
          local.set 9
          (block
            (loop
              local.get 9
              local.get 8
              i32.ge_u
              br_if 1
              local.get 10
              local.get 13
              local.get 5
              local.get 12
              i32.const 2
              i32.add
              local.get 9
              i32.add
              array.get 29
              array.set 5
              local.get 13
              i32.const 1
              i32.add
              local.set 13
              local.get 9
              i32.const 1
              i32.add
              local.set 9
              br 0
            )
          )
          )
          (else
          local.get 10
          local.get 13
          local.get 8
          local.get 4
          call 27
          array.set 5
          local.get 13
          i32.const 1
          i32.add
          local.set 13
          )
        )
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        br 0
      )
    )
    local.get 13
    i32.const 0
    local.get 10
    struct.new 7
  )
  (func $__str_toLowerCase_uni (type 27)
    (local $len i32)
    (local $data (ref null 5))
    (local $off i32)
    (local $runs (ref null 29))
    (local $spec (ref null 29))
    (local $specN i32)
    (local $i i32)
    (local $ch i32)
    (local $outLen i32)
    (local $outArr (ref null 5))
    (local $specHit i32)
    (local $specBase i32)
    (local $m i32)
    (local $fs (ref null 7))
    (local $scan i32)
    local.get 0
    call 3
    ref.cast (ref 7)
    local.tee 14
    struct.get 7 0
    local.set 1
    local.get 14
    struct.get 7 1
    local.set 3
    local.get 14
    struct.get 7 2
    local.set 2
    i32.const 65
    i32.const 26
    i32.const 1
    i32.const 32
    i32.const 192
    i32.const 23
    i32.const 1
    i32.const 32
    i32.const 216
    i32.const 7
    i32.const 1
    i32.const 32
    i32.const 256
    i32.const 24
    i32.const 2
    i32.const 1
    i32.const 306
    i32.const 3
    i32.const 2
    i32.const 1
    i32.const 313
    i32.const 8
    i32.const 2
    i32.const 1
    i32.const 330
    i32.const 23
    i32.const 2
    i32.const 1
    i32.const 376
    i32.const 1
    i32.const 1
    i32.const -121
    i32.const 377
    i32.const 3
    i32.const 2
    i32.const 1
    i32.const 385
    i32.const 1
    i32.const 1
    i32.const 210
    i32.const 386
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 390
    i32.const 1
    i32.const 1
    i32.const 206
    i32.const 391
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 393
    i32.const 2
    i32.const 1
    i32.const 205
    i32.const 395
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 398
    i32.const 1
    i32.const 1
    i32.const 79
    i32.const 399
    i32.const 1
    i32.const 1
    i32.const 202
    i32.const 400
    i32.const 1
    i32.const 1
    i32.const 203
    i32.const 401
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 403
    i32.const 1
    i32.const 1
    i32.const 205
    i32.const 404
    i32.const 1
    i32.const 1
    i32.const 207
    i32.const 406
    i32.const 1
    i32.const 1
    i32.const 211
    i32.const 407
    i32.const 1
    i32.const 1
    i32.const 209
    i32.const 408
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 412
    i32.const 1
    i32.const 1
    i32.const 211
    i32.const 413
    i32.const 1
    i32.const 1
    i32.const 213
    i32.const 415
    i32.const 1
    i32.const 1
    i32.const 214
    i32.const 416
    i32.const 3
    i32.const 2
    i32.const 1
    i32.const 422
    i32.const 1
    i32.const 1
    i32.const 218
    i32.const 423
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 425
    i32.const 1
    i32.const 1
    i32.const 218
    i32.const 428
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 430
    i32.const 1
    i32.const 1
    i32.const 218
    i32.const 431
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 433
    i32.const 2
    i32.const 1
    i32.const 217
    i32.const 435
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 439
    i32.const 1
    i32.const 1
    i32.const 219
    i32.const 440
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 444
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 452
    i32.const 1
    i32.const 1
    i32.const 2
    i32.const 453
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 455
    i32.const 1
    i32.const 1
    i32.const 2
    i32.const 456
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 458
    i32.const 1
    i32.const 1
    i32.const 2
    i32.const 459
    i32.const 9
    i32.const 2
    i32.const 1
    i32.const 478
    i32.const 9
    i32.const 2
    i32.const 1
    i32.const 497
    i32.const 1
    i32.const 1
    i32.const 2
    i32.const 498
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 502
    i32.const 1
    i32.const 1
    i32.const -97
    i32.const 503
    i32.const 1
    i32.const 1
    i32.const -56
    i32.const 504
    i32.const 20
    i32.const 2
    i32.const 1
    i32.const 544
    i32.const 1
    i32.const 1
    i32.const -130
    i32.const 546
    i32.const 9
    i32.const 2
    i32.const 1
    i32.const 570
    i32.const 1
    i32.const 1
    i32.const 10795
    i32.const 571
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 573
    i32.const 1
    i32.const 1
    i32.const -163
    i32.const 574
    i32.const 1
    i32.const 1
    i32.const 10792
    i32.const 577
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 579
    i32.const 1
    i32.const 1
    i32.const -195
    i32.const 580
    i32.const 1
    i32.const 1
    i32.const 69
    i32.const 581
    i32.const 1
    i32.const 1
    i32.const 71
    i32.const 582
    i32.const 5
    i32.const 2
    i32.const 1
    i32.const 880
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 886
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 895
    i32.const 1
    i32.const 1
    i32.const 116
    i32.const 902
    i32.const 1
    i32.const 1
    i32.const 38
    i32.const 904
    i32.const 3
    i32.const 1
    i32.const 37
    i32.const 908
    i32.const 1
    i32.const 1
    i32.const 64
    i32.const 910
    i32.const 2
    i32.const 1
    i32.const 63
    i32.const 913
    i32.const 17
    i32.const 1
    i32.const 32
    i32.const 931
    i32.const 9
    i32.const 1
    i32.const 32
    i32.const 975
    i32.const 1
    i32.const 1
    i32.const 8
    i32.const 984
    i32.const 12
    i32.const 2
    i32.const 1
    i32.const 1012
    i32.const 1
    i32.const 1
    i32.const -60
    i32.const 1015
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 1017
    i32.const 1
    i32.const 1
    i32.const -7
    i32.const 1018
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 1021
    i32.const 3
    i32.const 1
    i32.const -130
    i32.const 1024
    i32.const 16
    i32.const 1
    i32.const 80
    i32.const 1040
    i32.const 32
    i32.const 1
    i32.const 32
    i32.const 1120
    i32.const 17
    i32.const 2
    i32.const 1
    i32.const 1162
    i32.const 27
    i32.const 2
    i32.const 1
    i32.const 1216
    i32.const 1
    i32.const 1
    i32.const 15
    i32.const 1217
    i32.const 7
    i32.const 2
    i32.const 1
    i32.const 1232
    i32.const 48
    i32.const 2
    i32.const 1
    i32.const 1329
    i32.const 38
    i32.const 1
    i32.const 48
    i32.const 4256
    i32.const 38
    i32.const 1
    i32.const 7264
    i32.const 4295
    i32.const 1
    i32.const 1
    i32.const 7264
    i32.const 4301
    i32.const 1
    i32.const 1
    i32.const 7264
    i32.const 5024
    i32.const 80
    i32.const 1
    i32.const 38864
    i32.const 5104
    i32.const 6
    i32.const 1
    i32.const 8
    i32.const 7305
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 7312
    i32.const 43
    i32.const 1
    i32.const -3008
    i32.const 7357
    i32.const 3
    i32.const 1
    i32.const -3008
    i32.const 7680
    i32.const 75
    i32.const 2
    i32.const 1
    i32.const 7838
    i32.const 1
    i32.const 1
    i32.const -7615
    i32.const 7840
    i32.const 48
    i32.const 2
    i32.const 1
    i32.const 7944
    i32.const 8
    i32.const 1
    i32.const -8
    i32.const 7960
    i32.const 6
    i32.const 1
    i32.const -8
    i32.const 7976
    i32.const 8
    i32.const 1
    i32.const -8
    i32.const 7992
    i32.const 8
    i32.const 1
    i32.const -8
    i32.const 8008
    i32.const 6
    i32.const 1
    i32.const -8
    i32.const 8025
    i32.const 4
    i32.const 2
    i32.const -8
    i32.const 8040
    i32.const 8
    i32.const 1
    i32.const -8
    i32.const 8072
    i32.const 8
    i32.const 1
    i32.const -8
    i32.const 8088
    i32.const 8
    i32.const 1
    i32.const -8
    i32.const 8104
    i32.const 8
    i32.const 1
    i32.const -8
    i32.const 8120
    i32.const 2
    i32.const 1
    i32.const -8
    i32.const 8122
    i32.const 2
    i32.const 1
    i32.const -74
    i32.const 8124
    i32.const 1
    i32.const 1
    i32.const -9
    i32.const 8136
    i32.const 4
    i32.const 1
    i32.const -86
    i32.const 8140
    i32.const 1
    i32.const 1
    i32.const -9
    i32.const 8152
    i32.const 2
    i32.const 1
    i32.const -8
    i32.const 8154
    i32.const 2
    i32.const 1
    i32.const -100
    i32.const 8168
    i32.const 2
    i32.const 1
    i32.const -8
    i32.const 8170
    i32.const 2
    i32.const 1
    i32.const -112
    i32.const 8172
    i32.const 1
    i32.const 1
    i32.const -7
    i32.const 8184
    i32.const 2
    i32.const 1
    i32.const -128
    i32.const 8186
    i32.const 2
    i32.const 1
    i32.const -126
    i32.const 8188
    i32.const 1
    i32.const 1
    i32.const -9
    i32.const 8486
    i32.const 1
    i32.const 1
    i32.const -7517
    i32.const 8490
    i32.const 1
    i32.const 1
    i32.const -8383
    i32.const 8491
    i32.const 1
    i32.const 1
    i32.const -8262
    i32.const 8498
    i32.const 1
    i32.const 1
    i32.const 28
    i32.const 8544
    i32.const 16
    i32.const 1
    i32.const 16
    i32.const 8579
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 9398
    i32.const 26
    i32.const 1
    i32.const 26
    i32.const 11264
    i32.const 48
    i32.const 1
    i32.const 48
    i32.const 11360
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 11362
    i32.const 1
    i32.const 1
    i32.const -10743
    i32.const 11363
    i32.const 1
    i32.const 1
    i32.const -3814
    i32.const 11364
    i32.const 1
    i32.const 1
    i32.const -10727
    i32.const 11367
    i32.const 3
    i32.const 2
    i32.const 1
    i32.const 11373
    i32.const 1
    i32.const 1
    i32.const -10780
    i32.const 11374
    i32.const 1
    i32.const 1
    i32.const -10749
    i32.const 11375
    i32.const 1
    i32.const 1
    i32.const -10783
    i32.const 11376
    i32.const 1
    i32.const 1
    i32.const -10782
    i32.const 11378
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 11381
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 11390
    i32.const 2
    i32.const 1
    i32.const -10815
    i32.const 11392
    i32.const 50
    i32.const 2
    i32.const 1
    i32.const 11499
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 11506
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 42560
    i32.const 23
    i32.const 2
    i32.const 1
    i32.const 42624
    i32.const 14
    i32.const 2
    i32.const 1
    i32.const 42786
    i32.const 7
    i32.const 2
    i32.const 1
    i32.const 42802
    i32.const 31
    i32.const 2
    i32.const 1
    i32.const 42873
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 42877
    i32.const 1
    i32.const 1
    i32.const -35332
    i32.const 42878
    i32.const 5
    i32.const 2
    i32.const 1
    i32.const 42891
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 42893
    i32.const 1
    i32.const 1
    i32.const -42280
    i32.const 42896
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 42902
    i32.const 10
    i32.const 2
    i32.const 1
    i32.const 42922
    i32.const 1
    i32.const 1
    i32.const -42308
    i32.const 42923
    i32.const 1
    i32.const 1
    i32.const -42319
    i32.const 42924
    i32.const 1
    i32.const 1
    i32.const -42315
    i32.const 42925
    i32.const 1
    i32.const 1
    i32.const -42305
    i32.const 42926
    i32.const 1
    i32.const 1
    i32.const -42308
    i32.const 42928
    i32.const 1
    i32.const 1
    i32.const -42258
    i32.const 42929
    i32.const 1
    i32.const 1
    i32.const -42282
    i32.const 42930
    i32.const 1
    i32.const 1
    i32.const -42261
    i32.const 42931
    i32.const 1
    i32.const 1
    i32.const 928
    i32.const 42932
    i32.const 8
    i32.const 2
    i32.const 1
    i32.const 42948
    i32.const 1
    i32.const 1
    i32.const -48
    i32.const 42949
    i32.const 1
    i32.const 1
    i32.const -42307
    i32.const 42950
    i32.const 1
    i32.const 1
    i32.const -35384
    i32.const 42951
    i32.const 2
    i32.const 2
    i32.const 1
    i32.const 42955
    i32.const 1
    i32.const 1
    i32.const -42343
    i32.const 42956
    i32.const 8
    i32.const 2
    i32.const 1
    i32.const 42972
    i32.const 1
    i32.const 1
    i32.const -42561
    i32.const 42997
    i32.const 1
    i32.const 1
    i32.const 1
    i32.const 65313
    i32.const 26
    i32.const 1
    i32.const 32
    array.new_fixed 29 692
    local.set 4
    i32.const 304
    i32.const 2
    i32.const 105
    i32.const 775
    i32.const 0
    array.new_fixed 29 5
    local.tee 5
    array.len
    i32.const 5
    i32.div_u
    local.set 6
    i32.const 0
    local.set 9
    i32.const 0
    local.set 7
    (block
      (loop
        local.get 7
        local.get 1
        i32.ge_u
        br_if 1
        local.get 2
        local.get 3
        local.get 7
        i32.add
        array.get_u 5
        local.set 8
        i32.const -1
        local.set 11
        i32.const 0
        local.set 15
        (block
          (loop
            local.get 15
            local.get 6
            i32.ge_u
            br_if 1
            local.get 5
            local.get 15
            i32.const 5
            i32.mul
            array.get 29
            local.get 8
            i32.eq
            (if
              (then
              local.get 15
              i32.const 5
              i32.mul
              local.set 11
              br 2
              )
            )
            local.get 15
            i32.const 1
            i32.add
            local.set 15
            br 0
          )
        )
        local.get 9
        local.get 11
        i32.const 0
        i32.ge_s
        (if (result i32)
          (then
          local.get 5
          local.get 11
          i32.const 1
          i32.add
          array.get 29
          )
          (else
          i32.const 1
          )
        )
        i32.add
        local.set 9
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        br 0
      )
    )
    local.get 9
    array.new_default 5
    local.set 10
    i32.const 0
    local.set 7
    i32.const 0
    local.set 13
    (block
      (loop
        local.get 7
        local.get 1
        i32.ge_u
        br_if 1
        local.get 2
        local.get 3
        local.get 7
        i32.add
        array.get_u 5
        local.set 8
        i32.const -1
        local.set 11
        i32.const 0
        local.set 15
        (block
          (loop
            local.get 15
            local.get 6
            i32.ge_u
            br_if 1
            local.get 5
            local.get 15
            i32.const 5
            i32.mul
            array.get 29
            local.get 8
            i32.eq
            (if
              (then
              local.get 15
              i32.const 5
              i32.mul
              local.set 11
              br 2
              )
            )
            local.get 15
            i32.const 1
            i32.add
            local.set 15
            br 0
          )
        )
        local.get 11
        i32.const 0
        i32.ge_s
        (if
          (then
          local.get 11
          local.set 12
          local.get 5
          local.get 12
          i32.const 1
          i32.add
          array.get 29
          local.set 8
          i32.const 0
          local.set 9
          (block
            (loop
              local.get 9
              local.get 8
              i32.ge_u
              br_if 1
              local.get 10
              local.get 13
              local.get 5
              local.get 12
              i32.const 2
              i32.add
              local.get 9
              i32.add
              array.get 29
              array.set 5
              local.get 13
              i32.const 1
              i32.add
              local.set 13
              local.get 9
              i32.const 1
              i32.add
              local.set 9
              br 0
            )
          )
          )
          (else
          local.get 10
          local.get 13
          local.get 8
          local.get 4
          call 28
          array.set 5
          local.get 13
          i32.const 1
          i32.add
          local.set 13
          )
        )
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        br 0
      )
    )
    local.get 13
    i32.const 0
    local.get 10
    struct.new 7
  )
  (func $__str_getSubstitution (param (ref null 6) (ref null 6) (ref null 6) (ref null 6)) (result (ref null 6))
    (local $result (ref null 6))
    (local $len i32)
    (local $data (ref null 5))
    (local $off i32)
    (local $i i32)
    (local $segStart i32)
    (local $ch i32)
    (local $next i32)
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 2
    call 3
    ref.cast null (ref null 6)
    local.set 2
    local.get 3
    call 3
    ref.cast null (ref null 6)
    local.set 3
    i32.const 0
    i32.const 0
    i32.const 0
    array.new_default 5
    struct.new 7
    ref.cast null (ref null 6)
    local.set 4
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 5
    local.get 0
    ref.cast (ref 7)
    struct.get 7 2
    local.set 6
    local.get 0
    ref.cast (ref 7)
    struct.get 7 1
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
        array.get_u 5
        local.tee 10
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
          array.get_u 5
          local.tee 11
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
            local.tee 4
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
            local.tee 9
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
              local.tee 4
              ref.as_non_null
              local.get 1
              ref.as_non_null
              call 4
              local.set 4
              local.get 8
              i32.const 2
              i32.add
              local.tee 9
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
                local.tee 4
                ref.as_non_null
                local.get 2
                ref.as_non_null
                call 4
                local.set 4
                local.get 8
                i32.const 2
                i32.add
                local.tee 9
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
                  local.tee 4
                  ref.as_non_null
                  local.get 3
                  ref.as_non_null
                  call 4
                  local.set 4
                  local.get 8
                  i32.const 2
                  i32.add
                  local.tee 9
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
  (func $__str_replace (type 32)
    (local $idx i32)
    (local $searchLen i32)
    (local $prefix (ref null 6))
    (local $suffix (ref null 6))
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 2
    call 3
    ref.cast null (ref null 6)
    local.set 2
    local.get 0
    local.get 1
    i32.const 0
    call 13
    local.tee 3
    i32.const -1
    i32.eq
    (if (result (ref null 6))
      (then
      local.get 0
      )
      (else
      local.get 1
      ref.cast (ref 7)
      struct.get 7 0
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
      call 31
      call 4
      local.get 6
      ref.as_non_null
      call 4
      )
    )
  )
  (func $__str_replaceAll (type 32)
    (local $result (ref null 6))
    (local $pos i32)
    (local $idx i32)
    (local $searchLen i32)
    (local $prefix (ref null 6))
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 2
    call 3
    ref.cast null (ref null 6)
    local.set 2
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
    local.tee 6
    i32.eqz
    (if (result (ref null 6))
      (then
      local.get 0
      ref.cast (ref 7)
      struct.get 7 0
      local.set 5
      i32.const 0
      i32.const 0
      i32.const 0
      array.new_default 5
      struct.new 7
      ref.cast null (ref null 6)
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
      array.new_default 5
      struct.new 7
      ref.cast null (ref null 6)
      local.set 3
      i32.const 0
      local.set 4
      (block
        (loop
          local.get 0
          local.get 1
          local.get 4
          call 13
          local.tee 5
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
          call 31
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
  (func $__str_split (param (ref null 6) (ref null 6) i32) (result (ref null 33))
    (local $sLen i32)
    (local $sepLen i32)
    (local $pos i32)
    (local $idx i32)
    (local $part (ref null 6))
    (local $resultArr (ref null 17))
    (local $resultLen i32)
    (local $resultCap i32)
    (local $newArr (ref null 17))
    local.get 0
    call 3
    ref.cast null (ref null 6)
    local.set 0
    local.get 1
    call 3
    ref.cast null (ref null 6)
    local.set 1
    local.get 2
    i32.eqz
    (if
      (then
      i32.const 0
      i32.const 0
      array.new_default 17
      struct.new 33
      return
      )
    )
    local.get 0
    ref.cast (ref 7)
    struct.get 7 0
    local.set 3
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
    local.set 4
    i32.const 8
    array.new_default 17
    local.set 8
    i32.const 0
    local.set 9
    i32.const 8
    local.set 10
    i32.const 0
    local.set 5
    local.get 4
    i32.eqz
    (if
      (then
      local.get 3
      array.new_default 17
      local.set 8
      local.get 3
      local.set 10
      i32.const 0
      local.set 5
      (block
        (loop
          local.get 5
          local.get 3
          i32.ge_s
          local.get 5
          local.get 2
          i32.ge_u
          i32.or
          br_if 1
          local.get 0
          local.get 5
          local.get 5
          i32.const 1
          i32.add
          call 8
          local.set 7
          local.get 8
          local.get 5
          local.get 7
          array.set 17
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          br 0
        )
      )
      local.get 5
      local.get 8
      ref.as_non_null
      struct.new 33
      return
      )
    )
    (block
      (loop
        local.get 9
        local.get 2
        i32.ge_u
        br_if 1
        local.get 0
        local.get 1
        local.get 5
        call 13
        local.tee 6
        i32.const -1
        i32.eq
        (if
          (then
          local.get 0
          local.get 5
          local.get 3
          call 8
          local.set 7
          local.get 9
          local.get 10
          i32.ge_s
          (if
            (then
            local.get 10
            i32.const 2
            i32.mul
            local.tee 10
            array.new_default 17
            local.tee 11
            i32.const 0
            local.get 8
            i32.const 0
            local.get 9
            array.copy 17 17
            local.get 11
            local.set 8
            )
          )
          local.get 8
          local.get 9
          local.get 7
          array.set 17
          local.get 9
          i32.const 1
          i32.add
          local.set 9
          br 2
          )
        )
        local.get 0
        local.get 5
        local.get 6
        call 8
        local.set 7
        local.get 9
        local.get 10
        i32.ge_s
        (if
          (then
          local.get 10
          i32.const 2
          i32.mul
          local.tee 10
          array.new_default 17
          local.tee 11
          i32.const 0
          local.get 8
          i32.const 0
          local.get 9
          array.copy 17 17
          local.get 11
          local.set 8
          )
        )
        local.get 8
        local.get 9
        local.get 7
        array.set 17
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        local.get 6
        local.get 4
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 9
    local.get 8
    ref.as_non_null
    struct.new 33
  )
  (func $__str_fromCodePoint (type 35)
    local.get 0
    i32.const 65535
    i32.gt_u
    (if (result (ref null 6))
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
      array.new_fixed 5 2
      struct.new 7
      )
      (else
      i32.const 1
      i32.const 0
      local.get 0
      array.new_fixed 5 1
      struct.new 7
      )
    )
  )
  (func $__str_fromCharCode (type 35)
    i32.const 1
    i32.const 0
    local.get 0
    i32.const 65535
    i32.and
    array.new_fixed 5 1
    struct.new 7
  )
  (func $__regex_escape (type 27)
    (local $flat (ref null 7))
    (local $data (ref null 5))
    (local $off i32)
    (local $len i32)
    (local $i i32)
    (local $out (ref null 6))
    (local $cu i32)
    (local $cu2 i32)
    (local $n0 i32)
    (local $n1 i32)
    local.get 0
    call 3
    local.tee 1
    ref.cast (ref 7)
    struct.get 7 2
    local.set 2
    local.get 1
    ref.cast (ref 7)
    struct.get 7 1
    local.set 3
    local.get 1
    ref.cast (ref 7)
    struct.get 7 0
    local.set 4
    i32.const 0
    i32.const 0
    i32.const 0
    array.new_default 5
    struct.new 7
    ref.cast null (ref null 6)
    local.set 6
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_u
        br_if 1
        local.get 2
        local.get 3
        local.get 5
        i32.add
        array.get_u 5
        local.tee 7
        i32.const 55296
        i32.ge_u
        local.get 7
        i32.const 56319
        i32.le_u
        i32.and
        local.get 5
        i32.const 1
        i32.add
        local.get 4
        i32.lt_u
        i32.and
        (if (result i32)
          (then
          local.get 2
          local.get 3
          local.get 5
          i32.add
          i32.const 1
          i32.add
          array.get_u 5
          local.tee 8
          i32.const 56320
          i32.ge_u
          local.get 8
          i32.const 57343
          i32.le_u
          i32.and
          )
          (else
          i32.const 0
          )
        )
        (if
          (then
          local.get 6
          i32.const 2
          i32.const 0
          local.get 7
          local.get 8
          array.new_fixed 5 2
          struct.new 7
          ref.cast null (ref null 6)
          call 4
          local.set 6
          local.get 5
          i32.const 2
          i32.add
          local.set 5
          )
          (else
          local.get 5
          i32.eqz
          local.get 7
          i32.const 48
          i32.ge_u
          local.get 7
          i32.const 57
          i32.le_u
          i32.and
          local.get 7
          i32.const 65
          i32.ge_u
          local.get 7
          i32.const 90
          i32.le_u
          i32.and
          i32.or
          local.get 7
          i32.const 97
          i32.ge_u
          local.get 7
          i32.const 122
          i32.le_u
          i32.and
          i32.or
          i32.and
          (if
            (then
            local.get 6
            i32.const 4
            i32.const 0
            i32.const 92
            i32.const 120
            local.get 7
            i32.const 4
            i32.shr_u
            i32.const 15
            i32.and
            local.tee 9
            i32.const 10
            i32.lt_u
            (if (result i32)
              (then
              local.get 9
              i32.const 48
              i32.add
              )
              (else
              local.get 9
              i32.const 87
              i32.add
              )
            )
            local.get 7
            i32.const 15
            i32.and
            local.tee 9
            i32.const 10
            i32.lt_u
            (if (result i32)
              (then
              local.get 9
              i32.const 48
              i32.add
              )
              (else
              local.get 9
              i32.const 87
              i32.add
              )
            )
            array.new_fixed 5 4
            struct.new 7
            ref.cast null (ref null 6)
            call 4
            local.set 6
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            )
            (else
            local.get 7
            i32.const 94
            i32.eq
            local.get 7
            i32.const 36
            i32.eq
            i32.or
            local.get 7
            i32.const 92
            i32.eq
            i32.or
            local.get 7
            i32.const 46
            i32.eq
            i32.or
            local.get 7
            i32.const 42
            i32.eq
            i32.or
            local.get 7
            i32.const 43
            i32.eq
            i32.or
            local.get 7
            i32.const 63
            i32.eq
            i32.or
            local.get 7
            i32.const 40
            i32.eq
            i32.or
            local.get 7
            i32.const 41
            i32.eq
            i32.or
            local.get 7
            i32.const 91
            i32.eq
            i32.or
            local.get 7
            i32.const 93
            i32.eq
            i32.or
            local.get 7
            i32.const 123
            i32.eq
            i32.or
            local.get 7
            i32.const 125
            i32.eq
            i32.or
            local.get 7
            i32.const 124
            i32.eq
            i32.or
            local.get 7
            i32.const 47
            i32.eq
            i32.or
            (if
              (then
              local.get 6
              i32.const 2
              i32.const 0
              i32.const 92
              local.get 7
              array.new_fixed 5 2
              struct.new 7
              ref.cast null (ref null 6)
              call 4
              local.set 6
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              )
              (else
              local.get 7
              i32.const 9
              i32.ge_u
              local.get 7
              i32.const 13
              i32.le_u
              i32.and
              (if
                (then
                local.get 7
                i32.const 9
                i32.eq
                (if (result i32)
                  (then
                  i32.const 116
                  )
                  (else
                  local.get 7
                  i32.const 10
                  i32.eq
                  (if (result i32)
                    (then
                    i32.const 110
                    )
                    (else
                    local.get 7
                    i32.const 11
                    i32.eq
                    (if (result i32)
                      (then
                      i32.const 118
                      )
                      (else
                      local.get 7
                      i32.const 12
                      i32.eq
                      (if (result i32)
                        (then
                        i32.const 102
                        )
                        (else
                        i32.const 114
                        )
                      )
                      )
                    )
                    )
                  )
                  )
                )
                local.set 10
                local.get 6
                i32.const 2
                i32.const 0
                i32.const 92
                local.get 10
                array.new_fixed 5 2
                struct.new 7
                ref.cast null (ref null 6)
                call 4
                local.set 6
                local.get 5
                i32.const 1
                i32.add
                local.set 5
                )
                (else
                local.get 7
                i32.const 44
                i32.eq
                local.get 7
                i32.const 45
                i32.eq
                local.get 7
                i32.const 61
                i32.eq
                local.get 7
                i32.const 60
                i32.eq
                local.get 7
                i32.const 62
                i32.eq
                local.get 7
                i32.const 35
                i32.eq
                local.get 7
                i32.const 38
                i32.eq
                local.get 7
                i32.const 33
                i32.eq
                local.get 7
                i32.const 37
                i32.eq
                local.get 7
                i32.const 58
                i32.eq
                local.get 7
                i32.const 59
                i32.eq
                local.get 7
                i32.const 64
                i32.eq
                local.get 7
                i32.const 126
                i32.eq
                local.get 7
                i32.const 39
                i32.eq
                local.get 7
                i32.const 96
                i32.eq
                local.get 7
                i32.const 34
                i32.eq
                local.get 7
                i32.const 32
                i32.eq
                local.get 7
                i32.const 160
                i32.eq
                local.get 7
                i32.const 5760
                i32.eq
                local.get 7
                i32.const 8239
                i32.eq
                local.get 7
                i32.const 8287
                i32.eq
                local.get 7
                i32.const 12288
                i32.eq
                local.get 7
                i32.const 65279
                i32.eq
                local.get 7
                i32.const 8232
                i32.eq
                local.get 7
                i32.const 8233
                i32.eq
                local.get 7
                i32.const 8192
                i32.ge_u
                local.get 7
                i32.const 8202
                i32.le_u
                i32.and
                local.get 7
                i32.const 55296
                i32.ge_u
                local.get 7
                i32.const 57343
                i32.le_u
                i32.and
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                i32.or
                (if
                  (then
                  local.get 7
                  i32.const 255
                  i32.le_u
                  (if
                    (then
                    local.get 6
                    i32.const 4
                    i32.const 0
                    i32.const 92
                    i32.const 120
                    local.get 7
                    i32.const 4
                    i32.shr_u
                    i32.const 15
                    i32.and
                    local.tee 9
                    i32.const 10
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 9
                      i32.const 48
                      i32.add
                      )
                      (else
                      local.get 9
                      i32.const 87
                      i32.add
                      )
                    )
                    local.get 7
                    i32.const 15
                    i32.and
                    local.tee 9
                    i32.const 10
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 9
                      i32.const 48
                      i32.add
                      )
                      (else
                      local.get 9
                      i32.const 87
                      i32.add
                      )
                    )
                    array.new_fixed 5 4
                    struct.new 7
                    ref.cast null (ref null 6)
                    call 4
                    local.set 6
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 5
                    )
                    (else
                    local.get 6
                    i32.const 6
                    i32.const 0
                    i32.const 92
                    i32.const 117
                    local.get 7
                    i32.const 12
                    i32.shr_u
                    i32.const 15
                    i32.and
                    local.tee 9
                    i32.const 10
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 9
                      i32.const 48
                      i32.add
                      )
                      (else
                      local.get 9
                      i32.const 87
                      i32.add
                      )
                    )
                    local.get 7
                    i32.const 8
                    i32.shr_u
                    i32.const 15
                    i32.and
                    local.tee 9
                    i32.const 10
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 9
                      i32.const 48
                      i32.add
                      )
                      (else
                      local.get 9
                      i32.const 87
                      i32.add
                      )
                    )
                    local.get 7
                    i32.const 4
                    i32.shr_u
                    i32.const 15
                    i32.and
                    local.tee 9
                    i32.const 10
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 9
                      i32.const 48
                      i32.add
                      )
                      (else
                      local.get 9
                      i32.const 87
                      i32.add
                      )
                    )
                    local.get 7
                    i32.const 15
                    i32.and
                    local.tee 9
                    i32.const 10
                    i32.lt_u
                    (if (result i32)
                      (then
                      local.get 9
                      i32.const 48
                      i32.add
                      )
                      (else
                      local.get 9
                      i32.const 87
                      i32.add
                      )
                    )
                    array.new_fixed 5 6
                    struct.new 7
                    ref.cast null (ref null 6)
                    call 4
                    local.set 6
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 5
                    )
                  )
                  )
                  (else
                  local.get 6
                  i32.const 1
                  i32.const 0
                  local.get 7
                  array.new_fixed 5 1
                  struct.new 7
                  ref.cast null (ref null 6)
                  call 4
                  local.set 6
                  local.get 5
                  i32.const 1
                  i32.add
                  local.set 5
                  )
                )
                )
              )
              )
            )
            )
          )
          )
        )
        br 0
      )
    )
    local.get 6
  )
  (func $__wasi_write_string (param i32 i32)
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
  (func $readExact (param f64) (result (ref null 37))
    (local $buf (ref null 37))
    (local $got f64)
    (local $__ta_size_2 i32)
    (local $r externref)
    (local $__deno_fd_4 i32)
    (local $__deno_nread_5 i32)
    (local $__nodefs_vec_6 (ref null 37))
    (local $__nodefs_buflen_7 i32)
    (local $__nodefs_arr_8 (ref null 10))
    (local $__nodefs_pages_9 i32)
    (local $__deno_rscratch_10 i32)
    (local $__deno_off0_11 i32)
    (local $__nodefs_j_12 i32)
    (local $tmp (ref null 37))
    (local $__ta_size_14 i32)
    (local $r externref)
    (local $__deno_fd_16 i32)
    (local $__deno_nread_17 i32)
    (local $__nodefs_vec_18 (ref null 37))
    (local $__nodefs_buflen_19 i32)
    (local $__nodefs_arr_20 (ref null 10))
    (local $__nodefs_pages_21 i32)
    (local $__deno_rscratch_22 i32)
    (local $__deno_off0_23 i32)
    (local $__nodefs_j_24 i32)
    (local $i f64)
    (local $__vec_26 (ref null 37))
    (local $__idx_27 i32)
    (local $__bounds_idx_28 i32)
    (local $__bounds_arr_29 (ref null 10))
    (local $__val_30 i32)
    (local $__vec_data_31 (ref null 10))
    (local $__vec_ncap_32 i32)
    (local $__vec_ndata_33 (ref null 10))
    (local $__vec_ocap_34 i32)
    local.get 0
    i32.trunc_sat_f64_s
    local.tee 3
    local.get 3
    array.new_default 10
    struct.new 37
    local.set 1
    f64.const 0
    local.set 2
    (block
      (loop
        local.get 2
        local.get 0
        f64.lt
        i32.eqz
        br_if 1
        (block
          local.get 2
          f64.const 0
          f64.eq
          (if
            (then
            i32.const 0
            local.set 5
            local.get 1
            ref.as_non_null
            local.tee 7
            struct.get 37 0
            local.set 8
            local.get 7
            struct.get 37 1
            local.set 9
            i32.const 65536
            local.get 8
            i32.add
            i32.const 65535
            i32.add
            i32.const 16
            i32.shr_u
            local.tee 10
            memory.size
            i32.gt_u
            (if
              (then
              local.get 10
              memory.size
              i32.sub
              memory.grow
              drop
              )
            )
            i32.const 65536
            local.set 11
            i32.const 340
            local.get 11
            i32.store offset=0 align=4
            i32.const 344
            local.get 8
            i32.store offset=0 align=4
            local.get 5
            i32.const 340
            i32.const 1
            i32.const 348
            call 1
            (if (result i32)
              (then
              i32.const 0
              )
              (else
              i32.const 348
              i32.load offset=0 align=4
              )
            )
            local.set 6
            i32.const 0
            local.set 12
            i32.const 0
            local.set 13
            (block
              (loop
                local.get 13
                local.get 6
                i32.ge_s
                br_if 1
                local.get 9
                local.get 12
                local.get 13
                i32.add
                i32.const 65536
                local.get 13
                i32.add
                i32.load8_u offset=0 align=1
                array.set 10
                local.get 13
                i32.const 1
                i32.add
                local.set 13
                br 0
              )
            )
            local.get 6
            i32.const 0
            i32.gt_s
            (if (result externref)
              (then
              local.get 6
              f64.convert_i32_s
              call 44
              )
              (else
              ref.null extern
              )
            )
            local.tee 4
            ref.is_null
            (if
              (then
              ref.null 37
              return
              )
            )
            local.get 2
            local.get 4
            call 45
            f64.add
            local.set 2
            )
            (else
            local.get 0
            local.get 2
            f64.sub
            i32.trunc_sat_f64_s
            local.tee 15
            local.get 15
            array.new_default 10
            struct.new 37
            local.set 14
            i32.const 0
            local.set 17
            local.get 14
            ref.as_non_null
            local.tee 19
            struct.get 37 0
            local.set 20
            local.get 19
            struct.get 37 1
            local.set 21
            i32.const 65536
            local.get 20
            i32.add
            i32.const 65535
            i32.add
            i32.const 16
            i32.shr_u
            local.tee 22
            memory.size
            i32.gt_u
            (if
              (then
              local.get 22
              memory.size
              i32.sub
              memory.grow
              drop
              )
            )
            i32.const 65536
            local.set 23
            i32.const 340
            local.get 23
            i32.store offset=0 align=4
            i32.const 344
            local.get 20
            i32.store offset=0 align=4
            local.get 17
            i32.const 340
            i32.const 1
            i32.const 348
            call 1
            (if (result i32)
              (then
              i32.const 0
              )
              (else
              i32.const 348
              i32.load offset=0 align=4
              )
            )
            local.set 18
            i32.const 0
            local.set 24
            i32.const 0
            local.set 25
            (block
              (loop
                local.get 25
                local.get 18
                i32.ge_s
                br_if 1
                local.get 21
                local.get 24
                local.get 25
                i32.add
                i32.const 65536
                local.get 25
                i32.add
                i32.load8_u offset=0 align=1
                array.set 10
                local.get 25
                i32.const 1
                i32.add
                local.set 25
                br 0
              )
            )
            local.get 18
            i32.const 0
            i32.gt_s
            (if (result externref)
              (then
              local.get 18
              f64.convert_i32_s
              call 44
              )
              (else
              ref.null extern
              )
            )
            local.tee 16
            ref.is_null
            (if
              (then
              ref.null 37
              return
              )
            )
            f64.const 0
            local.set 26
            (block
              (loop
                local.get 26
                local.get 16
                call 45
                f64.lt
                i32.eqz
                br_if 1
                (block
                  local.get 1
                  local.set 27
                  local.get 2
                  local.get 26
                  f64.add
                  i32.trunc_sat_f64_s
                  local.set 28
                  local.get 14
                  struct.get 37 1
                  local.get 26
                  i32.trunc_sat_f64_s
                  local.set 29
                  local.set 30
                  local.get 29
                  local.get 30
                  array.len
                  i32.lt_u
                  (if (result i32)
                    (then
                    local.get 30
                    local.get 29
                    array.get_u 10
                    )
                    (else
                    i32.const 0
                    )
                  )
                  local.set 31
                  local.get 27
                  struct.get 37 1
                  local.set 32
                  local.get 28
                  local.get 32
                  array.len
                  i32.ge_s
                  (if
                    (then
                    local.get 32
                    array.len
                    local.set 35
                    local.get 28
                    i32.const 1
                    i32.add
                    local.set 33
                    local.get 35
                    i32.const 1
                    i32.shl
                    local.get 33
                    i32.gt_s
                    (if
                      (then
                      local.get 35
                      i32.const 1
                      i32.shl
                      local.set 33
                      )
                    )
                    i32.const 4
                    local.get 33
                    i32.gt_s
                    (if
                      (then
                      i32.const 4
                      local.set 33
                      )
                    )
                    local.get 33
                    array.new_default 10
                    local.tee 34
                    i32.const 0
                    local.get 32
                    i32.const 0
                    local.get 35
                    array.copy 10 10
                    local.get 27
                    local.get 34
                    ref.as_non_null
                    struct.set 37 1
                    local.get 34
                    local.set 32
                    )
                  )
                  local.get 32
                  local.get 28
                  local.get 31
                  array.set 10
                  local.get 28
                  i32.const 1
                  i32.add
                  local.get 27
                  struct.get 37 0
                  i32.gt_s
                  (if
                    (then
                    local.get 27
                    local.get 28
                    i32.const 1
                    i32.add
                    struct.set 37 0
                    )
                  )
                  local.get 26
                  f64.const 1
                  f64.add
                  local.set 26
                )
                br 0
              )
            )
            local.get 2
            local.get 16
            call 45
            f64.add
            local.set 2
            )
          )
        )
        br 0
      )
    )
    local.get 1
    return
  )
  (func $writeFull (param (ref null 37))
    (local $buf (ref null 37))
    (local $w f64)
    (local $__deno_fd_2 i32)
    (local $__nodefs_vec_3 (ref null 37))
    (local $__nodefs_buflen_4 i32)
    (local $__nodefs_arr_5 (ref null 10))
    (local $__nodefs_pages_6 i32)
    (local $__deno_off0_7 i32)
    (local $__nodefs_wj_8 i32)
    (local $__deno_wscratch_9 i32)
    (local $rest (ref null 37))
    (local $__ta_size_11 i32)
    (local $i f64)
    (local $__vec_13 (ref null 37))
    (local $__idx_14 i32)
    (local $__tmp_15 (ref null 37))
    (local $__bounds_idx_16 i32)
    (local $__bounds_arr_17 (ref null 10))
    (local $__val_18 i32)
    (local $__vec_data_19 (ref null 10))
    (local $__vec_ncap_20 i32)
    (local $__vec_ndata_21 (ref null 10))
    (local $__vec_ocap_22 i32)
    local.get 0
    local.set 1
    (block
      (loop
        local.get 1
        struct.get 37 0
        f64.convert_i32_s
        f64.const 0
        f64.gt
        i32.eqz
        br_if 1
        (block
          i32.const 1
          local.set 3
          local.get 1
          ref.as_non_null
          local.tee 4
          struct.get 37 0
          local.set 5
          local.get 4
          struct.get 37 1
          local.set 6
          i32.const 131072
          local.get 5
          i32.add
          i32.const 65535
          i32.add
          i32.const 16
          i32.shr_u
          local.tee 7
          memory.size
          i32.gt_u
          (if
            (then
            local.get 7
            memory.size
            i32.sub
            memory.grow
            drop
            )
          )
          i32.const 0
          local.set 8
          i32.const 0
          local.set 9
          (block
            (loop
              local.get 9
              local.get 5
              i32.ge_s
              br_if 1
              i32.const 131072
              local.get 9
              i32.add
              local.get 6
              local.get 8
              local.get 9
              i32.add
              array.get_u 10
              i32.store8 offset=0 align=1
              local.get 9
              i32.const 1
              i32.add
              local.set 9
              br 0
            )
          )
          i32.const 131072
          local.set 10
          i32.const 0
          local.get 10
          i32.store offset=0 align=4
          i32.const 4
          local.get 5
          i32.store offset=0 align=4
          local.get 3
          i32.const 0
          i32.const 1
          i32.const 8
          call 0
          (if (result i32)
            (then
            i32.const 0
            )
            (else
            i32.const 8
            i32.load offset=0 align=4
            )
          )
          f64.convert_i32_s
          local.tee 2
          f64.const 0
          f64.le
          (if
            (then
            return
            )
          )
          local.get 2
          local.get 1
          struct.get 37 0
          f64.convert_i32_s
          f64.ge
          (if
            (then
            return
            )
          )
          local.get 1
          struct.get 37 0
          f64.convert_i32_s
          local.get 2
          f64.sub
          i32.trunc_sat_f64_s
          local.tee 12
          local.get 12
          array.new_default 10
          struct.new 37
          local.set 11
          f64.const 0
          local.set 13
          (block
            (loop
              local.get 13
              local.get 11
              struct.get 37 0
              f64.convert_i32_s
              f64.lt
              i32.eqz
              br_if 1
              (block
                local.get 11
                local.set 14
                local.get 13
                i32.trunc_sat_f64_s
                local.set 15
                local.get 1
                local.tee 16
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
                  i32.const 57
                  i32.const 49
                  i32.const 58
                  i32.const 49
                  i32.const 55
                  array.new_fixed 5 63
                  struct.new 7
                  extern.convert_any
                  throw 0
                  )
                )
                local.get 16
                struct.get 37 1
                local.get 2
                local.get 13
                f64.add
                i32.trunc_sat_f64_s
                local.set 17
                local.set 18
                local.get 17
                local.get 18
                array.len
                i32.lt_u
                (if (result i32)
                  (then
                  local.get 18
                  local.get 17
                  array.get_u 10
                  )
                  (else
                  i32.const 0
                  )
                )
                local.set 19
                local.get 14
                struct.get 37 1
                local.set 20
                local.get 15
                local.get 20
                array.len
                i32.ge_s
                (if
                  (then
                  local.get 20
                  array.len
                  local.set 23
                  local.get 15
                  i32.const 1
                  i32.add
                  local.set 21
                  local.get 23
                  i32.const 1
                  i32.shl
                  local.get 21
                  i32.gt_s
                  (if
                    (then
                    local.get 23
                    i32.const 1
                    i32.shl
                    local.set 21
                    )
                  )
                  i32.const 4
                  local.get 21
                  i32.gt_s
                  (if
                    (then
                    i32.const 4
                    local.set 21
                    )
                  )
                  local.get 21
                  array.new_default 10
                  local.tee 22
                  i32.const 0
                  local.get 20
                  i32.const 0
                  local.get 23
                  array.copy 10 10
                  local.get 14
                  local.get 22
                  ref.as_non_null
                  struct.set 37 1
                  local.get 22
                  local.set 20
                  )
                )
                local.get 20
                local.get 15
                local.get 19
                array.set 10
                local.get 15
                i32.const 1
                i32.add
                local.get 14
                struct.get 37 0
                i32.gt_s
                (if
                  (then
                  local.get 14
                  local.get 15
                  i32.const 1
                  i32.add
                  struct.set 37 0
                  )
                )
                local.get 13
                f64.const 1
                f64.add
                local.set 13
              )
              br 0
            )
          )
          local.get 11
          local.set 1
        )
        br 0
      )
    )
  )
  (func $decodeLength (param (ref null 37)) (result f64)
    (local $__tmp_0 (ref null 37))
    (local $__bounds_idx_1 i32)
    (local $__bounds_arr_2 (ref null 10))
    (local $__bounds_idx_3 i32)
    (local $__bounds_arr_4 (ref null 10))
    (local $__bounds_idx_5 i32)
    (local $__bounds_arr_6 (ref null 10))
    (local $__bounds_idx_7 i32)
    (local $__bounds_arr_8 (ref null 10))
    local.get 0
    local.tee 1
    ref.is_null
    (if
      (then
      i32.const 64
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
      i32.const 49
      i32.const 48
      i32.const 48
      i32.const 58
      i32.const 49
      i32.const 48
      array.new_fixed 5 64
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 37 1
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
      array.get_u 10
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
      i32.const 64
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
      i32.const 49
      i32.const 48
      i32.const 48
      i32.const 58
      i32.const 50
      i32.const 50
      array.new_fixed 5 64
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 37 1
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
      array.get_u 10
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
      i32.const 64
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
      i32.const 49
      i32.const 48
      i32.const 48
      i32.const 58
      i32.const 52
      i32.const 48
      array.new_fixed 5 64
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 37 1
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
      array.get_u 10
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
      i32.const 64
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
      i32.const 49
      i32.const 48
      i32.const 48
      i32.const 58
      i32.const 54
      i32.const 48
      array.new_fixed 5 64
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 37 1
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
      array.get_u 10
      )
      (else
      i32.const 0
      )
    )
    f64.convert_i32_s
    f64.const 16777216
    f64.mul
    f64.add
    return
  )
  (func $main (type 41)
    (local $header (ref null 37))
    (local $declaredLen f64)
    (local $remaining f64)
    (local $run f64)
    (local $chunk (ref null 37))
    call 65
    (block
      (loop
        i32.const 1
        i32.eqz
        br_if 1
        (block
          f64.const 4
          call 39
          local.tee 0
          ref.is_null
          (if
            (then
            return
            )
          )
          local.get 0
          call 41
          local.tee 1
          f64.const 0
          f64.eq
          (if
            (then
            return
            )
          )
          local.get 0
          call 40
          local.get 1
          local.set 2
          (block
            (loop
              local.get 2
              f64.const 0
              f64.gt
              i32.eqz
              br_if 1
              (block
                global.get 4
                i32.eqz
                (if
                  (then
                  ref.null extern
                  throw 0
                  )
                )
                global.get 2
                local.set 3
                local.get 2
                local.get 3
                f64.lt
                (if
                  (then
                  local.get 2
                  local.set 3
                  )
                )
                local.get 3
                call 39
                local.tee 4
                ref.is_null
                (if
                  (then
                  return
                  )
                )
                local.get 4
                call 40
                local.get 2
                local.get 3
                f64.sub
                local.set 2
              )
              br 0
            )
          )
        )
        br 0
      )
    )
  )
  (func $__str_to_number (type 46)
    (local $flat (ref null 7))
    (local $data (ref null 5))
    (local $end i32)
    (local $i i32)
    (local $c i32)
    (local $sign f64)
    (local $mant i64)
    (local $sawDigit i32)
    (local $fracScale f64)
    (local $expSign i32)
    (local $exp i32)
    (local $result f64)
    (local $radix i32)
    (local $dig i32)
    (local $fracCount i32)
    (local $texp i32)
    (local $pow f64)
    (local $intDrop i32)
    local.get 0
    any.convert_extern
    ref.cast (ref 6)
    call 3
    local.tee 1
    struct.get 7 2
    local.set 2
    local.get 1
    struct.get 7 1
    local.set 4
    local.get 1
    struct.get 7 0
    local.get 4
    i32.add
    local.set 3
    (block
      (loop
        local.get 4
        local.get 3
        i32.ge_s
        br_if 1
        local.get 2
        local.get 4
        array.get_u 5
        local.tee 5
        i32.const 32
        i32.eq
        local.get 5
        i32.const 9
        i32.eq
        i32.or
        local.get 5
        i32.const 10
        i32.eq
        i32.or
        local.get 5
        i32.const 11
        i32.eq
        i32.or
        local.get 5
        i32.const 12
        i32.eq
        i32.or
        local.get 5
        i32.const 13
        i32.eq
        i32.or
        local.get 5
        i32.const 160
        i32.eq
        i32.or
        local.get 5
        i32.const 65279
        i32.eq
        i32.or
        local.get 5
        i32.const 8232
        i32.eq
        i32.or
        local.get 5
        i32.const 8233
        i32.eq
        i32.or
        local.get 5
        i32.const 5760
        i32.eq
        i32.or
        local.get 5
        i32.const 8192
        i32.ge_u
        local.get 5
        i32.const 8202
        i32.le_u
        i32.and
        i32.or
        local.get 5
        i32.const 8239
        i32.eq
        i32.or
        local.get 5
        i32.const 8287
        i32.eq
        i32.or
        local.get 5
        i32.const 12288
        i32.eq
        i32.or
        i32.eqz
        br_if 1
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0
      )
    )
    (block
      (loop
        local.get 3
        local.get 4
        i32.le_s
        br_if 1
        local.get 2
        local.get 3
        i32.const 1
        i32.sub
        array.get_u 5
        local.tee 5
        i32.const 32
        i32.eq
        local.get 5
        i32.const 9
        i32.eq
        i32.or
        local.get 5
        i32.const 10
        i32.eq
        i32.or
        local.get 5
        i32.const 11
        i32.eq
        i32.or
        local.get 5
        i32.const 12
        i32.eq
        i32.or
        local.get 5
        i32.const 13
        i32.eq
        i32.or
        local.get 5
        i32.const 160
        i32.eq
        i32.or
        local.get 5
        i32.const 65279
        i32.eq
        i32.or
        local.get 5
        i32.const 8232
        i32.eq
        i32.or
        local.get 5
        i32.const 8233
        i32.eq
        i32.or
        local.get 5
        i32.const 5760
        i32.eq
        i32.or
        local.get 5
        i32.const 8192
        i32.ge_u
        local.get 5
        i32.const 8202
        i32.le_u
        i32.and
        i32.or
        local.get 5
        i32.const 8239
        i32.eq
        i32.or
        local.get 5
        i32.const 8287
        i32.eq
        i32.or
        local.get 5
        i32.const 12288
        i32.eq
        i32.or
        i32.eqz
        br_if 1
        local.get 3
        i32.const 1
        i32.sub
        local.set 3
        br 0
      )
    )
    local.get 4
    local.get 3
    i32.ge_s
    (if
      (then
      f64.const 0
      return
      )
    )
    f64.const 1
    local.set 6
    local.get 2
    local.get 4
    array.get_u 5
    local.tee 5
    i32.const 45
    i32.eq
    (if
      (then
      f64.const -1
      local.set 6
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      )
      (else
      local.get 5
      i32.const 43
      i32.eq
      (if
        (then
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        )
      )
      )
    )
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.eq
    (if
      (then
      local.get 2
      local.get 4
      i32.const 0
      i32.add
      array.get_u 5
      i32.const 73
      i32.eq
      local.get 2
      local.get 4
      i32.const 1
      i32.add
      array.get_u 5
      i32.const 110
      i32.eq
      i32.and
      local.get 2
      local.get 4
      i32.const 2
      i32.add
      array.get_u 5
      i32.const 102
      i32.eq
      i32.and
      local.get 2
      local.get 4
      i32.const 3
      i32.add
      array.get_u 5
      i32.const 105
      i32.eq
      i32.and
      local.get 2
      local.get 4
      i32.const 4
      i32.add
      array.get_u 5
      i32.const 110
      i32.eq
      i32.and
      local.get 2
      local.get 4
      i32.const 5
      i32.add
      array.get_u 5
      i32.const 105
      i32.eq
      i32.and
      local.get 2
      local.get 4
      i32.const 6
      i32.add
      array.get_u 5
      i32.const 116
      i32.eq
      i32.and
      local.get 2
      local.get 4
      i32.const 7
      i32.add
      array.get_u 5
      i32.const 121
      i32.eq
      i32.and
      (if
        (then
        local.get 6
        f64.const Infinity
        f64.mul
        return
        )
      )
      )
    )
    local.get 6
    f64.const 1
    f64.eq
    local.get 4
    i32.const 1
    i32.add
    local.get 3
    i32.lt_s
    i32.and
    local.get 2
    local.get 4
    array.get_u 5
    i32.const 48
    i32.eq
    i32.and
    (if
      (then
      local.get 2
      local.get 4
      i32.const 1
      i32.add
      array.get_u 5
      local.tee 5
      i32.const 120
      i32.eq
      local.get 5
      i32.const 88
      i32.eq
      i32.or
      (if
        (then
        i32.const 16
        local.set 13
        local.get 4
        i32.const 2
        i32.add
        local.tee 4
        local.get 3
        i32.ge_s
        (if
          (then
          f64.const NaN
          return
          )
        )
        f64.const 0
        local.set 12
        (block
          (loop
            local.get 4
            local.get 3
            i32.ge_s
            br_if 1
            local.get 2
            local.get 4
            array.get_u 5
            local.set 5
            i32.const -1
            local.set 14
            local.get 5
            i32.const 48
            i32.ge_s
            local.get 5
            i32.const 57
            i32.le_s
            i32.and
            (if
              (then
              local.get 5
              i32.const 48
              i32.sub
              local.set 14
              )
              (else
              local.get 5
              i32.const 65
              i32.ge_s
              local.get 5
              i32.const 90
              i32.le_s
              i32.and
              (if
                (then
                local.get 5
                i32.const 55
                i32.sub
                local.set 14
                )
                (else
                local.get 5
                i32.const 97
                i32.ge_s
                local.get 5
                i32.const 122
                i32.le_s
                i32.and
                (if
                  (then
                  local.get 5
                  i32.const 87
                  i32.sub
                  local.set 14
                  )
                )
                )
              )
              )
            )
            local.get 14
            i32.const 0
            i32.lt_s
            local.get 14
            i32.const 16
            i32.ge_s
            i32.or
            (if
              (then
              f64.const NaN
              return
              )
            )
            local.get 12
            f64.const 16
            f64.mul
            local.get 14
            f64.convert_i32_s
            f64.add
            local.set 12
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 0
          )
        )
        local.get 12
        return
        )
      )
      local.get 2
      local.get 4
      i32.const 1
      i32.add
      array.get_u 5
      local.tee 5
      i32.const 111
      i32.eq
      local.get 5
      i32.const 79
      i32.eq
      i32.or
      (if
        (then
        i32.const 8
        local.set 13
        local.get 4
        i32.const 2
        i32.add
        local.tee 4
        local.get 3
        i32.ge_s
        (if
          (then
          f64.const NaN
          return
          )
        )
        f64.const 0
        local.set 12
        (block
          (loop
            local.get 4
            local.get 3
            i32.ge_s
            br_if 1
            local.get 2
            local.get 4
            array.get_u 5
            local.set 5
            i32.const -1
            local.set 14
            local.get 5
            i32.const 48
            i32.ge_s
            local.get 5
            i32.const 57
            i32.le_s
            i32.and
            (if
              (then
              local.get 5
              i32.const 48
              i32.sub
              local.set 14
              )
              (else
              local.get 5
              i32.const 65
              i32.ge_s
              local.get 5
              i32.const 90
              i32.le_s
              i32.and
              (if
                (then
                local.get 5
                i32.const 55
                i32.sub
                local.set 14
                )
                (else
                local.get 5
                i32.const 97
                i32.ge_s
                local.get 5
                i32.const 122
                i32.le_s
                i32.and
                (if
                  (then
                  local.get 5
                  i32.const 87
                  i32.sub
                  local.set 14
                  )
                )
                )
              )
              )
            )
            local.get 14
            i32.const 0
            i32.lt_s
            local.get 14
            i32.const 8
            i32.ge_s
            i32.or
            (if
              (then
              f64.const NaN
              return
              )
            )
            local.get 12
            f64.const 8
            f64.mul
            local.get 14
            f64.convert_i32_s
            f64.add
            local.set 12
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 0
          )
        )
        local.get 12
        return
        )
      )
      local.get 2
      local.get 4
      i32.const 1
      i32.add
      array.get_u 5
      local.tee 5
      i32.const 98
      i32.eq
      local.get 5
      i32.const 66
      i32.eq
      i32.or
      (if
        (then
        i32.const 2
        local.set 13
        local.get 4
        i32.const 2
        i32.add
        local.tee 4
        local.get 3
        i32.ge_s
        (if
          (then
          f64.const NaN
          return
          )
        )
        f64.const 0
        local.set 12
        (block
          (loop
            local.get 4
            local.get 3
            i32.ge_s
            br_if 1
            local.get 2
            local.get 4
            array.get_u 5
            local.set 5
            i32.const -1
            local.set 14
            local.get 5
            i32.const 48
            i32.ge_s
            local.get 5
            i32.const 57
            i32.le_s
            i32.and
            (if
              (then
              local.get 5
              i32.const 48
              i32.sub
              local.set 14
              )
              (else
              local.get 5
              i32.const 65
              i32.ge_s
              local.get 5
              i32.const 90
              i32.le_s
              i32.and
              (if
                (then
                local.get 5
                i32.const 55
                i32.sub
                local.set 14
                )
                (else
                local.get 5
                i32.const 97
                i32.ge_s
                local.get 5
                i32.const 122
                i32.le_s
                i32.and
                (if
                  (then
                  local.get 5
                  i32.const 87
                  i32.sub
                  local.set 14
                  )
                )
                )
              )
              )
            )
            local.get 14
            i32.const 0
            i32.lt_s
            local.get 14
            i32.const 2
            i32.ge_s
            i32.or
            (if
              (then
              f64.const NaN
              return
              )
            )
            local.get 12
            f64.const 2
            f64.mul
            local.get 14
            f64.convert_i32_s
            f64.add
            local.set 12
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 0
          )
        )
        local.get 12
        return
        )
      )
      )
    )
    i64.const 0
    local.set 7
    i32.const 0
    local.set 8
    (block
      (loop
        local.get 4
        local.get 3
        i32.ge_s
        br_if 1
        local.get 2
        local.get 4
        array.get_u 5
        local.tee 5
        i32.const 48
        i32.lt_s
        local.get 5
        i32.const 57
        i32.gt_s
        i32.or
        br_if 1
        local.get 7
        i64.const 900000000000000000
        i64.lt_u
        (if
          (then
          local.get 7
          i64.const 10
          i64.mul
          local.get 5
          i32.const 48
          i32.sub
          i64.extend_i32_s
          i64.add
          local.set 7
          )
          (else
          local.get 18
          i32.const 1
          i32.add
          local.set 18
          )
        )
        i32.const 1
        local.set 8
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0
      )
    )
    local.get 4
    local.get 3
    i32.lt_s
    (if
      (then
      local.get 2
      local.get 4
      array.get_u 5
      local.tee 5
      i32.const 46
      i32.eq
      (if
        (then
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        (block
          (loop
            local.get 4
            local.get 3
            i32.ge_s
            br_if 1
            local.get 2
            local.get 4
            array.get_u 5
            local.tee 5
            i32.const 48
            i32.lt_s
            local.get 5
            i32.const 57
            i32.gt_s
            i32.or
            br_if 1
            local.get 7
            i64.const 900000000000000000
            i64.lt_u
            (if
              (then
              local.get 7
              i64.const 10
              i64.mul
              local.get 5
              i32.const 48
              i32.sub
              i64.extend_i32_s
              i64.add
              local.set 7
              local.get 15
              i32.const 1
              i32.add
              local.set 15
              )
            )
            i32.const 1
            local.set 8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 0
          )
        )
        )
      )
      )
    )
    local.get 8
    i32.eqz
    (if
      (then
      f64.const NaN
      return
      )
    )
    i32.const 0
    local.set 11
    i32.const 1
    local.set 10
    local.get 4
    local.get 3
    i32.lt_s
    (if
      (then
      local.get 2
      local.get 4
      array.get_u 5
      local.tee 5
      i32.const 101
      i32.eq
      local.get 5
      i32.const 69
      i32.eq
      i32.or
      (if
        (then
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        local.get 3
        i32.lt_s
        (if
          (then
          local.get 2
          local.get 4
          array.get_u 5
          local.tee 5
          i32.const 45
          i32.eq
          (if
            (then
            i32.const -1
            local.set 10
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            )
            (else
            local.get 5
            i32.const 43
            i32.eq
            (if
              (then
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              )
            )
            )
          )
          )
        )
        (block
          (loop
            local.get 4
            local.get 3
            i32.ge_s
            br_if 1
            local.get 2
            local.get 4
            array.get_u 5
            local.tee 5
            i32.const 48
            i32.lt_s
            local.get 5
            i32.const 57
            i32.gt_s
            i32.or
            br_if 1
            local.get 11
            i32.const 10
            i32.mul
            local.get 5
            i32.const 48
            i32.sub
            i32.add
            local.set 11
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 0
          )
        )
        )
      )
      )
    )
    local.get 4
    local.get 3
    i32.ne
    (if
      (then
      f64.const NaN
      return
      )
    )
    local.get 10
    i32.const 0
    i32.lt_s
    (if
      (then
      i32.const 0
      local.get 11
      i32.sub
      local.set 16
      )
      (else
      local.get 11
      local.set 16
      )
    )
    local.get 16
    local.get 18
    i32.add
    local.tee 16
    local.get 15
    i32.sub
    local.set 16
    local.get 6
    local.get 7
    f64.convert_i64_s
    f64.mul
    local.set 12
    local.get 16
    i32.const 0
    i32.lt_s
    (if
      (then
      i32.const 0
      local.get 16
      i32.sub
      local.set 11
      )
      (else
      local.get 16
      local.set 11
      )
    )
    local.get 11
    i32.const 22
    i32.le_s
    (if
      (then
      f64.const 1
      local.set 17
      (block
        (loop
          local.get 11
          i32.eqz
          br_if 1
          local.get 17
          f64.const 10
          f64.mul
          local.set 17
          local.get 11
          i32.const 1
          i32.sub
          local.set 11
          br 0
        )
      )
      local.get 16
      i32.const 0
      i32.lt_s
      (if
        (then
        local.get 12
        local.get 17
        f64.div
        local.set 12
        )
        (else
        local.get 12
        local.get 17
        f64.mul
        local.set 12
        )
      )
      )
      (else
      (block
        (loop
          local.get 11
          i32.eqz
          br_if 1
          local.get 16
          i32.const 0
          i32.lt_s
          (if
            (then
            local.get 12
            f64.const 10
            f64.div
            local.set 12
            )
            (else
            local.get 12
            f64.const 10
            f64.mul
            local.set 12
            )
          )
          local.get 11
          i32.const 1
          i32.sub
          local.set 11
          br 0
        )
      )
      )
    )
    local.get 12
    return
  )
  (func $__box_number (param f64) (result externref)
    local.get 0
    struct.new 42
    extern.convert_any
  )
  (func $__unbox_number (type 46)
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
    ref.test (ref 42)
    (if
      (then
      local.get 1
      ref.cast (ref 42)
      struct.get 42 0
      return
      )
    )
    local.get 1
    ref.test (ref 43)
    (if
      (then
      local.get 1
      ref.cast (ref 43)
      struct.get 43 0
      f64.convert_i32_s
      return
      )
    )
    local.get 1
    ref.test (ref 6)
    (if
      (then
      local.get 0
      call 43
      return
      )
    )
    f64.const NaN
  )
  (func $__box_boolean (param i32) (result externref)
    local.get 0
    struct.new 43
    extern.convert_any
  )
  (func $__box_bigint (param i64) (result externref)
    local.get 0
    struct.new 44
    extern.convert_any
  )
  (func $__unbox_boolean (type 45)
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
    ref.test (ref 43)
    (if
      (then
      local.get 1
      ref.cast (ref 43)
      struct.get 43 0
      return
      )
    )
    i32.const 0
  )
  (func $__new_TypeError (type 51)
    i32.const -11
    local.get 0
    i32.const 9
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
    array.new_fixed 5 9
    struct.new 7
    extern.convert_any
    ref.null extern
    i32.const -1
    ref.null extern
    struct.new 52
    extern.convert_any
  )
  (func $__to_bigint (type 47)
    (local $$any_temp anyref)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 44
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 99
      i32.const 111
      i32.const 110
      i32.const 118
      i32.const 101
      i32.const 114
      i32.const 116
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
      i32.const 116
      i32.const 111
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 66
      i32.const 105
      i32.const 103
      i32.const 73
      i32.const 110
      i32.const 116
      array.new_fixed 5 44
      struct.new 7
      extern.convert_any
      call 49
      throw 0
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 44)
    (if
      (then
      local.get 1
      ref.cast (ref 44)
      struct.get 44 0
      return
      )
    )
    local.get 1
    ref.test (ref 43)
    (if
      (then
      local.get 1
      ref.cast (ref 43)
      struct.get 43 0
      i64.extend_i32_u
      return
      )
    )
    i32.const 32
    i32.const 0
    i32.const 67
    i32.const 97
    i32.const 110
    i32.const 110
    i32.const 111
    i32.const 116
    i32.const 32
    i32.const 99
    i32.const 111
    i32.const 110
    i32.const 118
    i32.const 101
    i32.const 114
    i32.const 116
    i32.const 32
    i32.const 118
    i32.const 97
    i32.const 108
    i32.const 117
    i32.const 101
    i32.const 32
    i32.const 116
    i32.const 111
    i32.const 32
    i32.const 97
    i32.const 32
    i32.const 66
    i32.const 105
    i32.const 103
    i32.const 73
    i32.const 110
    i32.const 116
    array.new_fixed 5 32
    struct.new 7
    extern.convert_any
    call 49
    throw 0
  )
  (func $__new_RangeError (type 51)
    i32.const -12
    local.get 0
    i32.const 10
    i32.const 0
    i32.const 82
    i32.const 97
    i32.const 110
    i32.const 103
    i32.const 101
    i32.const 69
    i32.const 114
    i32.const 114
    i32.const 111
    i32.const 114
    array.new_fixed 5 10
    struct.new 7
    extern.convert_any
    ref.null extern
    i32.const -1
    ref.null extern
    struct.new 52
    extern.convert_any
  )
  (func $__new_SyntaxError (type 51)
    i32.const -13
    local.get 0
    i32.const 11
    i32.const 0
    i32.const 83
    i32.const 121
    i32.const 110
    i32.const 116
    i32.const 97
    i32.const 120
    i32.const 69
    i32.const 114
    i32.const 114
    i32.const 111
    i32.const 114
    array.new_fixed 5 11
    struct.new 7
    extern.convert_any
    ref.null extern
    i32.const -1
    ref.null extern
    struct.new 52
    extern.convert_any
  )
  (func $__bigint_ctor (type 47)
    (local $$any_temp anyref)
    (local $$num_temp f64)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 44
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 99
      i32.const 111
      i32.const 110
      i32.const 118
      i32.const 101
      i32.const 114
      i32.const 116
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
      i32.const 116
      i32.const 111
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 66
      i32.const 105
      i32.const 103
      i32.const 73
      i32.const 110
      i32.const 116
      array.new_fixed 5 44
      struct.new 7
      extern.convert_any
      call 49
      throw 0
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 44)
    (if
      (then
      local.get 1
      ref.cast (ref 44)
      struct.get 44 0
      return
      )
    )
    local.get 1
    ref.test (ref 43)
    (if
      (then
      local.get 1
      ref.cast (ref 43)
      struct.get 43 0
      i64.extend_i32_u
      return
      )
    )
    local.get 1
    ref.test (ref 42)
    (if
      (then
      local.get 1
      ref.cast (ref 42)
      struct.get 42 0
      local.tee 2
      local.get 2
      f64.ne
      local.get 2
      f64.floor
      local.get 2
      f64.ne
      i32.or
      local.get 2
      f64.const 9223372036854776000
      f64.ge
      i32.or
      local.get 2
      f64.const -9223372036854776000
      f64.lt
      i32.or
      (if
        (then
        i32.const 71
        i32.const 0
        i32.const 84
        i32.const 104
        i32.const 101
        i32.const 32
        i32.const 110
        i32.const 117
        i32.const 109
        i32.const 98
        i32.const 101
        i32.const 114
        i32.const 32
        i32.const 99
        i32.const 97
        i32.const 110
        i32.const 110
        i32.const 111
        i32.const 116
        i32.const 32
        i32.const 98
        i32.const 101
        i32.const 32
        i32.const 99
        i32.const 111
        i32.const 110
        i32.const 118
        i32.const 101
        i32.const 114
        i32.const 116
        i32.const 101
        i32.const 100
        i32.const 32
        i32.const 116
        i32.const 111
        i32.const 32
        i32.const 97
        i32.const 32
        i32.const 66
        i32.const 105
        i32.const 103
        i32.const 73
        i32.const 110
        i32.const 116
        i32.const 32
        i32.const 98
        i32.const 101
        i32.const 99
        i32.const 97
        i32.const 117
        i32.const 115
        i32.const 101
        i32.const 32
        i32.const 105
        i32.const 116
        i32.const 32
        i32.const 105
        i32.const 115
        i32.const 32
        i32.const 110
        i32.const 111
        i32.const 116
        i32.const 32
        i32.const 97
        i32.const 110
        i32.const 32
        i32.const 105
        i32.const 110
        i32.const 116
        i32.const 101
        i32.const 103
        i32.const 101
        i32.const 114
        array.new_fixed 5 71
        struct.new 7
        extern.convert_any
        call 51
        throw 0
        )
      )
      local.get 2
      i64.trunc_sat_f64_s
      return
      )
    )
    i32.const 52
    i32.const 0
    i32.const 67
    i32.const 97
    i32.const 110
    i32.const 110
    i32.const 111
    i32.const 116
    i32.const 32
    i32.const 99
    i32.const 111
    i32.const 110
    i32.const 118
    i32.const 101
    i32.const 114
    i32.const 116
    i32.const 32
    i32.const 115
    i32.const 116
    i32.const 114
    i32.const 105
    i32.const 110
    i32.const 103
    i32.const 32
    i32.const 116
    i32.const 111
    i32.const 32
    i32.const 97
    i32.const 32
    i32.const 66
    i32.const 105
    i32.const 103
    i32.const 73
    i32.const 110
    i32.const 116
    i32.const 32
    i32.const 105
    i32.const 110
    i32.const 32
    i32.const 115
    i32.const 116
    i32.const 97
    i32.const 110
    i32.const 100
    i32.const 97
    i32.const 108
    i32.const 111
    i32.const 110
    i32.const 101
    i32.const 32
    i32.const 109
    i32.const 111
    i32.const 100
    i32.const 101
    array.new_fixed 5 52
    struct.new 7
    extern.convert_any
    call 52
    throw 0
  )
  (func $__is_truthy (type 45)
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
    ref.test (ref 42)
    (if
      (then
      local.get 1
      ref.cast (ref 42)
      struct.get 42 0
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
    ref.test (ref 43)
    (if
      (then
      local.get 1
      ref.cast (ref 43)
      struct.get 43 0
      return
      )
    )
    local.get 1
    ref.test (ref 44)
    (if
      (then
      local.get 1
      ref.cast (ref 44)
      struct.get 44 0
      i64.eqz
      i32.eqz
      return
      )
    )
    local.get 1
    ref.test (ref 6)
    (if
      (then
      local.get 1
      ref.cast (ref 6)
      struct.get 6 0
      i32.const 0
      i32.ne
      return
      )
    )
    i32.const 1
  )
  (func $__typeof_number (type 45)
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
    ref.test (ref 42)
  )
  (func $__typeof_boolean (type 45)
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
    ref.test (ref 43)
  )
  (func $__typeof_bigint (type 45)
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
    ref.test (ref 44)
  )
  (func $__typeof_string (type 45)
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
    ref.test (ref 6)
  )
  (func $__typeof_undefined (type 45)
    local.get 0
    ref.is_null
  )
  (func $__typeof_object (type 45)
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
    ref.test (ref 42)
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 1
    ref.test (ref 43)
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 1
    ref.test (ref 44)
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 1
    ref.test (ref 6)
    (if
      (then
      i32.const 0
      return
      )
    )
    i32.const 1
  )
  (func $__typeof_function (type 45)
    i32.const 0
  )
  (func $__typeof (type 51)
    ref.null extern
  )
  (func $__host_eq (type 54)
    (local $la anyref)
    (local $ra anyref)
    (local $fa f64)
    (local $fb f64)
    local.get 0
    ref.is_null
    local.get 1
    ref.is_null
    i32.and
    (if (result i32)
      (then
      i32.const 1
      )
      (else
      local.get 0
      call 55
      local.get 1
      call 55
      i32.and
      (if (result i32)
        (then
        local.get 0
        call 45
        local.get 1
        call 45
        f64.eq
        )
        (else
        local.get 0
        call 56
        local.get 1
        call 56
        i32.and
        (if (result i32)
          (then
          local.get 0
          call 48
          local.get 1
          call 48
          i32.eq
          )
          (else
          local.get 0
          call 57
          local.get 1
          call 57
          i32.and
          (if (result i32)
            (then
            local.get 0
            call 50
            local.get 1
            call 50
            i64.eq
            )
            (else
            local.get 0
            any.convert_extern
            local.set 2
            local.get 1
            any.convert_extern
            local.set 3
            local.get 2
            ref.test (ref -19)
            local.get 3
            ref.test (ref -19)
            i32.and
            (if (result i32)
              (then
              local.get 2
              ref.cast (ref -19)
              local.get 3
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
        )
      )
      )
    )
  )
  (func $__same_value_zero (type 54)
    (local $la anyref)
    (local $ra anyref)
    (local $fa f64)
    (local $fb f64)
    local.get 0
    ref.is_null
    local.get 1
    ref.is_null
    i32.and
    (if (result i32)
      (then
      i32.const 1
      )
      (else
      local.get 0
      call 55
      local.get 1
      call 55
      i32.and
      (if (result i32)
        (then
        local.get 0
        call 45
        local.set 4
        local.get 1
        call 45
        local.set 5
        local.get 4
        local.get 5
        f64.eq
        local.get 4
        local.get 4
        f64.ne
        local.get 5
        local.get 5
        f64.ne
        i32.and
        i32.or
        )
        (else
        local.get 0
        call 56
        local.get 1
        call 56
        i32.and
        (if (result i32)
          (then
          local.get 0
          call 48
          local.get 1
          call 48
          i32.eq
          )
          (else
          local.get 0
          call 57
          local.get 1
          call 57
          i32.and
          (if (result i32)
            (then
            local.get 0
            call 50
            local.get 1
            call 50
            i64.eq
            )
            (else
            local.get 0
            any.convert_extern
            local.set 2
            local.get 1
            any.convert_extern
            local.set 3
            local.get 2
            ref.test (ref -19)
            local.get 3
            ref.test (ref -19)
            i32.and
            (if (result i32)
              (then
              local.get 2
              ref.cast (ref -19)
              local.get 3
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
        )
      )
      )
    )
  )
  (func $__module_init (type 41)
    global.get 5
    (if
      (then
      return
      )
    )
    i32.const 1
    global.set 5
    f64.const 65536
    global.set 2
    i32.const 1
    global.set 4
    call 42
  )
  (func $__sget_length (type 45)
    (local $__any anyref)
    call 65
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 11)
    (if (result i32)
      (then
      local.get 1
      ref.cast (ref 11)
      struct.get 11 0
      )
      (else
      local.get 1
      ref.test (ref 13)
      (if (result i32)
        (then
        local.get 1
        ref.cast (ref 13)
        struct.get 13 0
        )
        (else
        local.get 1
        ref.test (ref 15)
        (if (result i32)
          (then
          local.get 1
          ref.cast (ref 15)
          struct.get 15 0
          )
          (else
          local.get 1
          ref.test (ref 16)
          (if (result i32)
            (then
            local.get 1
            ref.cast (ref 16)
            struct.get 16 0
            )
            (else
            i32.const 0
            )
          )
          )
        )
        )
      )
      )
    )
  )
  (func $__sget_data (type 51)
    (local $__any anyref)
    call 65
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 11)
    (if (result externref)
      (then
      local.get 1
      ref.cast (ref 11)
      struct.get 11 1
      extern.convert_any
      )
      (else
      local.get 1
      ref.test (ref 13)
      (if (result externref)
        (then
        local.get 1
        ref.cast (ref 13)
        struct.get 13 1
        extern.convert_any
        )
        (else
        local.get 1
        ref.test (ref 15)
        (if (result externref)
          (then
          local.get 1
          ref.cast (ref 15)
          struct.get 15 1
          extern.convert_any
          )
          (else
          local.get 1
          ref.test (ref 16)
          (if (result externref)
            (then
            local.get 1
            ref.cast (ref 16)
            struct.get 16 1
            extern.convert_any
            )
            (else
            ref.null extern
            )
          )
          )
        )
        )
      )
      )
    )
  )
  (func $__sget_byteOffset (type 45)
    (local $__any anyref)
    call 65
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 11)
    (if (result i32)
      (then
      local.get 1
      ref.cast (ref 11)
      struct.get 11 2
      )
      (else
      local.get 1
      ref.test (ref 13)
      (if (result i32)
        (then
        local.get 1
        ref.cast (ref 13)
        struct.get 13 2
        )
        (else
        local.get 1
        ref.test (ref 15)
        (if (result i32)
          (then
          local.get 1
          ref.cast (ref 15)
          struct.get 15 2
          )
          (else
          local.get 1
          ref.test (ref 16)
          (if (result i32)
            (then
            local.get 1
            ref.cast (ref 16)
            struct.get 16 2
            )
            (else
            i32.const 0
            )
          )
          )
        )
        )
      )
      )
    )
  )
  (func $__sset_length (param externref i32)
    (local $__any anyref)
    call 65
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 11)
    (if
      (then
      local.get 2
      ref.cast (ref 11)
      local.get 1
      struct.set 11 0
      )
      (else
      local.get 2
      ref.test (ref 13)
      (if
        (then
        local.get 2
        ref.cast (ref 13)
        local.get 1
        struct.set 13 0
        )
        (else
        local.get 2
        ref.test (ref 15)
        (if
          (then
          local.get 2
          ref.cast (ref 15)
          local.get 1
          struct.set 15 0
          )
          (else
          local.get 2
          ref.test (ref 16)
          (if
            (then
            local.get 2
            ref.cast (ref 16)
            local.get 1
            struct.set 16 0
            )
          )
          )
        )
        )
      )
      )
    )
  )
  (func $__vec_len (type 45)
    (local $__any anyref)
    call 65
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 2)
    (if
      (then
      local.get 1
      ref.cast (ref 2)
      struct.get 2 0
      return
      )
      (else
      local.get 1
      ref.test (ref 4)
      (if
        (then
        local.get 1
        ref.cast (ref 4)
        struct.get 4 0
        return
        )
        (else
        local.get 1
        ref.test (ref 33)
        (if
          (then
          local.get 1
          ref.cast (ref 33)
          struct.get 33 0
          return
          )
          (else
          local.get 1
          ref.test (ref 37)
          (if
            (then
            local.get 1
            ref.cast (ref 37)
            struct.get 37 0
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
    call 65
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 2)
    (if
      (then
      local.get 2
      ref.cast (ref 2)
      struct.get 2 1
      local.get 1
      array.get 1
      return
      )
      (else
      local.get 2
      ref.test (ref 4)
      (if
        (then
        local.get 2
        ref.cast (ref 4)
        struct.get 4 1
        local.get 1
        array.get 3
        call 44
        return
        )
        (else
        local.get 2
        ref.test (ref 33)
        (if
          (then
          local.get 2
          ref.cast (ref 33)
          struct.get 33 1
          local.get 1
          array.get 17
          extern.convert_any
          return
          )
          (else
          local.get 2
          ref.test (ref 37)
          (if
            (then
            local.get 2
            ref.cast (ref 37)
            struct.get 37 1
            local.get 1
            array.get_u 10
            f64.convert_i32_u
            call 44
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
  (func $__is_vec (type 45)
    (local $__any anyref)
    call 65
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 2)
    (if
      (then
      i32.const 1
      return
      )
      (else
      local.get 1
      ref.test (ref 4)
      (if
        (then
        i32.const 1
        return
        )
        (else
        local.get 1
        ref.test (ref 33)
        (if
          (then
          i32.const 1
          return
          )
          (else
          local.get 1
          ref.test (ref 37)
          (if
            (then
            i32.const 1
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
  (func $__vec_mut_supported (type 45)
    (local $__any anyref)
    call 65
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 2)
    (if
      (then
      i32.const 1
      return
      )
      (else
      local.get 1
      ref.test (ref 4)
      (if
        (then
        i32.const 1
        return
        )
        (else
        i32.const 0
        return
        )
      )
      )
    )
    i32.const 0
  )
  (func $__vec_push (type 54)
    (local $__any anyref)
    (local $__vp_vec_4 (ref null 4))
    (local $__vp_data_4 (ref null 3))
    (local $__vp_len_4 i32)
    (local $__vp_ncap_4 i32)
    (local $__vp_ndata_4 (ref null 3))
    (local $__vp_vec_2 (ref null 2))
    (local $__vp_data_2 (ref null 1))
    (local $__vp_len_2 i32)
    (local $__vp_ncap_2 i32)
    (local $__vp_ndata_2 (ref null 1))
    call 65
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 2)
    (if
      (then
      local.get 2
      ref.cast (ref 2)
      local.tee 8
      struct.get 2 0
      local.set 10
      local.get 8
      struct.get 2 1
      local.tee 9
      array.len
      local.get 10
      i32.const 1
      i32.add
      i32.lt_s
      (if
        (then
        local.get 10
        i32.const 1
        i32.add
        i32.const 1
        i32.shl
        i32.const 4
        local.get 10
        i32.const 1
        i32.add
        i32.const 1
        i32.shl
        i32.const 4
        i32.gt_s
        select
        local.tee 11
        array.new_default 1
        local.tee 12
        i32.const 0
        local.get 9
        i32.const 0
        local.get 10
        array.copy 1 1
        local.get 8
        local.get 12
        ref.as_non_null
        struct.set 2 1
        local.get 12
        local.set 9
        )
      )
      local.get 9
      local.get 10
      local.get 1
      array.set 1
      local.get 8
      local.get 10
      i32.const 1
      i32.add
      struct.set 2 0
      local.get 10
      i32.const 1
      i32.add
      return
      )
      (else
      local.get 2
      ref.test (ref 4)
      (if
        (then
        local.get 2
        ref.cast (ref 4)
        local.tee 3
        struct.get 4 0
        local.set 5
        local.get 3
        struct.get 4 1
        local.tee 4
        array.len
        local.get 5
        i32.const 1
        i32.add
        i32.lt_s
        (if
          (then
          local.get 5
          i32.const 1
          i32.add
          i32.const 1
          i32.shl
          i32.const 4
          local.get 5
          i32.const 1
          i32.add
          i32.const 1
          i32.shl
          i32.const 4
          i32.gt_s
          select
          local.tee 6
          array.new_default 3
          local.tee 7
          i32.const 0
          local.get 4
          i32.const 0
          local.get 5
          array.copy 3 3
          local.get 3
          local.get 7
          ref.as_non_null
          struct.set 4 1
          local.get 7
          local.set 4
          )
        )
        local.get 4
        local.get 5
        local.get 1
        call 45
        array.set 3
        local.get 3
        local.get 5
        i32.const 1
        i32.add
        struct.set 4 0
        local.get 5
        i32.const 1
        i32.add
        return
        )
        (else
        i32.const -1
        return
        )
      )
      )
    )
    i32.const 0
  )
  (func $__vec_pop (type 51)
    (local $__any anyref)
    (local $__vpop_vec_4 (ref null 4))
    (local $__vpop_len_4 i32)
    (local $__vpop_vec_2 (ref null 2))
    (local $__vpop_len_2 i32)
    call 65
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 2)
    (if
      (then
      local.get 1
      ref.cast (ref 2)
      local.tee 4
      struct.get 2 0
      local.tee 5
      i32.eqz
      (if
        (then
        ref.null extern
        return
        )
      )
      local.get 4
      struct.get 2 1
      local.get 5
      i32.const 1
      i32.sub
      array.get 1
      local.get 4
      local.get 5
      i32.const 1
      i32.sub
      struct.set 2 0
      return
      )
      (else
      local.get 1
      ref.test (ref 4)
      (if
        (then
        local.get 1
        ref.cast (ref 4)
        local.tee 2
        struct.get 4 0
        local.tee 3
        i32.eqz
        (if
          (then
          ref.null extern
          return
          )
        )
        local.get 2
        struct.get 4 1
        local.get 3
        i32.const 1
        i32.sub
        array.get 3
        call 44
        local.get 2
        local.get 3
        i32.const 1
        i32.sub
        struct.set 4 0
        return
        )
        (else
        ref.null extern
        return
        )
      )
      )
    )
    ref.null extern
  )
  (func $_start (type 41)
    call 42
  )
  (export "memory" (memory 0))
  (export "main" (func 42))
  (export "__sget_length" (func 66))
  (export "__sget_data" (func 67))
  (export "__sget_byteOffset" (func 68))
  (export "__sset_length" (func 69))
  (export "__vec_len" (func 70))
  (export "__vec_get" (func 71))
  (export "__is_vec" (func 72))
  (export "__vec_mut_supported" (func 73))
  (export "__vec_push" (func 74))
  (export "__vec_pop" (func 75))
  (export "_start" (func 76))
  (export "__exn_tag" (tag 0))
)