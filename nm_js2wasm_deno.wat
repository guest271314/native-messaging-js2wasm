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
  (type $__arr_i32_elem (array (mut i32)))
  (type $__subview_i32_elem (sub $type0 (struct (field $length (mut i32)) (field $data (ref null 14)) (field $byteOffset i32))))
  (type $__subview_f64 (sub $type0 (struct (field $length (mut i32)) (field $data (ref null 3)) (field $byteOffset i32))))
  (type $type17 (func (param externref externref) (result externref)))
  (type $__arr_ref_6 (array (mut (ref null 6))))
  (type $type23 (func (param (ref null 6) (ref null 6)) (result i32)))
  (type $type24 (func (param (ref null 6) i32 i32) (result (ref null 6))))
  (type $type25 (func (param (ref null 6) i32) (result (ref null 6))))
  (type $type26 (func (param (ref null 6) (ref null 6) i32) (result i32)))
  (type $type28 (func (param (ref null 6)) (result (ref null 6))))
  (type $type29 (func (param (ref null 6) i32 (ref null 6)) (result (ref null 6))))
  (type $CaseTableI32 (array i32))
  (type $type31 (func (param i32 (ref null 30)) (result i32)))
  (type $type33 (func (param (ref null 6) (ref null 6) (ref null 6)) (result (ref null 6))))
  (type $__vec_ref_6 (sub $type0 (struct (field $length (mut i32)) (field $data (mut (ref null 18))))))
  (type $type36 (func (param i32) (result (ref null 6))))
  (type $__vec_i8_byte (sub $type0 (struct (field $length (mut i32)) (field $data (mut (ref null 10))))))
  (type $runVerbatim_type (func (param externref externref)))
  (type $runRechunk_type (func (param externref externref externref f64)))
  (type $denoRead_type (func (param externref) (result f64)))
  (type $denoWrite_type (func (param externref)))
  (type $main_type (func))
  (type $$PropEntry (struct (field $key (ref null 6)) (field $value (mut anyref)) (field $flags (mut i32)) (field $seq (mut i32)) (field $get (mut anyref)) (field $set (mut anyref))))
  (type $$PropMap (array (mut (ref null 49))))
  (type $$Object (struct (field $proto (mut (ref null 51))) (field $props (mut (ref null 50))) (field $count (mut i32)) (field $tombstones (mut i32)) (field $flags (mut i32)) (field $nextSeq (mut i32))))
  (type $$ObjVecArr (array (mut externref)))
  (type $$ObjVec (struct (field $len (mut i32)) (field $data (mut (ref null 52)))))
  (type $$ProxyTraps (struct (field $get externref) (field $set externref) (field $has externref) (field $apply externref) (field $deleteProperty externref) (field $getOwnPropertyDescriptor externref) (field $getPrototypeOf externref) (field $setPrototypeOf externref) (field $isExtensible externref) (field $preventExtensions externref) (field $ownKeys externref) (field $defineProperty externref)))
  (type $$Proxy (struct (field $ptag i32) (field $ptarget (mut anyref)) (field $phandler (mut anyref)) (field $ptraps (mut (ref null 54))) (field $revoked (mut i32))))
  (type $type56 (func (param externref) (result i32)))
  (type $type57 (func (result externref)))
  (type $__box_number_struct (struct (field $value f64)))
  (type $__box_boolean_struct (struct (field $value i32)))
  (type $$BigInt (struct (field $value i64)))
  (type $type63 (func (param externref) (result i64)))
  (type $type64 (func (param f64) (result externref)))
  (type $type67 (func (param externref) (result externref)))
  (type $$Error_struct (struct (field $tag i32) (field $message (mut externref)) (field $name externref) (field $stack (mut externref)) (field $userClassId (mut i32)) (field $props (mut externref))))
  (type $type69 (func (param externref externref) (result i32)))
  (type $$call_accessor_set_type (func (param externref externref externref)))
  (type $AnyValue (struct (field $tag i32) (field $i32val i32) (field $f64val f64) (field $refval eqref) (field $externval externref)))
  (type $type76 (func (param (ref null 51)) (result (ref null 50))))
  (type $type81 (func (param externref externref externref) (result externref)))
  (type $type82 (func (param externref externref externref externref externref) (result externref)))
  (type $type83 (func (param externref externref externref externref externref externref) (result externref)))
  (type $type84 (func (param externref externref externref externref) (result externref)))
  (type $__fn_wrap_0_struct (sub (struct (field $func funcref))))
  (type $__fn_wrap_0_type (func (param (ref null 85) externref) (result f64)))
  (type $__fn_wrap_1_struct (sub $type85 (struct (field $func funcref))))
  (type $__fn_wrap_1_type (func (param (ref null 87) externref)))
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write_import (type 9)))
  (import "wasi_snapshot_preview1" "fd_read" (func $fd_read_import (type 9)))
  (global $__wasi_bump_ptr (mut i32) (i32.const 1024))
  (global $__lin_u8_arena_ptr (mut i32) (i32.const 262144))
  (global $__mod_VERBATIM_WINDOW (mut f64) (f64.const 0))
  (global $__mod_COMMA (mut f64) (f64.const 0))
  (global $__mod_OPEN_BRACKET (mut f64) (f64.const 0))
  (global $__mod_CLOSE_BRACKET (mut f64) (f64.const 0))
  (global $__mod_DQUOTE (mut f64) (f64.const 0))
  (global $__current_this (mut externref) (ref.null extern))
  (global $__undefined (ref null 73) (i32.const 1 i32.const 0 f64.const NaN ref.null -19 ref.null extern struct.new 73))
  (global $__fn_closure_denoRead (mut externref) (ref.null extern))
  (global $__fn_closure_denoWrite (mut externref) (ref.null extern))
  (global $__fn_closure_denoNoLog (mut externref) (ref.null extern))
  (global $__argc (mut i32) (i32.const -1))
  (global $__extras_argv (mut (ref null 2)) (ref.null 2))
  (global $__init_done (mut i32) (i32.const 0))
  (memory 3)
  (elem declare func 157 158 159)
  (tag $__exn (type 47))
  (func $__str_copy_tree (param (ref null 6) (ref null 5) i32) (result i32)
    (local $flat (ref null 7))
    (local $flatOff i32)
    (local $flatLen i32)
    (local $cur (ref null 6))
    (local $worklist (ref null 18))
    (local $wlTop i32)
    (local $newWl (ref null 18))
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
    array.new_default 18
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
              array.new_default 18
              local.tee 9
              ref.as_non_null
              i32.const 0
              local.get 7
              ref.as_non_null
              i32.const 0
              local.get 8
              array.copy 18 18
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
            array.set 18
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
        array.get 18
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
  (func $__str_equals (type 23)
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
  (func $__str_compare (type 23)
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
  (func $__str_substring (type 24)
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
  (func $__str_charAt (type 25)
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
  (func $__str_charAt_cp (type 25)
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
  (func $__str_slice (type 24)
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
  (func $__str_substr (type 24)
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
  (func $__str_indexOf (type 26)
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
  (func $__str_lastIndexOf (type 26)
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
  (func $__str_includes (type 26)
    local.get 0
    local.get 1
    local.get 2
    call 13
    i32.const -1
    i32.ne
  )
  (func $__str_startsWith (type 26)
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
  (func $__str_endsWith (type 26)
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
  (func $__str_trimStart (type 28)
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
  (func $__str_trimEnd (type 28)
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
  (func $__str_trim (type 28)
    local.get 0
    call 19
    call 20
  )
  (func $__str_repeat (type 25)
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
  (func $__str_padStart (type 29)
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
  (func $__str_padEnd (type 29)
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
  (func $__str_toLowerCase (type 28)
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
  (func $__str_toUpperCase (type 28)
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
  (func $__case_simple_upper (type 31)
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
        array.get 30
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
    array.get 30
    local.set 6
    local.get 1
    local.get 5
    i32.const 1
    i32.add
    array.get 30
    local.set 7
    local.get 1
    local.get 5
    i32.const 2
    i32.add
    array.get 30
    local.set 8
    local.get 1
    local.get 5
    i32.const 3
    i32.add
    array.get 30
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
  (func $__case_simple_lower (type 31)
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
        array.get 30
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
    array.get 30
    local.set 6
    local.get 1
    local.get 5
    i32.const 1
    i32.add
    array.get 30
    local.set 7
    local.get 1
    local.get 5
    i32.const 2
    i32.add
    array.get 30
    local.set 8
    local.get 1
    local.get 5
    i32.const 3
    i32.add
    array.get 30
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
  (func $__str_toUpperCase_uni (type 28)
    (local $len i32)
    (local $data (ref null 5))
    (local $off i32)
    (local $runs (ref null 30))
    (local $spec (ref null 30))
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
    array.new_fixed 30 744
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
    array.new_fixed 30 510
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
            array.get 30
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
          array.get 30
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
            array.get 30
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
          array.get 30
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
              array.get 30
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
  (func $__str_toLowerCase_uni (type 28)
    (local $len i32)
    (local $data (ref null 5))
    (local $off i32)
    (local $runs (ref null 30))
    (local $spec (ref null 30))
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
    array.new_fixed 30 692
    local.set 4
    i32.const 304
    i32.const 2
    i32.const 105
    i32.const 775
    i32.const 0
    array.new_fixed 30 5
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
            array.get 30
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
          array.get 30
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
            array.get 30
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
          array.get 30
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
              array.get 30
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
  (func $__str_replace (type 33)
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
  (func $__str_replaceAll (type 33)
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
  (func $__str_split (param (ref null 6) (ref null 6) i32) (result (ref null 34))
    (local $sLen i32)
    (local $sepLen i32)
    (local $pos i32)
    (local $idx i32)
    (local $part (ref null 6))
    (local $resultArr (ref null 18))
    (local $resultLen i32)
    (local $resultCap i32)
    (local $newArr (ref null 18))
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
      array.new_default 18
      struct.new 34
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
    array.new_default 18
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
      array.new_default 18
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
          array.set 18
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
      struct.new 34
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
            array.new_default 18
            local.tee 11
            i32.const 0
            local.get 8
            i32.const 0
            local.get 9
            array.copy 18 18
            local.get 11
            local.set 8
            )
          )
          local.get 8
          local.get 9
          local.get 7
          array.set 18
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
          array.new_default 18
          local.tee 11
          i32.const 0
          local.get 8
          i32.const 0
          local.get 9
          array.copy 18 18
          local.get 11
          local.set 8
          )
        )
        local.get 8
        local.get 9
        local.get 7
        array.set 18
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
    struct.new 34
  )
  (func $__str_fromCodePoint (type 36)
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
  (func $__str_fromCharCode (type 36)
    i32.const 1
    i32.const 0
    local.get 0
    i32.const 65535
    i32.and
    array.new_fixed 5 1
    struct.new 7
  )
  (func $__regex_escape (type 28)
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
  (func $decodeLength (param (ref null 38)) (result externref)
    (local $__tmp_0 (ref null 38))
    (local $__bounds_idx_1 i32)
    (local $__bounds_arr_2 (ref null 10))
    (local $__bounds_idx_3 i32)
    (local $__bounds_arr_4 (ref null 10))
    (local $__bounds_idx_5 i32)
    (local $__bounds_arr_6 (ref null 10))
    (local $__tmp_7 externref)
    (local $__bounds_idx_8 i32)
    (local $__bounds_arr_9 (ref null 10))
    (local $__tmp_10 externref)
    (local $__tmp_11 externref)
    (local $__tmp_12 externref)
    local.get 0
    local.tee 1
    ref.is_null
    (if
      (then
      i32.const 62
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
      i32.const 56
      i32.const 58
      i32.const 49
      i32.const 48
      array.new_fixed 5 62
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 38 1
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
      i32.const 62
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
      i32.const 56
      i32.const 58
      i32.const 50
      i32.const 50
      array.new_fixed 5 62
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 38 1
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
      i32.const 62
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
      i32.const 56
      i32.const 58
      i32.const 52
      i32.const 48
      array.new_fixed 5 62
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 38 1
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
    call 59
    local.set 8
    local.get 0
    local.tee 1
    ref.is_null
    (if
      (then
      i32.const 62
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
      i32.const 56
      i32.const 58
      i32.const 54
      i32.const 48
      array.new_fixed 5 62
      struct.new 7
      extern.convert_any
      throw 0
      )
    )
    local.get 1
    struct.get 38 1
    i32.const 3
    local.set 9
    local.set 10
    local.get 9
    local.get 10
    array.len
    i32.lt_u
    (if (result i32)
      (then
      local.get 10
      local.get 9
      array.get_u 10
      )
      (else
      i32.const 0
      )
    )
    f64.convert_i32_s
    f64.const 16777216
    f64.mul
    call 59
    local.set 11
    local.get 8
    ref.null extern
    call 94
    local.set 12
    local.get 11
    ref.null extern
    call 94
    local.set 13
    local.get 12
    call 73
    local.get 13
    call 73
    i32.or
    (if (result externref)
      (then
      local.get 12
      call 96
      any.convert_extern
      ref.cast (ref 6)
      local.get 13
      call 96
      any.convert_extern
      ref.cast (ref 6)
      call 4
      extern.convert_any
      )
      (else
      local.get 12
      call 60
      local.get 13
      call 60
      f64.add
      return_call 59
      )
    )
    return
  )
  (func $readFillExact (param externref (ref null 38) f64 f64) (result i32)
    (local $got f64)
    (local $tmp (ref null 38))
    (local $__ta_size_2 i32)
    (local $r externref)
    (local $__dyn_any_4 anyref)
    (local $__dyn_arg0_5 externref)
    (local $__tmp_6 i32)
    (local $i f64)
    (local $__vec_8 (ref null 38))
    (local $__idx_9 i32)
    (local $__bounds_idx_10 i32)
    (local $__bounds_arr_11 (ref null 10))
    (local $__val_12 i32)
    (local $__vec_data_13 (ref null 10))
    (local $__vec_ncap_14 i32)
    (local $__vec_ndata_15 (ref null 10))
    (local $__vec_ocap_16 i32)
    f64.const 0
    local.set 4
    (block
      (loop
        local.get 4
        local.get 3
        f64.lt
        i32.eqz
        br_if 1
        (block
          local.get 3
          local.get 4
          f64.sub
          i32.trunc_sat_f64_s
          local.tee 6
          local.get 6
          array.new_default 10
          struct.new 38
          local.set 5
          local.get 0
          any.convert_extern
          local.set 8
          local.get 5
          extern.convert_any
          local.set 9
          local.get 8
          ref.test (ref 85)
          (if (result i32)
            (then
            local.get 8
            ref.cast (ref 85)
            struct.get 85 0
            ref.test (ref 88)
            )
            (else
            i32.const 0
            )
          )
          (if (result externref)
            (then
            local.get 8
            ref.cast (ref 87)
            local.get 9
            local.get 8
            ref.cast (ref 87)
            struct.get 87 0
            ref.cast (ref 88)
            call_ref 88
            ref.null extern
            )
            (else
            local.get 8
            ref.test (ref 85)
            (if (result i32)
              (then
              local.get 8
              ref.cast (ref 85)
              struct.get 85 0
              ref.test (ref 86)
              )
              (else
              i32.const 0
              )
            )
            (if (result externref)
              (then
              local.get 8
              ref.cast (ref 85)
              local.get 9
              local.get 8
              ref.cast (ref 85)
              struct.get 85 0
              ref.cast (ref 86)
              call_ref 86
              call 59
              )
              (else
              ref.null extern
              )
            )
            )
          )
          local.tee 7
          ref.is_null
          local.tee 10
          (if (result i32)
            (then
            local.get 10
            )
            (else
            local.get 7
            call 60
            f64.const 0
            f64.le
            )
          )
          (if
            (then
            i32.const 0
            return
            )
          )
          f64.const 0
          local.set 11
          (block
            (loop
              local.get 11
              local.get 7
              call 60
              f64.lt
              i32.eqz
              br_if 1
              (block
                local.get 1
                local.tee 12
                ref.is_null
                (if
                  (then
                  ref.null extern
                  throw 0
                  )
                )
                local.get 2
                local.get 4
                f64.add
                local.get 11
                f64.add
                i32.trunc_sat_f64_s
                local.set 13
                local.get 5
                struct.get 38 1
                local.get 11
                i32.trunc_sat_f64_s
                local.set 14
                local.set 15
                local.get 14
                local.get 15
                array.len
                i32.lt_u
                (if (result i32)
                  (then
                  local.get 15
                  local.get 14
                  array.get_u 10
                  )
                  (else
                  i32.const 0
                  )
                )
                local.set 16
                local.get 12
                struct.get 38 1
                local.set 17
                local.get 13
                local.get 17
                array.len
                i32.ge_s
                (if
                  (then
                  local.get 17
                  array.len
                  local.set 20
                  local.get 13
                  i32.const 1
                  i32.add
                  local.set 18
                  local.get 20
                  i32.const 1
                  i32.shl
                  local.get 18
                  i32.gt_s
                  (if
                    (then
                    local.get 20
                    i32.const 1
                    i32.shl
                    local.set 18
                    )
                  )
                  i32.const 4
                  local.get 18
                  i32.gt_s
                  (if
                    (then
                    i32.const 4
                    local.set 18
                    )
                  )
                  local.get 18
                  array.new_default 10
                  local.tee 19
                  i32.const 0
                  local.get 17
                  i32.const 0
                  local.get 20
                  array.copy 10 10
                  local.get 12
                  local.get 19
                  ref.as_non_null
                  struct.set 38 1
                  local.get 19
                  local.set 17
                  )
                )
                local.get 17
                local.get 13
                local.get 16
                array.set 10
                local.get 13
                i32.const 1
                i32.add
                local.get 12
                struct.get 38 0
                i32.gt_s
                (if
                  (then
                  local.get 12
                  local.get 13
                  i32.const 1
                  i32.add
                  struct.set 38 0
                  )
                )
                local.get 11
                f64.const 1
                f64.add
                local.set 11
              )
              br 0
            )
          )
          local.get 4
          local.get 7
          call 60
          f64.add
          local.set 4
        )
        br 0
      )
    )
    i32.const 1
    return
  )
  (func $emitRun (param externref (ref null 38) f64 f64)
    (local $bodyLen externref)
    (local $out (ref null 38))
    (local $k f64)
    (local $__ta_size_3 i32)
    (local $__vec_4 (ref null 38))
    (local $__idx_5 i32)
    (local $__tmp_6 f64)
    (local $__tmp_7 f64)
    (local $__val_8 i32)
    (local $__vec_data_9 (ref null 10))
    (local $__vec_ncap_10 i32)
    (local $__vec_ndata_11 (ref null 10))
    (local $__vec_ocap_12 i32)
    (local $__vec_13 (ref null 38))
    (local $__idx_14 i32)
    (local $__val_15 i32)
    (local $__vec_data_16 (ref null 10))
    (local $__vec_ncap_17 i32)
    (local $__vec_ndata_18 (ref null 10))
    (local $__vec_ocap_19 i32)
    (local $__vec_20 (ref null 38))
    (local $__idx_21 i32)
    (local $__val_22 i32)
    (local $__vec_data_23 (ref null 10))
    (local $__vec_ncap_24 i32)
    (local $__vec_ndata_25 (ref null 10))
    (local $__vec_ocap_26 i32)
    (local $__vec_27 (ref null 38))
    (local $__idx_28 i32)
    (local $__val_29 i32)
    (local $__vec_data_30 (ref null 10))
    (local $__vec_ncap_31 i32)
    (local $__vec_ndata_32 (ref null 10))
    (local $__vec_ocap_33 i32)
    (local $__vec_34 (ref null 38))
    (local $__idx_35 i32)
    (local $__val_36 i32)
    (local $__vec_data_37 (ref null 10))
    (local $__vec_ncap_38 i32)
    (local $__vec_ndata_39 (ref null 10))
    (local $__vec_ocap_40 i32)
    (local $__vec_41 (ref null 38))
    (local $__idx_42 i32)
    (local $__tmp_43 (ref null 38))
    (local $__bounds_idx_44 i32)
    (local $__bounds_arr_45 (ref null 10))
    (local $__val_46 i32)
    (local $__vec_data_47 (ref null 10))
    (local $__vec_ncap_48 i32)
    (local $__vec_ndata_49 (ref null 10))
    (local $__vec_ocap_50 i32)
    (local $__vec_51 (ref null 38))
    (local $__idx_52 i32)
    (local $__val_53 i32)
    (local $__vec_data_54 (ref null 10))
    (local $__vec_ncap_55 i32)
    (local $__vec_ndata_56 (ref null 10))
    (local $__vec_ocap_57 i32)
    (local $__dyn_any_58 anyref)
    (local $__dyn_arg0_59 externref)
    local.get 3
    f64.const 2
    f64.add
    call 59
    local.set 4
    f64.const 4
    local.get 4
    call 60
    f64.add
    i32.trunc_sat_f64_s
    local.tee 7
    local.get 7
    array.new_default 10
    struct.new 38
    local.tee 5
    local.set 8
    i32.const 0
    local.set 9
    local.get 4
    call 60
    f64.const 255
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 12
    local.get 8
    struct.get 38 1
    local.set 13
    local.get 9
    local.get 13
    array.len
    i32.ge_s
    (if
      (then
      local.get 13
      array.len
      local.set 16
      local.get 9
      i32.const 1
      i32.add
      local.set 14
      local.get 16
      i32.const 1
      i32.shl
      local.get 14
      i32.gt_s
      (if
        (then
        local.get 16
        i32.const 1
        i32.shl
        local.set 14
        )
      )
      i32.const 4
      local.get 14
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 14
        )
      )
      local.get 14
      array.new_default 10
      local.tee 15
      i32.const 0
      local.get 13
      i32.const 0
      local.get 16
      array.copy 10 10
      local.get 8
      local.get 15
      ref.as_non_null
      struct.set 38 1
      local.get 15
      local.set 13
      )
    )
    local.get 13
    local.get 9
    local.get 12
    array.set 10
    local.get 9
    i32.const 1
    i32.add
    local.get 8
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 8
      local.get 9
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 17
    i32.const 1
    local.set 18
    local.get 4
    call 60
    f64.const 8
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
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
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 19
    local.get 17
    struct.get 38 1
    local.set 20
    local.get 18
    local.get 20
    array.len
    i32.ge_s
    (if
      (then
      local.get 20
      array.len
      local.set 23
      local.get 18
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
      local.get 17
      local.get 22
      ref.as_non_null
      struct.set 38 1
      local.get 22
      local.set 20
      )
    )
    local.get 20
    local.get 18
    local.get 19
    array.set 10
    local.get 18
    i32.const 1
    i32.add
    local.get 17
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 17
      local.get 18
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 24
    i32.const 2
    local.set 25
    local.get 4
    call 60
    f64.const 16
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
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
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 26
    local.get 24
    struct.get 38 1
    local.set 27
    local.get 25
    local.get 27
    array.len
    i32.ge_s
    (if
      (then
      local.get 27
      array.len
      local.set 30
      local.get 25
      i32.const 1
      i32.add
      local.set 28
      local.get 30
      i32.const 1
      i32.shl
      local.get 28
      i32.gt_s
      (if
        (then
        local.get 30
        i32.const 1
        i32.shl
        local.set 28
        )
      )
      i32.const 4
      local.get 28
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 28
        )
      )
      local.get 28
      array.new_default 10
      local.tee 29
      i32.const 0
      local.get 27
      i32.const 0
      local.get 30
      array.copy 10 10
      local.get 24
      local.get 29
      ref.as_non_null
      struct.set 38 1
      local.get 29
      local.set 27
      )
    )
    local.get 27
    local.get 25
    local.get 26
    array.set 10
    local.get 25
    i32.const 1
    i32.add
    local.get 24
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 24
      local.get 25
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 31
    i32.const 3
    local.set 32
    local.get 4
    call 60
    f64.const 24
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
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
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 33
    local.get 31
    struct.get 38 1
    local.set 34
    local.get 32
    local.get 34
    array.len
    i32.ge_s
    (if
      (then
      local.get 34
      array.len
      local.set 37
      local.get 32
      i32.const 1
      i32.add
      local.set 35
      local.get 37
      i32.const 1
      i32.shl
      local.get 35
      i32.gt_s
      (if
        (then
        local.get 37
        i32.const 1
        i32.shl
        local.set 35
        )
      )
      i32.const 4
      local.get 35
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 35
        )
      )
      local.get 35
      array.new_default 10
      local.tee 36
      i32.const 0
      local.get 34
      i32.const 0
      local.get 37
      array.copy 10 10
      local.get 31
      local.get 36
      ref.as_non_null
      struct.set 38 1
      local.get 36
      local.set 34
      )
    )
    local.get 34
    local.get 32
    local.get 33
    array.set 10
    local.get 32
    i32.const 1
    i32.add
    local.get 31
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 31
      local.get 32
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 38
    i32.const 4
    local.set 39
    global.get 4
    i32.trunc_sat_f64_s
    local.set 40
    local.get 38
    struct.get 38 1
    local.set 41
    local.get 39
    local.get 41
    array.len
    i32.ge_s
    (if
      (then
      local.get 41
      array.len
      local.set 44
      local.get 39
      i32.const 1
      i32.add
      local.set 42
      local.get 44
      i32.const 1
      i32.shl
      local.get 42
      i32.gt_s
      (if
        (then
        local.get 44
        i32.const 1
        i32.shl
        local.set 42
        )
      )
      i32.const 4
      local.get 42
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 42
        )
      )
      local.get 42
      array.new_default 10
      local.tee 43
      i32.const 0
      local.get 41
      i32.const 0
      local.get 44
      array.copy 10 10
      local.get 38
      local.get 43
      ref.as_non_null
      struct.set 38 1
      local.get 43
      local.set 41
      )
    )
    local.get 41
    local.get 39
    local.get 40
    array.set 10
    local.get 39
    i32.const 1
    i32.add
    local.get 38
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 38
      local.get 39
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    f64.const 0
    local.set 6
    (block
      (loop
        local.get 6
        local.get 3
        f64.lt
        i32.eqz
        br_if 1
        (block
          local.get 5
          local.set 45
          f64.const 5
          local.get 6
          f64.add
          i32.trunc_sat_f64_s
          local.set 46
          local.get 1
          local.tee 47
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
            i32.const 51
            i32.const 54
            i32.const 58
            i32.const 49
            i32.const 56
            array.new_fixed 5 63
            struct.new 7
            extern.convert_any
            throw 0
            )
          )
          local.get 47
          struct.get 38 1
          local.get 2
          local.get 6
          f64.add
          i32.trunc_sat_f64_s
          local.set 48
          local.set 49
          local.get 48
          local.get 49
          array.len
          i32.lt_u
          (if (result i32)
            (then
            local.get 49
            local.get 48
            array.get_u 10
            )
            (else
            i32.const 0
            )
          )
          local.set 50
          local.get 45
          struct.get 38 1
          local.set 51
          local.get 46
          local.get 51
          array.len
          i32.ge_s
          (if
            (then
            local.get 51
            array.len
            local.set 54
            local.get 46
            i32.const 1
            i32.add
            local.set 52
            local.get 54
            i32.const 1
            i32.shl
            local.get 52
            i32.gt_s
            (if
              (then
              local.get 54
              i32.const 1
              i32.shl
              local.set 52
              )
            )
            i32.const 4
            local.get 52
            i32.gt_s
            (if
              (then
              i32.const 4
              local.set 52
              )
            )
            local.get 52
            array.new_default 10
            local.tee 53
            i32.const 0
            local.get 51
            i32.const 0
            local.get 54
            array.copy 10 10
            local.get 45
            local.get 53
            ref.as_non_null
            struct.set 38 1
            local.get 53
            local.set 51
            )
          )
          local.get 51
          local.get 46
          local.get 50
          array.set 10
          local.get 46
          i32.const 1
          i32.add
          local.get 45
          struct.get 38 0
          i32.gt_s
          (if
            (then
            local.get 45
            local.get 46
            i32.const 1
            i32.add
            struct.set 38 0
            )
          )
          local.get 6
          f64.const 1
          f64.add
          local.set 6
        )
        br 0
      )
    )
    local.get 5
    local.set 55
    f64.const 4
    local.get 3
    f64.add
    f64.const 1
    f64.add
    i32.trunc_sat_f64_s
    local.set 56
    global.get 5
    i32.trunc_sat_f64_s
    local.set 57
    local.get 55
    struct.get 38 1
    local.set 58
    local.get 56
    local.get 58
    array.len
    i32.ge_s
    (if
      (then
      local.get 58
      array.len
      local.set 61
      local.get 56
      i32.const 1
      i32.add
      local.set 59
      local.get 61
      i32.const 1
      i32.shl
      local.get 59
      i32.gt_s
      (if
        (then
        local.get 61
        i32.const 1
        i32.shl
        local.set 59
        )
      )
      i32.const 4
      local.get 59
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 59
        )
      )
      local.get 59
      array.new_default 10
      local.tee 60
      i32.const 0
      local.get 58
      i32.const 0
      local.get 61
      array.copy 10 10
      local.get 55
      local.get 60
      ref.as_non_null
      struct.set 38 1
      local.get 60
      local.set 58
      )
    )
    local.get 58
    local.get 56
    local.get 57
    array.set 10
    local.get 56
    i32.const 1
    i32.add
    local.get 55
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 55
      local.get 56
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 0
    any.convert_extern
    local.set 62
    local.get 5
    extern.convert_any
    local.set 63
    local.get 62
    ref.test (ref 85)
    (if (result i32)
      (then
      local.get 62
      ref.cast (ref 85)
      struct.get 85 0
      ref.test (ref 88)
      )
      (else
      i32.const 0
      )
    )
    (if (result externref)
      (then
      local.get 62
      ref.cast (ref 87)
      local.get 63
      local.get 62
      ref.cast (ref 87)
      struct.get 87 0
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 62
      ref.test (ref 85)
      (if (result i32)
        (then
        local.get 62
        ref.cast (ref 85)
        struct.get 85 0
        ref.test (ref 86)
        )
        (else
        i32.const 0
        )
      )
      (if (result externref)
        (then
        local.get 62
        ref.cast (ref 85)
        local.get 63
        local.get 62
        ref.cast (ref 85)
        struct.get 85 0
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
    drop
  )
  (func $emitStringRun (param externref externref f64 f64)
    (local $bodyLen externref)
    (local $out (ref null 38))
    (local $k f64)
    (local $__ta_size_3 i32)
    (local $__vec_4 (ref null 38))
    (local $__idx_5 i32)
    (local $__tmp_6 f64)
    (local $__tmp_7 f64)
    (local $__val_8 i32)
    (local $__vec_data_9 (ref null 10))
    (local $__vec_ncap_10 i32)
    (local $__vec_ndata_11 (ref null 10))
    (local $__vec_ocap_12 i32)
    (local $__vec_13 (ref null 38))
    (local $__idx_14 i32)
    (local $__val_15 i32)
    (local $__vec_data_16 (ref null 10))
    (local $__vec_ncap_17 i32)
    (local $__vec_ndata_18 (ref null 10))
    (local $__vec_ocap_19 i32)
    (local $__vec_20 (ref null 38))
    (local $__idx_21 i32)
    (local $__val_22 i32)
    (local $__vec_data_23 (ref null 10))
    (local $__vec_ncap_24 i32)
    (local $__vec_ndata_25 (ref null 10))
    (local $__vec_ocap_26 i32)
    (local $__vec_27 (ref null 38))
    (local $__idx_28 i32)
    (local $__val_29 i32)
    (local $__vec_data_30 (ref null 10))
    (local $__vec_ncap_31 i32)
    (local $__vec_ndata_32 (ref null 10))
    (local $__vec_ocap_33 i32)
    (local $__vec_34 (ref null 38))
    (local $__idx_35 i32)
    (local $__val_36 i32)
    (local $__vec_data_37 (ref null 10))
    (local $__vec_ncap_38 i32)
    (local $__vec_ndata_39 (ref null 10))
    (local $__vec_ocap_40 i32)
    (local $__vec_41 (ref null 38))
    (local $__idx_42 i32)
    (local $__tmp_43 externref)
    (local $__val_44 i32)
    (local $__vec_data_45 (ref null 10))
    (local $__vec_ncap_46 i32)
    (local $__vec_ndata_47 (ref null 10))
    (local $__vec_ocap_48 i32)
    (local $__vec_49 (ref null 38))
    (local $__idx_50 i32)
    (local $__val_51 i32)
    (local $__vec_data_52 (ref null 10))
    (local $__vec_ncap_53 i32)
    (local $__vec_ndata_54 (ref null 10))
    (local $__vec_ocap_55 i32)
    (local $__dyn_any_56 anyref)
    (local $__dyn_arg0_57 externref)
    local.get 3
    f64.const 2
    f64.add
    call 59
    local.set 4
    f64.const 4
    local.get 4
    call 60
    f64.add
    i32.trunc_sat_f64_s
    local.tee 7
    local.get 7
    array.new_default 10
    struct.new 38
    local.tee 5
    local.set 8
    i32.const 0
    local.set 9
    local.get 4
    call 60
    f64.const 255
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 12
    local.get 8
    struct.get 38 1
    local.set 13
    local.get 9
    local.get 13
    array.len
    i32.ge_s
    (if
      (then
      local.get 13
      array.len
      local.set 16
      local.get 9
      i32.const 1
      i32.add
      local.set 14
      local.get 16
      i32.const 1
      i32.shl
      local.get 14
      i32.gt_s
      (if
        (then
        local.get 16
        i32.const 1
        i32.shl
        local.set 14
        )
      )
      i32.const 4
      local.get 14
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 14
        )
      )
      local.get 14
      array.new_default 10
      local.tee 15
      i32.const 0
      local.get 13
      i32.const 0
      local.get 16
      array.copy 10 10
      local.get 8
      local.get 15
      ref.as_non_null
      struct.set 38 1
      local.get 15
      local.set 13
      )
    )
    local.get 13
    local.get 9
    local.get 12
    array.set 10
    local.get 9
    i32.const 1
    i32.add
    local.get 8
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 8
      local.get 9
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 17
    i32.const 1
    local.set 18
    local.get 4
    call 60
    f64.const 8
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
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
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 19
    local.get 17
    struct.get 38 1
    local.set 20
    local.get 18
    local.get 20
    array.len
    i32.ge_s
    (if
      (then
      local.get 20
      array.len
      local.set 23
      local.get 18
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
      local.get 17
      local.get 22
      ref.as_non_null
      struct.set 38 1
      local.get 22
      local.set 20
      )
    )
    local.get 20
    local.get 18
    local.get 19
    array.set 10
    local.get 18
    i32.const 1
    i32.add
    local.get 17
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 17
      local.get 18
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 24
    i32.const 2
    local.set 25
    local.get 4
    call 60
    f64.const 16
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
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
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 26
    local.get 24
    struct.get 38 1
    local.set 27
    local.get 25
    local.get 27
    array.len
    i32.ge_s
    (if
      (then
      local.get 27
      array.len
      local.set 30
      local.get 25
      i32.const 1
      i32.add
      local.set 28
      local.get 30
      i32.const 1
      i32.shl
      local.get 28
      i32.gt_s
      (if
        (then
        local.get 30
        i32.const 1
        i32.shl
        local.set 28
        )
      )
      i32.const 4
      local.get 28
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 28
        )
      )
      local.get 28
      array.new_default 10
      local.tee 29
      i32.const 0
      local.get 27
      i32.const 0
      local.get 30
      array.copy 10 10
      local.get 24
      local.get 29
      ref.as_non_null
      struct.set 38 1
      local.get 29
      local.set 27
      )
    )
    local.get 27
    local.get 25
    local.get 26
    array.set 10
    local.get 25
    i32.const 1
    i32.add
    local.get 24
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 24
      local.get 25
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 31
    i32.const 3
    local.set 32
    local.get 4
    call 60
    f64.const 24
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
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
    local.set 10
    f64.trunc
    local.tee 11
    local.get 11
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    local.get 10
    f64.trunc
    local.tee 10
    local.get 10
    f64.const 4294967296
    f64.div
    f64.floor
    f64.const 4294967296
    f64.mul
    f64.sub
    i32.trunc_sat_f64_u
    i32.and
    f64.convert_i32_s
    i32.trunc_sat_f64_s
    local.set 33
    local.get 31
    struct.get 38 1
    local.set 34
    local.get 32
    local.get 34
    array.len
    i32.ge_s
    (if
      (then
      local.get 34
      array.len
      local.set 37
      local.get 32
      i32.const 1
      i32.add
      local.set 35
      local.get 37
      i32.const 1
      i32.shl
      local.get 35
      i32.gt_s
      (if
        (then
        local.get 37
        i32.const 1
        i32.shl
        local.set 35
        )
      )
      i32.const 4
      local.get 35
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 35
        )
      )
      local.get 35
      array.new_default 10
      local.tee 36
      i32.const 0
      local.get 34
      i32.const 0
      local.get 37
      array.copy 10 10
      local.get 31
      local.get 36
      ref.as_non_null
      struct.set 38 1
      local.get 36
      local.set 34
      )
    )
    local.get 34
    local.get 32
    local.get 33
    array.set 10
    local.get 32
    i32.const 1
    i32.add
    local.get 31
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 31
      local.get 32
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 5
    local.set 38
    i32.const 4
    local.set 39
    global.get 6
    i32.trunc_sat_f64_s
    local.set 40
    local.get 38
    struct.get 38 1
    local.set 41
    local.get 39
    local.get 41
    array.len
    i32.ge_s
    (if
      (then
      local.get 41
      array.len
      local.set 44
      local.get 39
      i32.const 1
      i32.add
      local.set 42
      local.get 44
      i32.const 1
      i32.shl
      local.get 42
      i32.gt_s
      (if
        (then
        local.get 44
        i32.const 1
        i32.shl
        local.set 42
        )
      )
      i32.const 4
      local.get 42
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 42
        )
      )
      local.get 42
      array.new_default 10
      local.tee 43
      i32.const 0
      local.get 41
      i32.const 0
      local.get 44
      array.copy 10 10
      local.get 38
      local.get 43
      ref.as_non_null
      struct.set 38 1
      local.get 43
      local.set 41
      )
    )
    local.get 41
    local.get 39
    local.get 40
    array.set 10
    local.get 39
    i32.const 1
    i32.add
    local.get 38
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 38
      local.get 39
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    f64.const 0
    local.set 6
    (block
      (loop
        local.get 6
        local.get 3
        f64.lt
        i32.eqz
        br_if 1
        (block
          local.get 5
          local.set 45
          f64.const 5
          local.get 6
          f64.add
          i32.trunc_sat_f64_s
          local.set 46
          local.get 1
          local.tee 47
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
            i32.const 53
            i32.const 50
            i32.const 58
            i32.const 49
            i32.const 56
            array.new_fixed 5 63
            struct.new 7
            extern.convert_any
            throw 0
            )
          )
          local.get 47
          local.get 2
          local.get 6
          f64.add
          call 59
          call 56
          call 60
          i32.trunc_sat_f64_s
          local.set 48
          local.get 45
          struct.get 38 1
          local.set 49
          local.get 46
          local.get 49
          array.len
          i32.ge_s
          (if
            (then
            local.get 49
            array.len
            local.set 52
            local.get 46
            i32.const 1
            i32.add
            local.set 50
            local.get 52
            i32.const 1
            i32.shl
            local.get 50
            i32.gt_s
            (if
              (then
              local.get 52
              i32.const 1
              i32.shl
              local.set 50
              )
            )
            i32.const 4
            local.get 50
            i32.gt_s
            (if
              (then
              i32.const 4
              local.set 50
              )
            )
            local.get 50
            array.new_default 10
            local.tee 51
            i32.const 0
            local.get 49
            i32.const 0
            local.get 52
            array.copy 10 10
            local.get 45
            local.get 51
            ref.as_non_null
            struct.set 38 1
            local.get 51
            local.set 49
            )
          )
          local.get 49
          local.get 46
          local.get 48
          array.set 10
          local.get 46
          i32.const 1
          i32.add
          local.get 45
          struct.get 38 0
          i32.gt_s
          (if
            (then
            local.get 45
            local.get 46
            i32.const 1
            i32.add
            struct.set 38 0
            )
          )
          local.get 6
          f64.const 1
          f64.add
          local.set 6
        )
        br 0
      )
    )
    local.get 5
    local.set 53
    f64.const 4
    local.get 3
    f64.add
    f64.const 1
    f64.add
    i32.trunc_sat_f64_s
    local.set 54
    global.get 6
    i32.trunc_sat_f64_s
    local.set 55
    local.get 53
    struct.get 38 1
    local.set 56
    local.get 54
    local.get 56
    array.len
    i32.ge_s
    (if
      (then
      local.get 56
      array.len
      local.set 59
      local.get 54
      i32.const 1
      i32.add
      local.set 57
      local.get 59
      i32.const 1
      i32.shl
      local.get 57
      i32.gt_s
      (if
        (then
        local.get 59
        i32.const 1
        i32.shl
        local.set 57
        )
      )
      i32.const 4
      local.get 57
      i32.gt_s
      (if
        (then
        i32.const 4
        local.set 57
        )
      )
      local.get 57
      array.new_default 10
      local.tee 58
      i32.const 0
      local.get 56
      i32.const 0
      local.get 59
      array.copy 10 10
      local.get 53
      local.get 58
      ref.as_non_null
      struct.set 38 1
      local.get 58
      local.set 56
      )
    )
    local.get 56
    local.get 54
    local.get 55
    array.set 10
    local.get 54
    i32.const 1
    i32.add
    local.get 53
    struct.get 38 0
    i32.gt_s
    (if
      (then
      local.get 53
      local.get 54
      i32.const 1
      i32.add
      struct.set 38 0
      )
    )
    local.get 0
    any.convert_extern
    local.set 60
    local.get 5
    extern.convert_any
    local.set 61
    local.get 60
    ref.test (ref 85)
    (if (result i32)
      (then
      local.get 60
      ref.cast (ref 85)
      struct.get 85 0
      ref.test (ref 88)
      )
      (else
      i32.const 0
      )
    )
    (if (result externref)
      (then
      local.get 60
      ref.cast (ref 87)
      local.get 61
      local.get 60
      ref.cast (ref 87)
      struct.get 87 0
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 60
      ref.test (ref 85)
      (if (result i32)
        (then
        local.get 60
        ref.cast (ref 85)
        struct.get 85 0
        ref.test (ref 86)
        )
        (else
        i32.const 0
        )
      )
      (if (result externref)
        (then
        local.get 60
        ref.cast (ref 85)
        local.get 61
        local.get 60
        ref.cast (ref 85)
        struct.get 85 0
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
    drop
  )
  (func $streamLargeString (param externref externref (ref null 38) f64 f64) (result i32)
    (local $remaining externref)
    (local $runLen externref)
    local.get 3
    call 59
    local.set 5
    (block
      (loop
        local.get 5
        call 60
        f64.const 0
        f64.gt
        i32.eqz
        br_if 1
        (block
          local.get 4
          call 59
          local.set 6
          local.get 5
          call 60
          local.get 6
          call 60
          f64.lt
          (if
            (then
            local.get 5
            local.set 6
            )
          )
          local.get 0
          local.get 2
          f64.const 0
          local.get 6
          call 60
          call 40
          i32.eqz
          (if
            (then
            i32.const 0
            return
            )
          )
          local.get 1
          local.get 2
          extern.convert_any
          f64.const 0
          local.get 6
          call 60
          call 42
          local.get 5
          call 60
          local.get 6
          call 60
          f64.sub
          call 59
          local.set 5
        )
        br 0
      )
    )
    i32.const 1
    return
  )
  (func $runVerbatim (type 44)
    (local $header (ref null 38))
    (local $__ta_size_1 i32)
    (local $declaredLen externref)
    (local $__tmp_3 externref)
    (local $__tmp_4 externref)
    (local $__tmp_5 anyref)
    (local $__tmp_6 anyref)
    (local $__dyn_any_7 anyref)
    (local $__dyn_arg0_8 externref)
    (local $remaining externref)
    (local $run f64)
    (local $chunk (ref null 38))
    (local $__ta_size_12 i32)
    (local $__dyn_any_13 anyref)
    (local $__dyn_arg0_14 externref)
    f64.const 4
    i32.trunc_sat_f64_s
    local.tee 3
    local.get 3
    array.new_default 10
    struct.new 38
    local.set 2
    (block
      (loop
        i32.const 1
        i32.eqz
        br_if 1
        (block
          local.get 0
          local.get 2
          f64.const 0
          f64.const 4
          call 40
          i32.eqz
          (if
            (then
            return
            )
          )
          local.get 2
          call 39
          local.tee 4
          f64.const 0
          call 59
          local.set 5
          local.tee 6
          call 70
          local.get 5
          call 70
          i32.and
          (if (result i32)
            (then
            local.get 6
            call 60
            local.get 5
            call 60
            f64.eq
            )
            (else
            local.get 6
            call 71
            local.get 5
            call 71
            i32.and
            (if (result i32)
              (then
              local.get 6
              call 63
              local.get 5
              call 63
              i32.eq
              )
              (else
              local.get 6
              call 72
              local.get 5
              call 72
              i32.and
              (if (result i32)
                (then
                local.get 6
                call 65
                local.get 5
                call 65
                i64.eq
                )
                (else
                local.get 6
                any.convert_extern
                local.get 5
                any.convert_extern
                local.set 8
                local.tee 7
                ref.test (ref 6)
                local.get 8
                ref.test (ref 6)
                i32.and
                (if (result i32)
                  (then
                  local.get 7
                  ref.cast (ref 6)
                  call 3
                  ref.cast null (ref null 6)
                  local.get 8
                  ref.cast (ref 6)
                  ref.cast null (ref null 6)
                  call 3
                  call 6
                  )
                  (else
                  local.get 7
                  ref.test (ref -19)
                  local.get 8
                  ref.test (ref -19)
                  i32.and
                  (if (result i32)
                    (then
                    local.get 7
                    ref.cast (ref -19)
                    local.get 8
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
          (if
            (then
            return
            )
          )
          local.get 1
          any.convert_extern
          local.set 9
          local.get 2
          extern.convert_any
          local.set 10
          local.get 9
          ref.test (ref 85)
          (if (result i32)
            (then
            local.get 9
            ref.cast (ref 85)
            struct.get 85 0
            ref.test (ref 88)
            )
            (else
            i32.const 0
            )
          )
          (if (result externref)
            (then
            local.get 9
            ref.cast (ref 87)
            local.get 10
            local.get 9
            ref.cast (ref 87)
            struct.get 87 0
            ref.cast (ref 88)
            call_ref 88
            ref.null extern
            )
            (else
            local.get 9
            ref.test (ref 85)
            (if (result i32)
              (then
              local.get 9
              ref.cast (ref 85)
              struct.get 85 0
              ref.test (ref 86)
              )
              (else
              i32.const 0
              )
            )
            (if (result externref)
              (then
              local.get 9
              ref.cast (ref 85)
              local.get 10
              local.get 9
              ref.cast (ref 85)
              struct.get 85 0
              ref.cast (ref 86)
              call_ref 86
              call 59
              )
              (else
              ref.null extern
              )
            )
            )
          )
          drop
          local.get 4
          local.set 11
          (block
            (loop
              local.get 11
              call 60
              f64.const 0
              f64.gt
              i32.eqz
              br_if 1
              (block
                global.get 2
                local.set 12
                local.get 11
                call 60
                local.get 12
                f64.lt
                (if
                  (then
                  local.get 11
                  call 60
                  local.set 12
                  )
                )
                local.get 12
                i32.trunc_sat_f64_s
                local.tee 14
                local.get 14
                array.new_default 10
                struct.new 38
                local.set 13
                local.get 0
                local.get 13
                f64.const 0
                local.get 12
                call 40
                i32.eqz
                (if
                  (then
                  return
                  )
                )
                local.get 1
                any.convert_extern
                local.set 15
                local.get 13
                extern.convert_any
                local.set 16
                local.get 15
                ref.test (ref 85)
                (if (result i32)
                  (then
                  local.get 15
                  ref.cast (ref 85)
                  struct.get 85 0
                  ref.test (ref 88)
                  )
                  (else
                  i32.const 0
                  )
                )
                (if (result externref)
                  (then
                  local.get 15
                  ref.cast (ref 87)
                  local.get 16
                  local.get 15
                  ref.cast (ref 87)
                  struct.get 87 0
                  ref.cast (ref 88)
                  call_ref 88
                  ref.null extern
                  )
                  (else
                  local.get 15
                  ref.test (ref 85)
                  (if (result i32)
                    (then
                    local.get 15
                    ref.cast (ref 85)
                    struct.get 85 0
                    ref.test (ref 86)
                    )
                    (else
                    i32.const 0
                    )
                  )
                  (if (result externref)
                    (then
                    local.get 15
                    ref.cast (ref 85)
                    local.get 16
                    local.get 15
                    ref.cast (ref 85)
                    struct.get 85 0
                    ref.cast (ref 86)
                    call_ref 86
                    call 59
                    )
                    (else
                    ref.null extern
                    )
                  )
                  )
                )
                drop
                local.get 11
                call 60
                local.get 12
                f64.sub
                call 59
                local.set 11
              )
              br 0
            )
          )
        )
        br 0
      )
    )
  )
  (func $runRechunk (type 45)
    (local $maxRun f64)
    (local $header (ref null 38))
    (local $one (ref null 38))
    (local $buf (ref null 38))
    (local $__ta_size_4 i32)
    (local $__ta_size_5 i32)
    (local $__ta_size_6 i32)
    (local $declaredLen externref)
    (local $__tmp_8 externref)
    (local $__tmp_9 externref)
    (local $__tmp_10 anyref)
    (local $__tmp_11 anyref)
    (local $__dyn_any_12 anyref)
    (local $__dyn_arg0_13 externref)
    (local $out (ref null 38))
    (local $__ta_size_15 i32)
    (local $__vec_16 (ref null 38))
    (local $__idx_17 i32)
    (local $__tmp_18 f64)
    (local $__tmp_19 f64)
    (local $__val_20 i32)
    (local $__vec_data_21 (ref null 10))
    (local $__vec_ncap_22 i32)
    (local $__vec_ndata_23 (ref null 10))
    (local $__vec_ocap_24 i32)
    (local $__vec_25 (ref null 38))
    (local $__idx_26 i32)
    (local $__val_27 i32)
    (local $__vec_data_28 (ref null 10))
    (local $__vec_ncap_29 i32)
    (local $__vec_ndata_30 (ref null 10))
    (local $__vec_ocap_31 i32)
    (local $__vec_32 (ref null 38))
    (local $__idx_33 i32)
    (local $__val_34 i32)
    (local $__vec_data_35 (ref null 10))
    (local $__vec_ncap_36 i32)
    (local $__vec_ndata_37 (ref null 10))
    (local $__vec_ocap_38 i32)
    (local $__vec_39 (ref null 38))
    (local $__idx_40 i32)
    (local $__val_41 i32)
    (local $__vec_data_42 (ref null 10))
    (local $__vec_ncap_43 i32)
    (local $__vec_ndata_44 (ref null 10))
    (local $__vec_ocap_45 i32)
    (local $__dyn_any_46 anyref)
    (local $__dyn_arg0_47 externref)
    (local $__taoob_idx_48 i32)
    (local $__taoob_arr_49 (ref null 10))
    (local $__taoob_in_50 i32)
    (local $__bounds_idx_51 i32)
    (local $__bounds_arr_52 (ref null 10))
    (local $__taoob_box_53 externref)
    (local $__taoob_undef_54 externref)
    (local $interiorRemaining f64)
    (local $fill f64)
    (local $truncated i32)
    (local $need f64)
    (local $last f64)
    (local $__tmp_60 i32)
    (local $__taoob_idx_61 i32)
    (local $__taoob_arr_62 (ref null 10))
    (local $__taoob_in_63 i32)
    (local $__bounds_idx_64 i32)
    (local $__bounds_arr_65 (ref null 10))
    (local $__taoob_box_66 externref)
    (local $__taoob_undef_67 externref)
    (local $runLen externref)
    (local $consumed externref)
    (local $rem f64)
    (local $m f64)
    (local $__vec_72 (ref null 38))
    (local $__idx_73 i32)
    (local $__bounds_idx_74 i32)
    (local $__bounds_arr_75 (ref null 10))
    (local $__val_76 i32)
    (local $__vec_data_77 (ref null 10))
    (local $__vec_ncap_78 i32)
    (local $__vec_ndata_79 (ref null 10))
    (local $__vec_ocap_80 i32)
    (local $tmp (ref null 38))
    (local $__ta_size_82 i32)
    (local $t f64)
    (local $__vec_84 (ref null 38))
    (local $__idx_85 i32)
    (local $__bounds_idx_86 i32)
    (local $__bounds_arr_87 (ref null 10))
    (local $__val_88 i32)
    (local $__vec_data_89 (ref null 10))
    (local $__vec_ncap_90 i32)
    (local $__vec_ndata_91 (ref null 10))
    (local $__vec_ocap_92 i32)
    (local $startPos f64)
    (local $stop f64)
    (local $c f64)
    (local $__taoob_idx_96 i32)
    (local $__taoob_arr_97 (ref null 10))
    (local $__taoob_in_98 i32)
    (local $__bounds_idx_99 i32)
    (local $__bounds_arr_100 (ref null 10))
    (local $__taoob_box_101 externref)
    (local $__taoob_undef_102 externref)
    (local $__taoob_idx_103 i32)
    (local $__taoob_arr_104 (ref null 10))
    (local $__taoob_in_105 i32)
    (local $__bounds_idx_106 i32)
    (local $__bounds_arr_107 (ref null 10))
    (local $__taoob_box_108 externref)
    (local $__taoob_undef_109 externref)
    local.get 3
    f64.const 2
    f64.sub
    local.set 4
    f64.const 4
    i32.trunc_sat_f64_s
    local.tee 8
    local.get 8
    array.new_default 10
    struct.new 38
    local.set 5
    f64.const 1
    i32.trunc_sat_f64_s
    local.tee 9
    local.get 9
    array.new_default 10
    struct.new 38
    local.set 6
    local.get 3
    i32.trunc_sat_f64_s
    local.tee 10
    local.get 10
    array.new_default 10
    struct.new 38
    local.set 7
    (block
      (loop
        i32.const 1
        i32.eqz
        br_if 1
        (block
          local.get 0
          local.get 5
          f64.const 0
          f64.const 4
          call 40
          i32.eqz
          (if
            (then
            br 3
            )
          )
          local.get 5
          call 39
          local.tee 11
          f64.const 0
          call 59
          local.set 12
          local.tee 13
          call 70
          local.get 12
          call 70
          i32.and
          (if (result i32)
            (then
            local.get 13
            call 60
            local.get 12
            call 60
            f64.eq
            )
            (else
            local.get 13
            call 71
            local.get 12
            call 71
            i32.and
            (if (result i32)
              (then
              local.get 13
              call 63
              local.get 12
              call 63
              i32.eq
              )
              (else
              local.get 13
              call 72
              local.get 12
              call 72
              i32.and
              (if (result i32)
                (then
                local.get 13
                call 65
                local.get 12
                call 65
                i64.eq
                )
                (else
                local.get 13
                any.convert_extern
                local.get 12
                any.convert_extern
                local.set 15
                local.tee 14
                ref.test (ref 6)
                local.get 15
                ref.test (ref 6)
                i32.and
                (if (result i32)
                  (then
                  local.get 14
                  ref.cast (ref 6)
                  call 3
                  ref.cast null (ref null 6)
                  local.get 15
                  ref.cast (ref 6)
                  ref.cast null (ref null 6)
                  call 3
                  call 6
                  )
                  (else
                  local.get 14
                  ref.test (ref -19)
                  local.get 15
                  ref.test (ref -19)
                  i32.and
                  (if (result i32)
                    (then
                    local.get 14
                    ref.cast (ref -19)
                    local.get 15
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
          (if
            (then
            br 3
            )
          )
          local.get 2
          any.convert_extern
          local.set 16
          local.get 11
          local.set 17
          local.get 16
          ref.test (ref 85)
          (if (result i32)
            (then
            local.get 16
            ref.cast (ref 85)
            struct.get 85 0
            ref.test (ref 88)
            )
            (else
            i32.const 0
            )
          )
          (if (result externref)
            (then
            local.get 16
            ref.cast (ref 87)
            local.get 17
            local.get 16
            ref.cast (ref 87)
            struct.get 87 0
            ref.cast (ref 88)
            call_ref 88
            ref.null extern
            )
            (else
            local.get 16
            ref.test (ref 85)
            (if (result i32)
              (then
              local.get 16
              ref.cast (ref 85)
              struct.get 85 0
              ref.test (ref 86)
              )
              (else
              i32.const 0
              )
            )
            (if (result externref)
              (then
              local.get 16
              ref.cast (ref 85)
              local.get 17
              local.get 16
              ref.cast (ref 85)
              struct.get 85 0
              ref.cast (ref 86)
              call_ref 86
              call 59
              )
              (else
              ref.null extern
              )
            )
            )
          )
          drop
          local.get 11
          call 60
          local.get 3
          f64.le
          (if
            (then
            f64.const 4
            local.get 11
            call 60
            f64.add
            i32.trunc_sat_f64_s
            local.tee 19
            local.get 19
            array.new_default 10
            struct.new 38
            local.tee 18
            local.set 20
            i32.const 0
            local.set 21
            local.get 11
            call 60
            f64.const 255
            local.set 22
            f64.trunc
            local.tee 23
            local.get 23
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            local.get 22
            f64.trunc
            local.tee 22
            local.get 22
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            i32.and
            f64.convert_i32_s
            i32.trunc_sat_f64_s
            local.set 24
            local.get 20
            struct.get 38 1
            local.set 25
            local.get 21
            local.get 25
            array.len
            i32.ge_s
            (if
              (then
              local.get 25
              array.len
              local.set 28
              local.get 21
              i32.const 1
              i32.add
              local.set 26
              local.get 28
              i32.const 1
              i32.shl
              local.get 26
              i32.gt_s
              (if
                (then
                local.get 28
                i32.const 1
                i32.shl
                local.set 26
                )
              )
              i32.const 4
              local.get 26
              i32.gt_s
              (if
                (then
                i32.const 4
                local.set 26
                )
              )
              local.get 26
              array.new_default 10
              local.tee 27
              i32.const 0
              local.get 25
              i32.const 0
              local.get 28
              array.copy 10 10
              local.get 20
              local.get 27
              ref.as_non_null
              struct.set 38 1
              local.get 27
              local.set 25
              )
            )
            local.get 25
            local.get 21
            local.get 24
            array.set 10
            local.get 21
            i32.const 1
            i32.add
            local.get 20
            struct.get 38 0
            i32.gt_s
            (if
              (then
              local.get 20
              local.get 21
              i32.const 1
              i32.add
              struct.set 38 0
              )
            )
            local.get 18
            local.set 29
            i32.const 1
            local.set 30
            local.get 11
            call 60
            f64.const 8
            local.set 22
            f64.trunc
            local.tee 23
            local.get 23
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            local.get 22
            f64.trunc
            local.tee 22
            local.get 22
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
            local.set 22
            f64.trunc
            local.tee 23
            local.get 23
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            local.get 22
            f64.trunc
            local.tee 22
            local.get 22
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            i32.and
            f64.convert_i32_s
            i32.trunc_sat_f64_s
            local.set 31
            local.get 29
            struct.get 38 1
            local.set 32
            local.get 30
            local.get 32
            array.len
            i32.ge_s
            (if
              (then
              local.get 32
              array.len
              local.set 35
              local.get 30
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
              local.get 29
              local.get 34
              ref.as_non_null
              struct.set 38 1
              local.get 34
              local.set 32
              )
            )
            local.get 32
            local.get 30
            local.get 31
            array.set 10
            local.get 30
            i32.const 1
            i32.add
            local.get 29
            struct.get 38 0
            i32.gt_s
            (if
              (then
              local.get 29
              local.get 30
              i32.const 1
              i32.add
              struct.set 38 0
              )
            )
            local.get 18
            local.set 36
            i32.const 2
            local.set 37
            local.get 11
            call 60
            f64.const 16
            local.set 22
            f64.trunc
            local.tee 23
            local.get 23
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            local.get 22
            f64.trunc
            local.tee 22
            local.get 22
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
            local.set 22
            f64.trunc
            local.tee 23
            local.get 23
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            local.get 22
            f64.trunc
            local.tee 22
            local.get 22
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            i32.and
            f64.convert_i32_s
            i32.trunc_sat_f64_s
            local.set 38
            local.get 36
            struct.get 38 1
            local.set 39
            local.get 37
            local.get 39
            array.len
            i32.ge_s
            (if
              (then
              local.get 39
              array.len
              local.set 42
              local.get 37
              i32.const 1
              i32.add
              local.set 40
              local.get 42
              i32.const 1
              i32.shl
              local.get 40
              i32.gt_s
              (if
                (then
                local.get 42
                i32.const 1
                i32.shl
                local.set 40
                )
              )
              i32.const 4
              local.get 40
              i32.gt_s
              (if
                (then
                i32.const 4
                local.set 40
                )
              )
              local.get 40
              array.new_default 10
              local.tee 41
              i32.const 0
              local.get 39
              i32.const 0
              local.get 42
              array.copy 10 10
              local.get 36
              local.get 41
              ref.as_non_null
              struct.set 38 1
              local.get 41
              local.set 39
              )
            )
            local.get 39
            local.get 37
            local.get 38
            array.set 10
            local.get 37
            i32.const 1
            i32.add
            local.get 36
            struct.get 38 0
            i32.gt_s
            (if
              (then
              local.get 36
              local.get 37
              i32.const 1
              i32.add
              struct.set 38 0
              )
            )
            local.get 18
            local.set 43
            i32.const 3
            local.set 44
            local.get 11
            call 60
            f64.const 24
            local.set 22
            f64.trunc
            local.tee 23
            local.get 23
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            local.get 22
            f64.trunc
            local.tee 22
            local.get 22
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
            local.set 22
            f64.trunc
            local.tee 23
            local.get 23
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            local.get 22
            f64.trunc
            local.tee 22
            local.get 22
            f64.const 4294967296
            f64.div
            f64.floor
            f64.const 4294967296
            f64.mul
            f64.sub
            i32.trunc_sat_f64_u
            i32.and
            f64.convert_i32_s
            i32.trunc_sat_f64_s
            local.set 45
            local.get 43
            struct.get 38 1
            local.set 46
            local.get 44
            local.get 46
            array.len
            i32.ge_s
            (if
              (then
              local.get 46
              array.len
              local.set 49
              local.get 44
              i32.const 1
              i32.add
              local.set 47
              local.get 49
              i32.const 1
              i32.shl
              local.get 47
              i32.gt_s
              (if
                (then
                local.get 49
                i32.const 1
                i32.shl
                local.set 47
                )
              )
              i32.const 4
              local.get 47
              i32.gt_s
              (if
                (then
                i32.const 4
                local.set 47
                )
              )
              local.get 47
              array.new_default 10
              local.tee 48
              i32.const 0
              local.get 46
              i32.const 0
              local.get 49
              array.copy 10 10
              local.get 43
              local.get 48
              ref.as_non_null
              struct.set 38 1
              local.get 48
              local.set 46
              )
            )
            local.get 46
            local.get 44
            local.get 45
            array.set 10
            local.get 44
            i32.const 1
            i32.add
            local.get 43
            struct.get 38 0
            i32.gt_s
            (if
              (then
              local.get 43
              local.get 44
              i32.const 1
              i32.add
              struct.set 38 0
              )
            )
            local.get 0
            local.get 18
            f64.const 4
            local.get 11
            call 60
            call 40
            i32.eqz
            (if
              (then
              br 4
              )
            )
            local.get 1
            any.convert_extern
            local.set 50
            local.get 18
            extern.convert_any
            local.set 51
            local.get 50
            ref.test (ref 85)
            (if (result i32)
              (then
              local.get 50
              ref.cast (ref 85)
              struct.get 85 0
              ref.test (ref 88)
              )
              (else
              i32.const 0
              )
            )
            (if (result externref)
              (then
              local.get 50
              ref.cast (ref 87)
              local.get 51
              local.get 50
              ref.cast (ref 87)
              struct.get 87 0
              ref.cast (ref 88)
              call_ref 88
              ref.null extern
              )
              (else
              local.get 50
              ref.test (ref 85)
              (if (result i32)
                (then
                local.get 50
                ref.cast (ref 85)
                struct.get 85 0
                ref.test (ref 86)
                )
                (else
                i32.const 0
                )
              )
              (if (result externref)
                (then
                local.get 50
                ref.cast (ref 85)
                local.get 51
                local.get 50
                ref.cast (ref 85)
                struct.get 85 0
                ref.cast (ref 86)
                call_ref 86
                call 59
                )
                (else
                ref.null extern
                )
              )
              )
            )
            drop
            br 1
            )
          )
          local.get 0
          local.get 6
          f64.const 0
          f64.const 1
          call 40
          i32.eqz
          (if
            (then
            br 3
            )
          )
          local.get 6
          struct.get 38 1
          i32.const 0
          local.set 52
          local.set 53
          local.get 52
          local.get 53
          array.len
          i32.lt_u
          local.set 54
          local.get 53
          local.get 52
          local.set 55
          local.set 56
          local.get 55
          local.get 56
          array.len
          i32.lt_u
          (if (result i32)
            (then
            local.get 56
            local.get 55
            array.get_u 10
            )
            (else
            i32.const 0
            )
          )
          f64.convert_i32_s
          call 59
          local.set 57
          ref.null extern
          local.set 58
          local.get 54
          (if (result externref)
            (then
            local.get 57
            )
            (else
            local.get 58
            )
          )
          global.get 6
          call 59
          local.set 13
          local.tee 12
          call 70
          local.get 13
          call 70
          i32.and
          (if (result i32)
            (then
            local.get 12
            call 60
            local.get 13
            call 60
            f64.eq
            )
            (else
            local.get 12
            call 71
            local.get 13
            call 71
            i32.and
            (if (result i32)
              (then
              local.get 12
              call 63
              local.get 13
              call 63
              i32.eq
              )
              (else
              local.get 12
              call 72
              local.get 13
              call 72
              i32.and
              (if (result i32)
                (then
                local.get 12
                call 65
                local.get 13
                call 65
                i64.eq
                )
                (else
                local.get 12
                any.convert_extern
                local.get 13
                any.convert_extern
                local.set 14
                local.tee 15
                ref.test (ref 6)
                local.get 14
                ref.test (ref 6)
                i32.and
                (if (result i32)
                  (then
                  local.get 15
                  ref.cast (ref 6)
                  call 3
                  ref.cast null (ref null 6)
                  local.get 14
                  ref.cast (ref 6)
                  ref.cast null (ref null 6)
                  call 3
                  call 6
                  )
                  (else
                  local.get 15
                  ref.test (ref -19)
                  local.get 14
                  ref.test (ref -19)
                  i32.and
                  (if (result i32)
                    (then
                    local.get 15
                    ref.cast (ref -19)
                    local.get 14
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
          (if
            (then
            local.get 0
            local.get 1
            local.get 7
            local.get 11
            call 60
            f64.const 2
            f64.sub
            local.get 4
            call 43
            i32.eqz
            (if
              (then
              br 4
              )
            )
            local.get 0
            local.get 6
            f64.const 0
            f64.const 1
            call 40
            i32.eqz
            (if
              (then
              br 4
              )
            )
            br 1
            )
          )
          local.get 11
          call 60
          f64.const 2
          f64.sub
          local.set 59
          f64.const 0
          local.set 60
          i32.const 0
          local.set 61
          (block
            (loop
              local.get 59
              f64.const 0
              f64.gt
              i32.eqz
              br_if 1
              (block
                local.get 3
                local.get 60
                f64.sub
                local.set 62
                local.get 59
                local.get 62
                f64.ge
                (if
                  (then
                  local.get 0
                  local.get 7
                  local.get 60
                  local.get 62
                  call 40
                  i32.eqz
                  (if
                    (then
                    i32.const 1
                    local.set 61
                    br 4
                    )
                  )
                  local.get 3
                  local.set 60
                  local.get 59
                  local.get 62
                  f64.sub
                  local.set 59
                  local.get 4
                  local.set 63
                  (block
                    (loop
                      local.get 63
                      f64.const 0
                      f64.gt
                      local.tee 64
                      (if (result i32)
                        (then
                        local.get 7
                        struct.get 38 1
                        local.get 63
                        f64.const 1
                        f64.sub
                        i32.trunc_sat_f64_s
                        local.set 65
                        local.set 66
                        local.get 65
                        local.get 66
                        array.len
                        i32.lt_u
                        local.set 67
                        local.get 66
                        local.get 65
                        local.set 68
                        local.set 69
                        local.get 68
                        local.get 69
                        array.len
                        i32.lt_u
                        (if (result i32)
                          (then
                          local.get 69
                          local.get 68
                          array.get_u 10
                          )
                          (else
                          i32.const 0
                          )
                        )
                        f64.convert_i32_s
                        call 59
                        local.set 70
                        ref.null extern
                        local.set 71
                        local.get 67
                        (if (result externref)
                          (then
                          local.get 70
                          )
                          (else
                          local.get 71
                          )
                        )
                        global.get 3
                        call 59
                        local.set 12
                        local.tee 13
                        call 70
                        local.get 12
                        call 70
                        i32.and
                        (if (result i32)
                          (then
                          local.get 13
                          call 60
                          local.get 12
                          call 60
                          f64.eq
                          )
                          (else
                          local.get 13
                          call 71
                          local.get 12
                          call 71
                          i32.and
                          (if (result i32)
                            (then
                            local.get 13
                            call 63
                            local.get 12
                            call 63
                            i32.eq
                            )
                            (else
                            local.get 13
                            call 72
                            local.get 12
                            call 72
                            i32.and
                            (if (result i32)
                              (then
                              local.get 13
                              call 65
                              local.get 12
                              call 65
                              i64.eq
                              )
                              (else
                              local.get 13
                              any.convert_extern
                              local.get 12
                              any.convert_extern
                              local.set 15
                              local.tee 14
                              ref.test (ref 6)
                              local.get 15
                              ref.test (ref 6)
                              i32.and
                              (if (result i32)
                                (then
                                local.get 14
                                ref.cast (ref 6)
                                call 3
                                ref.cast null (ref null 6)
                                local.get 15
                                ref.cast (ref 6)
                                ref.cast null (ref null 6)
                                call 3
                                call 6
                                )
                                (else
                                local.get 14
                                ref.test (ref -19)
                                local.get 15
                                ref.test (ref -19)
                                i32.and
                                (if (result i32)
                                  (then
                                  local.get 14
                                  ref.cast (ref -19)
                                  local.get 15
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
                        i32.eqz
                        )
                        (else
                        local.get 64
                        )
                      )
                      i32.eqz
                      br_if 1
                      (block
                        local.get 63
                        f64.const 1
                        f64.sub
                        local.set 63
                      )
                      br 0
                    )
                  )
                  ref.null extern
                  local.set 72
                  ref.null extern
                  local.set 73
                  local.get 63
                  f64.const 0
                  f64.eq
                  (if
                    (then
                    local.get 4
                    call 59
                    local.set 72
                    local.get 4
                    call 59
                    local.set 73
                    )
                    (else
                    local.get 63
                    f64.const 1
                    f64.sub
                    call 59
                    local.set 72
                    local.get 63
                    call 59
                    local.set 73
                    )
                  )
                  local.get 1
                  local.get 7
                  f64.const 0
                  local.get 72
                  call 60
                  call 41
                  local.get 60
                  local.get 73
                  call 60
                  f64.sub
                  local.set 74
                  f64.const 0
                  local.set 75
                  (block
                    (loop
                      local.get 75
                      local.get 74
                      f64.lt
                      i32.eqz
                      br_if 1
                      (block
                        local.get 7
                        local.set 76
                        local.get 75
                        i32.trunc_sat_f64_s
                        local.set 77
                        local.get 7
                        struct.get 38 1
                        local.get 73
                        call 60
                        local.get 75
                        f64.add
                        i32.trunc_sat_f64_s
                        local.set 78
                        local.set 79
                        local.get 78
                        local.get 79
                        array.len
                        i32.lt_u
                        (if (result i32)
                          (then
                          local.get 79
                          local.get 78
                          array.get_u 10
                          )
                          (else
                          i32.const 0
                          )
                        )
                        local.set 80
                        local.get 76
                        struct.get 38 1
                        local.set 81
                        local.get 77
                        local.get 81
                        array.len
                        i32.ge_s
                        (if
                          (then
                          local.get 81
                          array.len
                          local.set 84
                          local.get 77
                          i32.const 1
                          i32.add
                          local.set 82
                          local.get 84
                          i32.const 1
                          i32.shl
                          local.get 82
                          i32.gt_s
                          (if
                            (then
                            local.get 84
                            i32.const 1
                            i32.shl
                            local.set 82
                            )
                          )
                          i32.const 4
                          local.get 82
                          i32.gt_s
                          (if
                            (then
                            i32.const 4
                            local.set 82
                            )
                          )
                          local.get 82
                          array.new_default 10
                          local.tee 83
                          i32.const 0
                          local.get 81
                          i32.const 0
                          local.get 84
                          array.copy 10 10
                          local.get 76
                          local.get 83
                          ref.as_non_null
                          struct.set 38 1
                          local.get 83
                          local.set 81
                          )
                        )
                        local.get 81
                        local.get 77
                        local.get 80
                        array.set 10
                        local.get 77
                        i32.const 1
                        i32.add
                        local.get 76
                        struct.get 38 0
                        i32.gt_s
                        (if
                          (then
                          local.get 76
                          local.get 77
                          i32.const 1
                          i32.add
                          struct.set 38 0
                          )
                        )
                        local.get 75
                        f64.const 1
                        f64.add
                        local.set 75
                      )
                      br 0
                    )
                  )
                  local.get 74
                  local.set 60
                  )
                  (else
                  local.get 59
                  i32.trunc_sat_f64_s
                  local.tee 86
                  local.get 86
                  array.new_default 10
                  struct.new 38
                  local.set 85
                  local.get 0
                  local.get 85
                  f64.const 0
                  local.get 59
                  call 40
                  i32.eqz
                  (if
                    (then
                    i32.const 1
                    local.set 61
                    br 4
                    )
                  )
                  f64.const 0
                  local.set 87
                  (block
                    (loop
                      local.get 87
                      local.get 59
                      f64.lt
                      i32.eqz
                      br_if 1
                      (block
                        local.get 7
                        local.set 88
                        local.get 60
                        local.get 87
                        f64.add
                        i32.trunc_sat_f64_s
                        local.set 89
                        local.get 85
                        struct.get 38 1
                        local.get 87
                        i32.trunc_sat_f64_s
                        local.set 90
                        local.set 91
                        local.get 90
                        local.get 91
                        array.len
                        i32.lt_u
                        (if (result i32)
                          (then
                          local.get 91
                          local.get 90
                          array.get_u 10
                          )
                          (else
                          i32.const 0
                          )
                        )
                        local.set 92
                        local.get 88
                        struct.get 38 1
                        local.set 93
                        local.get 89
                        local.get 93
                        array.len
                        i32.ge_s
                        (if
                          (then
                          local.get 93
                          array.len
                          local.set 96
                          local.get 89
                          i32.const 1
                          i32.add
                          local.set 94
                          local.get 96
                          i32.const 1
                          i32.shl
                          local.get 94
                          i32.gt_s
                          (if
                            (then
                            local.get 96
                            i32.const 1
                            i32.shl
                            local.set 94
                            )
                          )
                          i32.const 4
                          local.get 94
                          i32.gt_s
                          (if
                            (then
                            i32.const 4
                            local.set 94
                            )
                          )
                          local.get 94
                          array.new_default 10
                          local.tee 95
                          i32.const 0
                          local.get 93
                          i32.const 0
                          local.get 96
                          array.copy 10 10
                          local.get 88
                          local.get 95
                          ref.as_non_null
                          struct.set 38 1
                          local.get 95
                          local.set 93
                          )
                        )
                        local.get 93
                        local.get 89
                        local.get 92
                        array.set 10
                        local.get 89
                        i32.const 1
                        i32.add
                        local.get 88
                        struct.get 38 0
                        i32.gt_s
                        (if
                          (then
                          local.get 88
                          local.get 89
                          i32.const 1
                          i32.add
                          struct.set 38 0
                          )
                        )
                        local.get 87
                        f64.const 1
                        f64.add
                        local.set 87
                      )
                      br 0
                    )
                  )
                  local.get 60
                  local.get 59
                  f64.add
                  local.set 60
                  f64.const 0
                  local.set 59
                  f64.const 0
                  local.set 97
                  (block
                    (loop
                      local.get 97
                      local.get 60
                      f64.lt
                      i32.eqz
                      br_if 1
                      (block
                        local.get 97
                        local.get 4
                        f64.add
                        local.tee 98
                        local.get 60
                        f64.ge
                        (if
                          (then
                          local.get 60
                          local.set 98
                          )
                          (else
                          local.get 98
                          local.set 99
                          (block
                            (loop
                              local.get 99
                              local.get 97
                              f64.gt
                              local.tee 64
                              (if (result i32)
                                (then
                                local.get 7
                                struct.get 38 1
                                local.get 99
                                f64.const 1
                                f64.sub
                                i32.trunc_sat_f64_s
                                local.set 100
                                local.set 101
                                local.get 100
                                local.get 101
                                array.len
                                i32.lt_u
                                local.set 102
                                local.get 101
                                local.get 100
                                local.set 103
                                local.set 104
                                local.get 103
                                local.get 104
                                array.len
                                i32.lt_u
                                (if (result i32)
                                  (then
                                  local.get 104
                                  local.get 103
                                  array.get_u 10
                                  )
                                  (else
                                  i32.const 0
                                  )
                                )
                                f64.convert_i32_s
                                call 59
                                local.set 105
                                ref.null extern
                                local.set 106
                                local.get 102
                                (if (result externref)
                                  (then
                                  local.get 105
                                  )
                                  (else
                                  local.get 106
                                  )
                                )
                                global.get 3
                                call 59
                                local.set 13
                                local.tee 12
                                call 70
                                local.get 13
                                call 70
                                i32.and
                                (if (result i32)
                                  (then
                                  local.get 12
                                  call 60
                                  local.get 13
                                  call 60
                                  f64.eq
                                  )
                                  (else
                                  local.get 12
                                  call 71
                                  local.get 13
                                  call 71
                                  i32.and
                                  (if (result i32)
                                    (then
                                    local.get 12
                                    call 63
                                    local.get 13
                                    call 63
                                    i32.eq
                                    )
                                    (else
                                    local.get 12
                                    call 72
                                    local.get 13
                                    call 72
                                    i32.and
                                    (if (result i32)
                                      (then
                                      local.get 12
                                      call 65
                                      local.get 13
                                      call 65
                                      i64.eq
                                      )
                                      (else
                                      local.get 12
                                      any.convert_extern
                                      local.get 13
                                      any.convert_extern
                                      local.set 14
                                      local.tee 15
                                      ref.test (ref 6)
                                      local.get 14
                                      ref.test (ref 6)
                                      i32.and
                                      (if (result i32)
                                        (then
                                        local.get 15
                                        ref.cast (ref 6)
                                        call 3
                                        ref.cast null (ref null 6)
                                        local.get 14
                                        ref.cast (ref 6)
                                        ref.cast null (ref null 6)
                                        call 3
                                        call 6
                                        )
                                        (else
                                        local.get 15
                                        ref.test (ref -19)
                                        local.get 14
                                        ref.test (ref -19)
                                        i32.and
                                        (if (result i32)
                                          (then
                                          local.get 15
                                          ref.cast (ref -19)
                                          local.get 14
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
                                i32.eqz
                                )
                                (else
                                local.get 64
                                )
                              )
                              i32.eqz
                              br_if 1
                              (block
                                local.get 99
                                f64.const 1
                                f64.sub
                                local.set 99
                              )
                              br 0
                            )
                          )
                          local.get 99
                          local.get 97
                          f64.gt
                          (if
                            (then
                            local.get 99
                            f64.const 1
                            f64.sub
                            local.set 98
                            )
                          )
                          )
                        )
                        local.get 1
                        local.get 7
                        local.get 97
                        local.get 98
                        local.get 97
                        f64.sub
                        call 41
                        local.get 98
                        local.set 97
                        local.get 97
                        local.get 60
                        f64.lt
                        local.tee 64
                        (if (result i32)
                          (then
                          local.get 7
                          struct.get 38 1
                          local.get 97
                          i32.trunc_sat_f64_s
                          local.set 107
                          local.set 108
                          local.get 107
                          local.get 108
                          array.len
                          i32.lt_u
                          local.set 109
                          local.get 108
                          local.get 107
                          local.set 110
                          local.set 111
                          local.get 110
                          local.get 111
                          array.len
                          i32.lt_u
                          (if (result i32)
                            (then
                            local.get 111
                            local.get 110
                            array.get_u 10
                            )
                            (else
                            i32.const 0
                            )
                          )
                          f64.convert_i32_s
                          call 59
                          local.set 112
                          ref.null extern
                          local.set 113
                          local.get 109
                          (if (result externref)
                            (then
                            local.get 112
                            )
                            (else
                            local.get 113
                            )
                          )
                          global.get 3
                          call 59
                          local.set 12
                          local.tee 13
                          call 70
                          local.get 12
                          call 70
                          i32.and
                          (if (result i32)
                            (then
                            local.get 13
                            call 60
                            local.get 12
                            call 60
                            f64.eq
                            )
                            (else
                            local.get 13
                            call 71
                            local.get 12
                            call 71
                            i32.and
                            (if (result i32)
                              (then
                              local.get 13
                              call 63
                              local.get 12
                              call 63
                              i32.eq
                              )
                              (else
                              local.get 13
                              call 72
                              local.get 12
                              call 72
                              i32.and
                              (if (result i32)
                                (then
                                local.get 13
                                call 65
                                local.get 12
                                call 65
                                i64.eq
                                )
                                (else
                                local.get 13
                                any.convert_extern
                                local.get 12
                                any.convert_extern
                                local.set 15
                                local.tee 14
                                ref.test (ref 6)
                                local.get 15
                                ref.test (ref 6)
                                i32.and
                                (if (result i32)
                                  (then
                                  local.get 14
                                  ref.cast (ref 6)
                                  call 3
                                  ref.cast null (ref null 6)
                                  local.get 15
                                  ref.cast (ref 6)
                                  ref.cast null (ref null 6)
                                  call 3
                                  call 6
                                  )
                                  (else
                                  local.get 14
                                  ref.test (ref -19)
                                  local.get 15
                                  ref.test (ref -19)
                                  i32.and
                                  (if (result i32)
                                    (then
                                    local.get 14
                                    ref.cast (ref -19)
                                    local.get 15
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
                          (else
                          local.get 64
                          )
                        )
                        (if
                          (then
                          local.get 97
                          f64.const 1
                          f64.add
                          local.set 97
                          )
                        )
                      )
                      br 0
                    )
                  )
                  f64.const 0
                  local.set 60
                  )
                )
              )
              br 0
            )
          )
          local.get 61
          (if
            (then
            br 3
            )
          )
          local.get 0
          local.get 6
          f64.const 0
          f64.const 1
          call 40
          i32.eqz
          (if
            (then
            br 3
            )
          )
        )
        br 0
      )
    )
  )
  (func $runNmHost (type 45)
    local.get 3
    f64.const 0
    f64.gt
    (if
      (then
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call 45
      )
      (else
      local.get 0
      local.get 1
      call 44
      )
    )
  )
  (func $denoRead (type 46)
    (local $__deno_fd_0 i32)
    (local $__deno_nread_1 i32)
    (local $__nodefs_vec_2 (ref null 38))
    (local $__nodefs_buflen_3 i32)
    (local $__nodefs_arr_4 (ref null 10))
    (local $__nodefs_pages_5 i32)
    (local $__deno_rscratch_6 i32)
    (local $__deno_off0_7 i32)
    (local $__nodefs_j_8 i32)
    i32.const 0
    local.set 1
    local.get 0
    any.convert_extern
    ref.cast (ref 38)
    local.tee 3
    struct.get 38 0
    local.set 4
    local.get 3
    struct.get 38 1
    local.set 5
    i32.const 65536
    local.get 4
    i32.add
    i32.const 65535
    i32.add
    i32.const 16
    i32.shr_u
    local.tee 6
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
    i32.const 65536
    local.set 7
    i32.const 340
    local.get 7
    i32.store offset=0 align=4
    i32.const 344
    local.get 4
    i32.store offset=0 align=4
    local.get 1
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
    local.set 2
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    (block
      (loop
        local.get 9
        local.get 2
        i32.ge_s
        br_if 1
        local.get 5
        local.get 8
        local.get 9
        i32.add
        i32.const 65536
        local.get 9
        i32.add
        i32.load8_u offset=0 align=1
        array.set 10
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        br 0
      )
    )
    local.get 2
    i32.const 0
    i32.gt_s
    (if (result externref)
      (then
      local.get 2
      f64.convert_i32_s
      call 59
      )
      (else
      ref.null extern
      )
    )
    return_call 60
  )
  (func $denoWrite (type 47)
    (local $rest externref)
    (local $__dg_recv_1 externref)
    (local $__dg_any_2 anyref)
    (local $w f64)
    (local $__deno_fd_4 i32)
    (local $__nodefs_vec_5 (ref null 38))
    (local $__nodefs_buflen_6 i32)
    (local $__nodefs_arr_7 (ref null 10))
    (local $__nodefs_pages_8 i32)
    (local $__deno_off0_9 i32)
    (local $__nodefs_wj_10 i32)
    (local $__deno_wscratch_11 i32)
    (local $__dg_recv_12 externref)
    (local $__dg_any_13 anyref)
    (local $tail (ref null 38))
    (local $__dg_recv_15 externref)
    (local $__dg_any_16 anyref)
    (local $__ta_size_17 i32)
    (local $i f64)
    (local $__vec_19 (ref null 38))
    (local $__idx_20 i32)
    (local $__tmp_21 externref)
    (local $__nve_recv_22 externref)
    (local $__nve_idx_23 f64)
    (local $__nve_any_24 anyref)
    (local $__val_25 i32)
    (local $__vec_data_26 (ref null 10))
    (local $__vec_ncap_27 i32)
    (local $__vec_ndata_28 (ref null 10))
    (local $__vec_ocap_29 i32)
    local.get 0
    local.set 1
    (block
      (loop
        local.get 1
        local.tee 2
        any.convert_extern
        local.set 3
        local.get 2
        call 127
        (if (result externref)
          (then
          f64.const 0
          call 59
          )
          (else
          local.get 3
          ref.test (ref 2)
          (if (result externref)
            (then
            local.get 3
            ref.cast (ref 2)
            struct.get 2 0
            f64.convert_i32_s
            call 59
            )
            (else
            local.get 3
            ref.test (ref 4)
            (if (result externref)
              (then
              local.get 3
              ref.cast (ref 4)
              struct.get 4 0
              f64.convert_i32_s
              call 59
              )
              (else
              local.get 3
              ref.test (ref 34)
              (if (result externref)
                (then
                local.get 3
                ref.cast (ref 34)
                struct.get 34 0
                f64.convert_i32_s
                call 59
                )
                (else
                local.get 3
                ref.test (ref 38)
                (if (result externref)
                  (then
                  local.get 3
                  ref.cast (ref 38)
                  struct.get 38 0
                  f64.convert_i32_s
                  call 59
                  )
                  (else
                  local.get 3
                  ref.test (ref 85)
                  (if (result externref)
                    (then
                    f64.const 0
                    call 59
                    )
                    (else
                    local.get 2
                    i32.const 6
                    i32.const 0
                    i32.const 108
                    i32.const 101
                    i32.const 110
                    i32.const 103
                    i32.const 116
                    i32.const 104
                    array.new_fixed 5 6
                    struct.new 7
                    extern.convert_any
                    call 56
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
        )
        call 60
        f64.const 0
        f64.gt
        i32.eqz
        br_if 1
        (block
          i32.const 1
          local.set 5
          local.get 1
          any.convert_extern
          ref.cast (ref 38)
          local.tee 6
          struct.get 38 0
          local.set 7
          local.get 6
          struct.get 38 1
          local.set 8
          i32.const 131072
          local.get 7
          i32.add
          i32.const 65535
          i32.add
          i32.const 16
          i32.shr_u
          local.tee 9
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
          local.set 10
          i32.const 0
          local.set 11
          (block
            (loop
              local.get 11
              local.get 7
              i32.ge_s
              br_if 1
              i32.const 131072
              local.get 11
              i32.add
              local.get 8
              local.get 10
              local.get 11
              i32.add
              array.get_u 10
              i32.store8 offset=0 align=1
              local.get 11
              i32.const 1
              i32.add
              local.set 11
              br 0
            )
          )
          i32.const 131072
          local.set 12
          local.get 5
          local.get 12
          local.get 7
          call 155
          f64.convert_i32_s
          local.tee 4
          f64.const 0
          f64.le
          (if
            (then
            return
            )
          )
          local.get 4
          local.get 1
          local.tee 13
          any.convert_extern
          local.set 14
          local.get 13
          call 127
          (if (result externref)
            (then
            f64.const 0
            call 59
            )
            (else
            local.get 14
            ref.test (ref 2)
            (if (result externref)
              (then
              local.get 14
              ref.cast (ref 2)
              struct.get 2 0
              f64.convert_i32_s
              call 59
              )
              (else
              local.get 14
              ref.test (ref 4)
              (if (result externref)
                (then
                local.get 14
                ref.cast (ref 4)
                struct.get 4 0
                f64.convert_i32_s
                call 59
                )
                (else
                local.get 14
                ref.test (ref 34)
                (if (result externref)
                  (then
                  local.get 14
                  ref.cast (ref 34)
                  struct.get 34 0
                  f64.convert_i32_s
                  call 59
                  )
                  (else
                  local.get 14
                  ref.test (ref 38)
                  (if (result externref)
                    (then
                    local.get 14
                    ref.cast (ref 38)
                    struct.get 38 0
                    f64.convert_i32_s
                    call 59
                    )
                    (else
                    local.get 14
                    ref.test (ref 85)
                    (if (result externref)
                      (then
                      f64.const 0
                      call 59
                      )
                      (else
                      local.get 13
                      i32.const 6
                      i32.const 0
                      i32.const 108
                      i32.const 101
                      i32.const 110
                      i32.const 103
                      i32.const 116
                      i32.const 104
                      array.new_fixed 5 6
                      struct.new 7
                      extern.convert_any
                      call 56
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
          )
          call 60
          f64.ge
          (if
            (then
            return
            )
          )
          local.get 1
          local.tee 16
          any.convert_extern
          local.set 17
          local.get 16
          call 127
          (if (result externref)
            (then
            f64.const 0
            call 59
            )
            (else
            local.get 17
            ref.test (ref 2)
            (if (result externref)
              (then
              local.get 17
              ref.cast (ref 2)
              struct.get 2 0
              f64.convert_i32_s
              call 59
              )
              (else
              local.get 17
              ref.test (ref 4)
              (if (result externref)
                (then
                local.get 17
                ref.cast (ref 4)
                struct.get 4 0
                f64.convert_i32_s
                call 59
                )
                (else
                local.get 17
                ref.test (ref 34)
                (if (result externref)
                  (then
                  local.get 17
                  ref.cast (ref 34)
                  struct.get 34 0
                  f64.convert_i32_s
                  call 59
                  )
                  (else
                  local.get 17
                  ref.test (ref 38)
                  (if (result externref)
                    (then
                    local.get 17
                    ref.cast (ref 38)
                    struct.get 38 0
                    f64.convert_i32_s
                    call 59
                    )
                    (else
                    local.get 17
                    ref.test (ref 85)
                    (if (result externref)
                      (then
                      f64.const 0
                      call 59
                      )
                      (else
                      local.get 16
                      i32.const 6
                      i32.const 0
                      i32.const 108
                      i32.const 101
                      i32.const 110
                      i32.const 103
                      i32.const 116
                      i32.const 104
                      array.new_fixed 5 6
                      struct.new 7
                      extern.convert_any
                      call 56
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
          )
          call 60
          local.get 4
          f64.sub
          i32.trunc_sat_f64_s
          local.tee 18
          local.get 18
          array.new_default 10
          struct.new 38
          local.set 15
          f64.const 0
          local.set 19
          (block
            (loop
              local.get 19
              local.get 15
              struct.get 38 0
              f64.convert_i32_s
              f64.lt
              i32.eqz
              br_if 1
              (block
                local.get 15
                local.set 20
                local.get 19
                i32.trunc_sat_f64_s
                local.set 21
                local.get 1
                local.tee 22
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
                  i32.const 50
                  i32.const 49
                  i32.const 57
                  i32.const 58
                  i32.const 49
                  i32.const 55
                  array.new_fixed 5 64
                  struct.new 7
                  extern.convert_any
                  throw 0
                  )
                )
                local.get 22
                local.set 23
                local.get 4
                local.get 19
                f64.add
                local.set 24
                local.get 23
                any.convert_extern
                local.tee 25
                ref.test (ref 2)
                local.get 25
                ref.test (ref 4)
                i32.or
                local.get 25
                ref.test (ref 34)
                i32.or
                local.get 25
                ref.test (ref 38)
                i32.or
                (if (result externref)
                  (then
                  local.get 23
                  local.get 24
                  i32.trunc_sat_f64_s
                  call 156
                  )
                  (else
                  local.get 23
                  local.get 24
                  call 59
                  call 56
                  )
                )
                call 60
                i32.trunc_sat_f64_s
                local.set 26
                local.get 20
                struct.get 38 1
                local.set 27
                local.get 21
                local.get 27
                array.len
                i32.ge_s
                (if
                  (then
                  local.get 27
                  array.len
                  local.set 30
                  local.get 21
                  i32.const 1
                  i32.add
                  local.set 28
                  local.get 30
                  i32.const 1
                  i32.shl
                  local.get 28
                  i32.gt_s
                  (if
                    (then
                    local.get 30
                    i32.const 1
                    i32.shl
                    local.set 28
                    )
                  )
                  i32.const 4
                  local.get 28
                  i32.gt_s
                  (if
                    (then
                    i32.const 4
                    local.set 28
                    )
                  )
                  local.get 28
                  array.new_default 10
                  local.tee 29
                  i32.const 0
                  local.get 27
                  i32.const 0
                  local.get 30
                  array.copy 10 10
                  local.get 20
                  local.get 29
                  ref.as_non_null
                  struct.set 38 1
                  local.get 29
                  local.set 27
                  )
                )
                local.get 27
                local.get 21
                local.get 26
                array.set 10
                local.get 21
                i32.const 1
                i32.add
                local.get 20
                struct.get 38 0
                i32.gt_s
                (if
                  (then
                  local.get 20
                  local.get 21
                  i32.const 1
                  i32.add
                  struct.set 38 0
                  )
                )
                local.get 19
                f64.const 1
                f64.add
                local.set 19
              )
              br 0
            )
          )
          local.get 15
          extern.convert_any
          local.set 1
        )
        br 0
      )
    )
  )
  (func $denoNoLog (type 47)
  )
  (func $main (type 48)
    (local $frameChunk f64)
    call 160
    f64.const 1048576
    local.set 0
    global.get 9
    ref.is_null
    (if
      (then
      ref.func 157
      struct.new 85
      extern.convert_any
      global.set 9
      )
    )
    global.get 9
    any.convert_extern
    ref.cast (ref 85)
    extern.convert_any
    global.get 10
    ref.is_null
    (if
      (then
      ref.func 158
      struct.new 87
      extern.convert_any
      global.set 10
      )
    )
    global.get 10
    any.convert_extern
    ref.cast (ref 87)
    extern.convert_any
    global.get 11
    ref.is_null
    (if
      (then
      ref.func 159
      struct.new 87
      extern.convert_any
      global.set 11
      )
    )
    global.get 11
    any.convert_extern
    ref.cast (ref 87)
    extern.convert_any
    local.get 0
    call 46
  )
  (func $__extern_is_array (type 56)
    (local $any anyref)
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 0)
    (if (result i32)
      (then
      i32.const 1
      )
      (else
      local.get 1
      ref.test (ref 2)
      (if (result i32)
        (then
        i32.const 1
        )
        (else
        local.get 1
        ref.test (ref 4)
        (if (result i32)
          (then
          i32.const 1
          )
          (else
          local.get 1
          ref.test (ref 34)
          (if (result i32)
            (then
            i32.const 1
            )
            (else
            local.get 1
            ref.test (ref 53)
            (if (result i32)
              (then
              i32.const 1
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
  (func $__obj_hash (type 56)
    (local $str (ref null 7))
    (local $data (ref null 5))
    (local $len i32)
    (local $off i32)
    (local $i i32)
    (local $h i32)
    local.get 0
    any.convert_extern
    ref.cast (ref 6)
    call 3
    local.tee 1
    struct.get 7 0
    local.set 3
    local.get 1
    struct.get 7 1
    local.set 4
    local.get 1
    struct.get 7 2
    local.set 2
    i32.const -2128831035
    local.set 6
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 3
        i32.ge_u
        br_if 1
        local.get 6
        local.get 2
        local.get 4
        local.get 5
        i32.add
        array.get_u 5
        i32.xor
        i32.const 16777619
        i32.mul
        local.set 6
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 6
    i32.const 2147483647
    i32.and
  )
  (func $__new_plain_object (type 57)
    ref.null 51
    i32.const 8
    array.new_default 50
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 0
    struct.new 51
    extern.convert_any
  )
  (func $__obj_find (param (ref null 51) externref) (result (ref null 49))
    (local $arr (ref null 50))
    (local $cap i32)
    (local $mask i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $fkey (ref null 7))
    local.get 1
    any.convert_extern
    ref.cast (ref 6)
    call 3
    local.set 7
    local.get 0
    struct.get 51 1
    local.tee 2
    array.len
    local.tee 3
    i32.const 1
    i32.sub
    local.set 4
    local.get 1
    call 52
    local.get 4
    i32.and
    local.set 5
    (block
      (loop
        local.get 2
        local.get 5
        array.get 50
        local.tee 6
        ref.is_null
        (if
          (then
          ref.null 49
          return
          )
        )
        local.get 6
        ref.as_non_null
        struct.get 49 2
        i32.const 128
        i32.and
        i32.eqz
        (if
          (then
          local.get 6
          ref.as_non_null
          struct.get 49 0
          call 3
          ref.cast null (ref null 6)
          ref.cast null (ref null 6)
          local.get 7
          call 6
          (if
            (then
            local.get 6
            return
            )
          )
          )
        )
        local.get 5
        i32.const 1
        i32.add
        local.get 4
        i32.and
        local.set 5
        br 0
      )
    )
    ref.null 49
  )
  (func $__call_accessor_get (type 17)
    ref.null extern
  )
  (func $__extern_get (type 17)
    (local $o (ref null 51))
    (local $e (ref null 49))
    (local $any anyref)
    (local $getter externref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 1
      local.get 0
      call 141
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 4
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      ref.null extern
      return
      )
    )
    local.get 4
    ref.cast (ref 51)
    local.set 2
    (block
      (loop
        local.get 2
        ref.is_null
        br_if 1
        local.get 2
        ref.as_non_null
        local.get 1
        call 54
        local.tee 3
        ref.is_null
        i32.eqz
        (if
          (then
          local.get 3
          ref.as_non_null
          struct.get 49 2
          i32.const 8
          i32.and
          (if
            (then
            local.get 3
            ref.as_non_null
            struct.get 49 4
            extern.convert_any
            local.tee 5
            ref.is_null
            (if
              (then
              ref.null extern
              return
              )
            )
            local.get 0
            local.get 5
            call 55
            return
            )
          )
          local.get 3
          ref.as_non_null
          struct.get 49 1
          extern.convert_any
          return
          )
        )
        local.get 2
        ref.as_non_null
        struct.get 51 0
        local.set 2
        br 0
      )
    )
    ref.null extern
  )
  (func $__obj_insert (param (ref null 51) externref anyref i32 i32)
    (local $arr (ref null 50))
    (local $cap i32)
    (local $mask i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $fkey (ref null 7))
    (local $keyStr (ref null 6))
    local.get 1
    any.convert_extern
    ref.cast (ref 6)
    local.tee 11
    call 3
    local.set 10
    local.get 0
    struct.get 51 1
    local.tee 5
    array.len
    local.tee 6
    i32.const 1
    i32.sub
    local.set 7
    local.get 1
    call 52
    local.get 7
    i32.and
    local.set 8
    (block
      (loop
        local.get 5
        local.get 8
        array.get 50
        local.tee 9
        ref.is_null
        (if
          (then
          local.get 0
          struct.get 51 4
          i32.const 1
          i32.and
          (if
            (then
            return
            )
          )
          local.get 5
          local.get 8
          local.get 11
          local.get 2
          local.get 3
          local.get 4
          ref.null -18
          ref.null -18
          struct.new 49
          array.set 50
          local.get 0
          local.get 0
          struct.get 51 2
          i32.const 1
          i32.add
          struct.set 51 2
          return
          )
        )
        local.get 9
        ref.as_non_null
        struct.get 49 0
        call 3
        ref.cast null (ref null 6)
        ref.cast null (ref null 6)
        local.get 10
        call 6
        local.get 9
        ref.as_non_null
        struct.get 49 2
        i32.const 128
        i32.and
        i32.eqz
        i32.and
        (if
          (then
          local.get 9
          ref.as_non_null
          local.get 2
          struct.set 49 1
          local.get 9
          ref.as_non_null
          local.get 3
          struct.set 49 2
          return
          )
        )
        local.get 8
        i32.const 1
        i32.add
        local.get 7
        i32.and
        local.set 8
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
  (func $__box_number (type 64)
    local.get 0
    struct.new 60
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
    ref.test (ref 60)
    (if
      (then
      local.get 1
      ref.cast (ref 60)
      struct.get 60 0
      return
      )
    )
    local.get 1
    ref.test (ref 61)
    (if
      (then
      local.get 1
      ref.cast (ref 61)
      struct.get 61 0
      f64.convert_i32_s
      return
      )
    )
    local.get 1
    ref.test (ref 6)
    (if
      (then
      local.get 0
      call 58
      return
      )
    )
    f64.const NaN
  )
  (func $__box_boolean (param i32) (result externref)
    local.get 0
    struct.new 61
    extern.convert_any
  )
  (func $__box_bigint (param i64) (result externref)
    local.get 0
    struct.new 62
    extern.convert_any
  )
  (func $__unbox_boolean (type 56)
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
    ref.test (ref 61)
    (if
      (then
      local.get 1
      ref.cast (ref 61)
      struct.get 61 0
      return
      )
    )
    i32.const 0
  )
  (func $__new_TypeError (type 67)
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
    struct.new 68
    extern.convert_any
  )
  (func $__to_bigint (type 63)
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
      call 64
      throw 0
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 62)
    (if
      (then
      local.get 1
      ref.cast (ref 62)
      struct.get 62 0
      return
      )
    )
    local.get 1
    ref.test (ref 61)
    (if
      (then
      local.get 1
      ref.cast (ref 61)
      struct.get 61 0
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
    call 64
    throw 0
  )
  (func $__new_RangeError (type 67)
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
    struct.new 68
    extern.convert_any
  )
  (func $__new_SyntaxError (type 67)
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
    struct.new 68
    extern.convert_any
  )
  (func $__bigint_ctor (type 63)
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
      call 64
      throw 0
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 62)
    (if
      (then
      local.get 1
      ref.cast (ref 62)
      struct.get 62 0
      return
      )
    )
    local.get 1
    ref.test (ref 61)
    (if
      (then
      local.get 1
      ref.cast (ref 61)
      struct.get 61 0
      i64.extend_i32_u
      return
      )
    )
    local.get 1
    ref.test (ref 60)
    (if
      (then
      local.get 1
      ref.cast (ref 60)
      struct.get 60 0
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
        call 66
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
    call 67
    throw 0
  )
  (func $__is_truthy (type 56)
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
    ref.test (ref 60)
    (if
      (then
      local.get 1
      ref.cast (ref 60)
      struct.get 60 0
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
    ref.test (ref 61)
    (if
      (then
      local.get 1
      ref.cast (ref 61)
      struct.get 61 0
      return
      )
    )
    local.get 1
    ref.test (ref 62)
    (if
      (then
      local.get 1
      ref.cast (ref 62)
      struct.get 62 0
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
  (func $__typeof_number (type 56)
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
    ref.test (ref 60)
  )
  (func $__typeof_boolean (type 56)
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
    ref.test (ref 61)
  )
  (func $__typeof_bigint (type 56)
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
    ref.test (ref 62)
  )
  (func $__typeof_string (type 56)
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
  (func $__typeof_undefined (type 56)
    local.get 0
    ref.is_null
  )
  (func $__typeof_object (type 56)
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
    ref.test (ref 60)
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 1
    ref.test (ref 61)
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 1
    ref.test (ref 62)
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
    local.get 1
    ref.test (ref 85)
    (if
      (then
      i32.const 0
      return
      )
    )
    i32.const 1
  )
  (func $__typeof_function (type 56)
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
    ref.test (ref 85)
    (if
      (then
      i32.const 1
      return
      )
    )
    i32.const 0
  )
  (func $__typeof (type 67)
    ref.null extern
  )
  (func $__host_eq (type 69)
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
      call 70
      local.get 1
      call 70
      i32.and
      (if (result i32)
        (then
        local.get 0
        call 60
        local.get 1
        call 60
        f64.eq
        )
        (else
        local.get 0
        call 71
        local.get 1
        call 71
        i32.and
        (if (result i32)
          (then
          local.get 0
          call 63
          local.get 1
          call 63
          i32.eq
          )
          (else
          local.get 0
          call 72
          local.get 1
          call 72
          i32.and
          (if (result i32)
            (then
            local.get 0
            call 65
            local.get 1
            call 65
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
  (func $__same_value_zero (type 69)
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
      call 70
      local.get 1
      call 70
      i32.and
      (if (result i32)
        (then
        local.get 0
        call 60
        local.set 4
        local.get 1
        call 60
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
        call 71
        local.get 1
        call 71
        i32.and
        (if (result i32)
          (then
          local.get 0
          call 63
          local.get 1
          call 63
          i32.eq
          )
          (else
          local.get 0
          call 72
          local.get 1
          call 72
          i32.and
          (if (result i32)
            (then
            local.get 0
            call 65
            local.get 1
            call 65
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
  (func $__new_Number (type 64)
    (local $boxed externref)
    (local $o (ref null 51))
    local.get 0
    call 59
    local.set 1
    ref.null 51
    i32.const 8
    array.new_default 50
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 1
    struct.new 51
    local.tee 2
    i32.const 18
    i32.const 0
    i32.const 91
    i32.const 91
    i32.const 80
    i32.const 114
    i32.const 105
    i32.const 109
    i32.const 105
    i32.const 116
    i32.const 105
    i32.const 118
    i32.const 101
    i32.const 86
    i32.const 97
    i32.const 108
    i32.const 117
    i32.const 101
    i32.const 93
    i32.const 93
    array.new_fixed 5 18
    struct.new 7
    extern.convert_any
    local.get 1
    any.convert_extern
    i32.const 16
    i32.const 0
    call 57
    local.get 2
    extern.convert_any
  )
  (func $__new_String (type 67)
    (local $o (ref null 51))
    ref.null 51
    i32.const 8
    array.new_default 50
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 1
    struct.new 51
    local.tee 1
    i32.const 18
    i32.const 0
    i32.const 91
    i32.const 91
    i32.const 80
    i32.const 114
    i32.const 105
    i32.const 109
    i32.const 105
    i32.const 116
    i32.const 105
    i32.const 118
    i32.const 101
    i32.const 86
    i32.const 97
    i32.const 108
    i32.const 117
    i32.const 101
    i32.const 93
    i32.const 93
    array.new_fixed 5 18
    struct.new 7
    extern.convert_any
    local.get 0
    any.convert_extern
    i32.const 16
    i32.const 0
    call 57
    local.get 1
    extern.convert_any
  )
  (func $__new_Boolean (type 64)
    (local $boxed externref)
    (local $o (ref null 51))
    local.get 0
    f64.const 0
    f64.ne
    local.get 0
    local.get 0
    f64.eq
    i32.and
    call 61
    local.set 1
    ref.null 51
    i32.const 8
    array.new_default 50
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 1
    struct.new 51
    local.tee 2
    i32.const 18
    i32.const 0
    i32.const 91
    i32.const 91
    i32.const 80
    i32.const 114
    i32.const 105
    i32.const 109
    i32.const 105
    i32.const 116
    i32.const 105
    i32.const 118
    i32.const 101
    i32.const 86
    i32.const 97
    i32.const 108
    i32.const 117
    i32.const 101
    i32.const 93
    i32.const 93
    array.new_fixed 5 18
    struct.new 7
    extern.convert_any
    local.get 1
    any.convert_extern
    i32.const 16
    i32.const 0
    call 57
    local.get 2
    extern.convert_any
  )
  (func $__obj_grow (param (ref null 51))
    (local $old (ref null 50))
    (local $newCap i32)
    (local $i i32)
    (local $oldLen i32)
    (local $e (ref null 49))
    local.get 0
    struct.get 51 1
    local.tee 1
    array.len
    local.tee 4
    i32.const 2
    i32.mul
    local.set 2
    local.get 0
    local.get 2
    array.new_default 50
    struct.set 51 1
    local.get 0
    i32.const 0
    struct.set 51 2
    local.get 0
    i32.const 0
    struct.set 51 3
    i32.const 0
    local.set 3
    (block
      (loop
        local.get 3
        local.get 4
        i32.ge_u
        br_if 1
        local.get 1
        local.get 3
        array.get 50
        local.tee 5
        ref.is_null
        i32.eqz
        (if
          (then
          local.get 5
          ref.as_non_null
          struct.get 49 2
          i32.const 128
          i32.and
          i32.eqz
          (if
            (then
            local.get 0
            local.get 5
            ref.as_non_null
            struct.get 49 0
            extern.convert_any
            local.get 5
            ref.as_non_null
            struct.get 49 1
            local.get 5
            ref.as_non_null
            struct.get 49 2
            local.get 5
            ref.as_non_null
            struct.get 49 3
            call 57
            )
          )
          )
        )
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0
      )
    )
  )
  (func $__call_accessor_set (type 71)
    local.get 0
    local.get 1
    local.get 2
    call 174
    drop
  )
  (func $__extern_set (type 71)
    (local $o (ref null 51))
    (local $cap i32)
    (local $load i32)
    (local $any anyref)
    (local $seq i32)
    (local $accEntry (ref null 49))
    (local $setter externref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 1
      local.get 2
      call 142
      drop
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 6
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      return
      )
    )
    local.get 6
    ref.cast (ref 51)
    local.tee 3
    ref.as_non_null
    local.get 1
    call 54
    local.tee 8
    ref.is_null
    i32.eqz
    (if
      (then
      local.get 8
      ref.as_non_null
      struct.get 49 2
      i32.const 8
      i32.and
      (if
        (then
        local.get 8
        ref.as_non_null
        struct.get 49 5
        extern.convert_any
        local.tee 9
        ref.is_null
        i32.eqz
        (if
          (then
          local.get 0
          local.get 9
          local.get 2
          call 84
          )
        )
        return
        )
      )
      )
    )
    local.get 3
    struct.get 51 4
    i32.const 4
    i32.and
    (if
      (then
      return
      )
    )
    local.get 3
    struct.get 51 2
    local.get 3
    struct.get 51 3
    i32.add
    local.set 5
    local.get 3
    struct.get 51 1
    array.len
    local.set 4
    local.get 5
    i32.const 1
    i32.add
    i32.const 10
    i32.mul
    local.get 4
    i32.const 7
    i32.mul
    i32.ge_s
    (if
      (then
      local.get 3
      ref.as_non_null
      call 83
      )
    )
    local.get 3
    ref.as_non_null
    struct.get 51 5
    local.set 7
    local.get 3
    ref.as_non_null
    local.get 7
    i32.const 1
    i32.add
    struct.set 51 5
    local.get 3
    ref.as_non_null
    local.get 1
    local.get 2
    any.convert_extern
    i32.const 7
    local.get 7
    call 57
  )
  (func $__reflect_set (param externref externref externref) (result i32)
    (local $any anyref)
    (local $o (ref null 51))
    (local $e (ref null 49))
    local.get 0
    any.convert_extern
    local.tee 3
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 3
    ref.cast (ref 51)
    local.tee 4
    ref.as_non_null
    local.get 1
    call 54
    local.tee 5
    ref.is_null
    i32.eqz
    (if
      (then
      local.get 5
      ref.as_non_null
      struct.get 49 2
      i32.const 8
      i32.and
      (if
        (then
        local.get 5
        ref.as_non_null
        struct.get 49 5
        extern.convert_any
        ref.is_null
        (if
          (then
          i32.const 0
          return
          )
        )
        local.get 0
        local.get 1
        local.get 2
        call 85
        i32.const 1
        return
        )
      )
      local.get 5
      ref.as_non_null
      struct.get 49 2
      i32.const 1
      i32.and
      i32.eqz
      (if
        (then
        i32.const 0
        return
        )
      )
      local.get 4
      ref.as_non_null
      struct.get 51 4
      i32.const 4
      i32.and
      (if
        (then
        i32.const 0
        return
        )
      )
      local.get 0
      local.get 1
      local.get 2
      call 85
      i32.const 1
      return
      )
    )
    local.get 4
    ref.as_non_null
    struct.get 51 4
    i32.const 1
    i32.and
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 0
    local.get 1
    local.get 2
    call 85
    i32.const 1
  )
  (func $__delete_property (type 69)
    (local $any anyref)
    (local $o (ref null 51))
    (local $e (ref null 49))
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 1
      local.get 0
      call 144
      call 69
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 1
      return
      )
    )
    local.get 2
    ref.cast (ref 51)
    local.tee 3
    local.get 1
    call 54
    local.tee 4
    ref.is_null
    (if
      (then
      i32.const 1
      return
      )
    )
    local.get 3
    ref.as_non_null
    struct.get 51 4
    i32.const 2
    i32.and
    local.get 4
    ref.as_non_null
    struct.get 49 2
    i32.const 4
    i32.and
    i32.eqz
    i32.or
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 4
    ref.as_non_null
    local.get 4
    ref.as_non_null
    struct.get 49 2
    i32.const 128
    i32.or
    struct.set 49 2
    local.get 3
    ref.as_non_null
    local.get 3
    ref.as_non_null
    struct.get 51 2
    i32.const 1
    i32.sub
    struct.set 51 2
    local.get 3
    ref.as_non_null
    local.get 3
    ref.as_non_null
    struct.get 51 3
    i32.const 1
    i32.add
    struct.set 51 3
    i32.const 1
  )
  (func $__objvec_new (type 57)
    i32.const 0
    i32.const 8
    array.new_default 52
    struct.new 53
    extern.convert_any
  )
  (func $__objvec_push (type 44)
    (local $any anyref)
    (local $v (ref null 53))
    (local $arr (ref null 52))
    (local $len i32)
    (local $cap i32)
    (local $narr (ref null 52))
    (local $i i32)
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 53)
    i32.eqz
    (if
      (then
      return
      )
    )
    local.get 2
    ref.cast (ref 53)
    local.tee 3
    ref.as_non_null
    struct.get 53 1
    local.tee 4
    array.len
    local.set 6
    local.get 3
    ref.as_non_null
    struct.get 53 0
    local.tee 5
    local.get 6
    i32.ge_s
    (if
      (then
      local.get 6
      i32.const 2
      i32.mul
      array.new_default 52
      local.set 7
      i32.const 0
      local.set 8
      (block
        (loop
          local.get 8
          local.get 5
          i32.ge_s
          br_if 1
          local.get 7
          ref.as_non_null
          local.get 8
          local.get 4
          ref.as_non_null
          local.get 8
          array.get 52
          array.set 52
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          br 0
        )
      )
      local.get 3
      ref.as_non_null
      local.get 7
      ref.as_non_null
      struct.set 53 1
      local.get 7
      local.set 4
      )
    )
    local.get 4
    ref.as_non_null
    local.get 5
    local.get 1
    array.set 52
    local.get 3
    ref.as_non_null
    local.get 5
    i32.const 1
    i32.add
    struct.set 53 0
  )
  (func $__hasOwnProperty (type 69)
    (local $any anyref)
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 2
    ref.cast (ref 51)
    local.get 1
    call 54
    ref.is_null
    i32.eqz
  )
  (func $__object_hasOwn (type 69)
    (local $any anyref)
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 2
    ref.cast (ref 51)
    local.get 1
    call 54
    ref.is_null
    i32.eqz
  )
  (func $__propertyIsEnumerable (type 69)
    (local $any anyref)
    (local $e (ref null 49))
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 2
    ref.cast (ref 51)
    local.get 1
    call 54
    local.tee 3
    ref.is_null
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 3
    ref.as_non_null
    struct.get 49 2
    i32.const 2
    i32.and
    i32.const 0
    i32.ne
  )
  (func $__extern_has (type 69)
    (local $o (ref null 51))
    (local $any anyref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 1
      local.get 0
      call 143
      call 69
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 3
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 3
    ref.cast (ref 51)
    local.set 2
    (block
      (loop
        local.get 2
        ref.is_null
        br_if 1
        local.get 2
        ref.as_non_null
        local.get 1
        call 54
        ref.is_null
        i32.eqz
        (if
          (then
          i32.const 1
          return
          )
        )
        local.get 2
        ref.as_non_null
        struct.get 51 0
        local.set 2
        br 0
      )
    )
    i32.const 0
  )
  (func $__to_primitive (type 17)
    (local $any anyref)
    (local $method externref)
    (local $result externref)
    (local $slot (ref null 49))
    local.get 0
    ref.is_null
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 2
    ref.cast (ref 51)
    i32.const 18
    i32.const 0
    i32.const 91
    i32.const 91
    i32.const 80
    i32.const 114
    i32.const 105
    i32.const 109
    i32.const 105
    i32.const 116
    i32.const 105
    i32.const 118
    i32.const 101
    i32.const 86
    i32.const 97
    i32.const 108
    i32.const 117
    i32.const 101
    i32.const 93
    i32.const 93
    array.new_fixed 5 18
    struct.new 7
    extern.convert_any
    call 54
    local.tee 5
    ref.is_null
    i32.eqz
    (if
      (then
      local.get 5
      ref.as_non_null
      struct.get 49 2
      i32.const 16
      i32.and
      (if
        (then
        local.get 5
        ref.as_non_null
        struct.get 49 1
        extern.convert_any
        return
        )
      )
      )
    )
    local.get 1
    ref.is_null
    (if (result i32)
      (then
      i32.const 0
      )
      (else
      local.get 1
      call 73
      (if (result i32)
        (then
        local.get 1
        any.convert_extern
        ref.cast (ref 6)
        call 3
        i32.const 6
        i32.const 0
        i32.const 115
        i32.const 116
        i32.const 114
        i32.const 105
        i32.const 110
        i32.const 103
        array.new_fixed 5 6
        struct.new 7
        ref.cast null (ref null 6)
        call 3
        ref.cast null (ref null 6)
        call 6
        )
        (else
        i32.const 0
        )
      )
      )
    )
    (if
      (then
      local.get 0
      i32.const 8
      i32.const 0
      i32.const 116
      i32.const 111
      i32.const 83
      i32.const 116
      i32.const 114
      i32.const 105
      i32.const 110
      i32.const 103
      array.new_fixed 5 8
      struct.new 7
      extern.convert_any
      call 56
      local.tee 3
      ref.is_null
      (if
        (then
        local.get 0
        i32.const 8
        i32.const 0
        i32.const 116
        i32.const 111
        i32.const 83
        i32.const 116
        i32.const 114
        i32.const 105
        i32.const 110
        i32.const 103
        array.new_fixed 5 8
        struct.new 7
        extern.convert_any
        call 93
        i32.eqz
        (if
          (then
          i32.const 15
          i32.const 0
          i32.const 91
          i32.const 111
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 32
          i32.const 79
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 93
          array.new_fixed 5 15
          struct.new 7
          extern.convert_any
          return
          )
        )
        )
        (else
        local.get 3
        call 76
        (if
          (then
          local.get 0
          local.get 3
          call 55
          local.tee 4
          ref.is_null
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 70
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 71
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 73
          (if
            (then
            local.get 4
            return
            )
          )
          )
        )
        )
      )
      local.get 0
      i32.const 7
      i32.const 0
      i32.const 118
      i32.const 97
      i32.const 108
      i32.const 117
      i32.const 101
      i32.const 79
      i32.const 102
      array.new_fixed 5 7
      struct.new 7
      extern.convert_any
      call 56
      local.tee 3
      ref.is_null
      (if
        (then

        )
        (else
        local.get 3
        call 76
        (if
          (then
          local.get 0
          local.get 3
          call 55
          local.tee 4
          ref.is_null
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 70
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 71
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 73
          (if
            (then
            local.get 4
            return
            )
          )
          )
        )
        )
      )
      )
      (else
      local.get 0
      i32.const 7
      i32.const 0
      i32.const 118
      i32.const 97
      i32.const 108
      i32.const 117
      i32.const 101
      i32.const 79
      i32.const 102
      array.new_fixed 5 7
      struct.new 7
      extern.convert_any
      call 56
      local.tee 3
      ref.is_null
      (if
        (then

        )
        (else
        local.get 3
        call 76
        (if
          (then
          local.get 0
          local.get 3
          call 55
          local.tee 4
          ref.is_null
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 70
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 71
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 73
          (if
            (then
            local.get 4
            return
            )
          )
          )
        )
        )
      )
      local.get 0
      i32.const 8
      i32.const 0
      i32.const 116
      i32.const 111
      i32.const 83
      i32.const 116
      i32.const 114
      i32.const 105
      i32.const 110
      i32.const 103
      array.new_fixed 5 8
      struct.new 7
      extern.convert_any
      call 56
      local.tee 3
      ref.is_null
      (if
        (then
        local.get 0
        i32.const 8
        i32.const 0
        i32.const 116
        i32.const 111
        i32.const 83
        i32.const 116
        i32.const 114
        i32.const 105
        i32.const 110
        i32.const 103
        array.new_fixed 5 8
        struct.new 7
        extern.convert_any
        call 93
        i32.eqz
        (if
          (then
          i32.const 15
          i32.const 0
          i32.const 91
          i32.const 111
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 32
          i32.const 79
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 93
          array.new_fixed 5 15
          struct.new 7
          extern.convert_any
          return
          )
        )
        )
        (else
        local.get 3
        call 76
        (if
          (then
          local.get 0
          local.get 3
          call 55
          local.tee 4
          ref.is_null
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 70
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 71
          (if
            (then
            local.get 4
            return
            )
          )
          local.get 4
          call 73
          (if
            (then
            local.get 4
            return
            )
          )
          )
        )
        )
      )
      )
    )
    i32.const 40
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
    i32.const 111
    i32.const 98
    i32.const 106
    i32.const 101
    i32.const 99
    i32.const 116
    i32.const 32
    i32.const 116
    i32.const 111
    i32.const 32
    i32.const 112
    i32.const 114
    i32.const 105
    i32.const 109
    i32.const 105
    i32.const 116
    i32.const 105
    i32.const 118
    i32.const 101
    i32.const 32
    i32.const 118
    i32.const 97
    i32.const 108
    i32.const 117
    i32.const 101
    array.new_fixed 5 40
    struct.new 7
    extern.convert_any
    call 64
    throw 0
  )
  (func $__any_to_string (param anyref) (result (ref null 6))
    (local $box (ref null 73))
    (local $recover anyref)
    local.get 0
    ref.test (ref 6)
    (if (result (ref null 6))
      (then
      local.get 0
      ref.cast (ref 6)
      )
      (else
      local.get 0
      ref.test (ref 73)
      (if (result (ref null 6))
        (then
        local.get 0
        ref.cast (ref 73)
        local.tee 1
        struct.get 73 0
        i32.const 0
        i32.eq
        (if (result (ref null 6))
          (then
          i32.const 4
          i32.const 0
          i32.const 110
          i32.const 117
          i32.const 108
          i32.const 108
          array.new_fixed 5 4
          struct.new 7
          )
          (else
          local.get 1
          struct.get 73 0
          i32.const 1
          i32.eq
          (if (result (ref null 6))
            (then
            i32.const 9
            i32.const 0
            i32.const 117
            i32.const 110
            i32.const 100
            i32.const 101
            i32.const 102
            i32.const 105
            i32.const 110
            i32.const 101
            i32.const 100
            array.new_fixed 5 9
            struct.new 7
            )
            (else
            local.get 1
            struct.get 73 0
            i32.const 2
            i32.eq
            (if (result (ref null 6))
              (then
              i32.const 15
              i32.const 0
              i32.const 91
              i32.const 111
              i32.const 98
              i32.const 106
              i32.const 101
              i32.const 99
              i32.const 116
              i32.const 32
              i32.const 79
              i32.const 98
              i32.const 106
              i32.const 101
              i32.const 99
              i32.const 116
              i32.const 93
              array.new_fixed 5 15
              struct.new 7
              )
              (else
              local.get 1
              struct.get 73 0
              i32.const 3
              i32.eq
              (if (result (ref null 6))
                (then
                i32.const 15
                i32.const 0
                i32.const 91
                i32.const 111
                i32.const 98
                i32.const 106
                i32.const 101
                i32.const 99
                i32.const 116
                i32.const 32
                i32.const 79
                i32.const 98
                i32.const 106
                i32.const 101
                i32.const 99
                i32.const 116
                i32.const 93
                array.new_fixed 5 15
                struct.new 7
                )
                (else
                local.get 1
                struct.get 73 0
                i32.const 4
                i32.eq
                (if (result (ref null 6))
                  (then
                  local.get 1
                  struct.get 73 1
                  (if (result (ref null 6))
                    (then
                    i32.const 4
                    i32.const 0
                    i32.const 116
                    i32.const 114
                    i32.const 117
                    i32.const 101
                    array.new_fixed 5 4
                    struct.new 7
                    )
                    (else
                    i32.const 5
                    i32.const 0
                    i32.const 102
                    i32.const 97
                    i32.const 108
                    i32.const 115
                    i32.const 101
                    array.new_fixed 5 5
                    struct.new 7
                    )
                  )
                  )
                  (else
                  local.get 1
                  struct.get 73 0
                  i32.const 5
                  i32.eq
                  (if (result (ref null 6))
                    (then
                    local.get 1
                    struct.get 73 4
                    any.convert_extern
                    local.tee 2
                    ref.test (ref 6)
                    (if (result (ref null 6))
                      (then
                      local.get 2
                      ref.cast (ref 6)
                      )
                      (else
                      local.get 2
                      extern.convert_any
                      any.convert_extern
                      local.tee 2
                      ref.test (ref 51)
                      (if (result (ref null 6))
                        (then
                        local.get 2
                        extern.convert_any
                        ref.null extern
                        call 94
                        any.convert_extern
                        local.tee 2
                        ref.test (ref 6)
                        (if (result (ref null 6))
                          (then
                          local.get 2
                          ref.cast (ref 6)
                          )
                          (else
                          local.get 2
                          ref.test (ref 60)
                          (if (result (ref null 6))
                            (then
                            i32.const 15
                            i32.const 0
                            i32.const 91
                            i32.const 111
                            i32.const 98
                            i32.const 106
                            i32.const 101
                            i32.const 99
                            i32.const 116
                            i32.const 32
                            i32.const 79
                            i32.const 98
                            i32.const 106
                            i32.const 101
                            i32.const 99
                            i32.const 116
                            i32.const 93
                            array.new_fixed 5 15
                            struct.new 7
                            )
                            (else
                            local.get 2
                            ref.test (ref 61)
                            (if (result (ref null 6))
                              (then
                              local.get 2
                              ref.cast (ref 61)
                              struct.get 61 0
                              (if (result (ref null 6))
                                (then
                                i32.const 4
                                i32.const 0
                                i32.const 116
                                i32.const 114
                                i32.const 117
                                i32.const 101
                                array.new_fixed 5 4
                                struct.new 7
                                )
                                (else
                                i32.const 5
                                i32.const 0
                                i32.const 102
                                i32.const 97
                                i32.const 108
                                i32.const 115
                                i32.const 101
                                array.new_fixed 5 5
                                struct.new 7
                                )
                              )
                              )
                              (else
                              i32.const 15
                              i32.const 0
                              i32.const 91
                              i32.const 111
                              i32.const 98
                              i32.const 106
                              i32.const 101
                              i32.const 99
                              i32.const 116
                              i32.const 32
                              i32.const 79
                              i32.const 98
                              i32.const 106
                              i32.const 101
                              i32.const 99
                              i32.const 116
                              i32.const 93
                              array.new_fixed 5 15
                              struct.new 7
                              )
                            )
                            )
                          )
                          )
                        )
                        )
                        (else
                        local.get 2
                        extern.convert_any
                        any.convert_extern
                        local.tee 2
                        ref.test (ref 6)
                        (if (result (ref null 6))
                          (then
                          local.get 2
                          ref.cast (ref 6)
                          )
                          (else
                          local.get 2
                          ref.test (ref 60)
                          (if (result (ref null 6))
                            (then
                            i32.const 15
                            i32.const 0
                            i32.const 91
                            i32.const 111
                            i32.const 98
                            i32.const 106
                            i32.const 101
                            i32.const 99
                            i32.const 116
                            i32.const 32
                            i32.const 79
                            i32.const 98
                            i32.const 106
                            i32.const 101
                            i32.const 99
                            i32.const 116
                            i32.const 93
                            array.new_fixed 5 15
                            struct.new 7
                            )
                            (else
                            local.get 2
                            ref.test (ref 61)
                            (if (result (ref null 6))
                              (then
                              local.get 2
                              ref.cast (ref 61)
                              struct.get 61 0
                              (if (result (ref null 6))
                                (then
                                i32.const 4
                                i32.const 0
                                i32.const 116
                                i32.const 114
                                i32.const 117
                                i32.const 101
                                array.new_fixed 5 4
                                struct.new 7
                                )
                                (else
                                i32.const 5
                                i32.const 0
                                i32.const 102
                                i32.const 97
                                i32.const 108
                                i32.const 115
                                i32.const 101
                                array.new_fixed 5 5
                                struct.new 7
                                )
                              )
                              )
                              (else
                              i32.const 15
                              i32.const 0
                              i32.const 91
                              i32.const 111
                              i32.const 98
                              i32.const 106
                              i32.const 101
                              i32.const 99
                              i32.const 116
                              i32.const 32
                              i32.const 79
                              i32.const 98
                              i32.const 106
                              i32.const 101
                              i32.const 99
                              i32.const 116
                              i32.const 93
                              array.new_fixed 5 15
                              struct.new 7
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
                    (else
                    i32.const 15
                    i32.const 0
                    i32.const 91
                    i32.const 111
                    i32.const 98
                    i32.const 106
                    i32.const 101
                    i32.const 99
                    i32.const 116
                    i32.const 32
                    i32.const 79
                    i32.const 98
                    i32.const 106
                    i32.const 101
                    i32.const 99
                    i32.const 116
                    i32.const 93
                    array.new_fixed 5 15
                    struct.new 7
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
        )
        )
        (else
        local.get 0
        ref.test (ref 60)
        (if (result (ref null 6))
          (then
          i32.const 15
          i32.const 0
          i32.const 91
          i32.const 111
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 32
          i32.const 79
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 93
          array.new_fixed 5 15
          struct.new 7
          )
          (else
          local.get 0
          ref.test (ref 61)
          (if (result (ref null 6))
            (then
            local.get 0
            ref.cast (ref 61)
            struct.get 61 0
            (if (result (ref null 6))
              (then
              i32.const 4
              i32.const 0
              i32.const 116
              i32.const 114
              i32.const 117
              i32.const 101
              array.new_fixed 5 4
              struct.new 7
              )
              (else
              i32.const 5
              i32.const 0
              i32.const 102
              i32.const 97
              i32.const 108
              i32.const 115
              i32.const 101
              array.new_fixed 5 5
              struct.new 7
              )
            )
            )
            (else
            i32.const 15
            i32.const 0
            i32.const 91
            i32.const 111
            i32.const 98
            i32.const 106
            i32.const 101
            i32.const 99
            i32.const 116
            i32.const 32
            i32.const 79
            i32.const 98
            i32.const 106
            i32.const 101
            i32.const 99
            i32.const 116
            i32.const 93
            array.new_fixed 5 15
            struct.new 7
            )
          )
          )
        )
        )
      )
      )
    )
  )
  (func $__extern_toString (type 67)
    local.get 0
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 0
      any.convert_extern
      ref.test (ref 51)
      (if (result externref)
        (then
        local.get 0
        i32.const 6
        i32.const 0
        i32.const 115
        i32.const 116
        i32.const 114
        i32.const 105
        i32.const 110
        i32.const 103
        array.new_fixed 5 6
        struct.new 7
        extern.convert_any
        call 94
        )
        (else
        local.get 0
        )
      )
      )
    )
    any.convert_extern
    call 95
    extern.convert_any
  )
  (func $__getPrototypeOf (type 67)
    (local $any anyref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 0
      call 146
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if (result externref)
      (then
      local.get 1
      ref.cast (ref 51)
      struct.get 51 0
      extern.convert_any
      )
      (else
      ref.null extern
      )
    )
  )
  (func $__object_create (type 67)
    (local $any anyref)
    (local $props (ref null 50))
    ref.null 49
    i32.const 8
    array.new 50
    local.set 2
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if (result (ref null 51))
      (then
      local.get 1
      ref.cast (ref 51)
      )
      (else
      ref.null 51
      )
    )
    local.get 2
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 0
    struct.new 51
    extern.convert_any
  )
  (func $__object_setPrototypeOf (type 17)
    (local $o (ref null 51))
    (local $v (ref null 51))
    (local $p (ref null 51))
    (local $any anyref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 1
      call 147
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 5
    ref.test (ref 51)
    (if
      (then
      local.get 5
      ref.cast (ref 51)
      local.set 2
      )
      (else
      local.get 0
      return
      )
    )
    local.get 1
    any.convert_extern
    local.tee 5
    ref.test (ref 51)
    (if (result (ref null 51))
      (then
      local.get 5
      ref.cast (ref 51)
      )
      (else
      ref.null 51
      )
    )
    local.tee 3
    local.get 2
    ref.as_non_null
    struct.get 51 0
    ref.eq
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 2
    ref.as_non_null
    struct.get 51 4
    i32.const 1
    i32.and
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 3
    local.set 4
    (block
      (loop
        local.get 4
        ref.is_null
        br_if 1
        local.get 4
        ref.as_non_null
        local.get 2
        ref.as_non_null
        ref.eq
        (if
          (then
          local.get 0
          return
          )
        )
        local.get 4
        ref.as_non_null
        struct.get 51 0
        local.set 4
        br 0
      )
    )
    local.get 2
    ref.as_non_null
    local.get 3
    struct.set 51 0
    local.get 0
  )
  (func $__isPrototypeOf (type 69)
    (local $target (ref null 51))
    (local $cur (ref null 51))
    (local $any anyref)
    local.get 0
    any.convert_extern
    local.tee 4
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 4
    ref.cast (ref 51)
    local.set 2
    local.get 1
    any.convert_extern
    local.tee 4
    ref.test (ref 51)
    (if (result (ref null 51))
      (then
      local.get 4
      ref.cast (ref 51)
      )
      (else
      ref.null 51
      )
    )
    local.set 3
    (block
      (loop
        local.get 3
        ref.is_null
        br_if 1
        local.get 3
        ref.as_non_null
        struct.get 51 0
        local.tee 3
        ref.is_null
        br_if 1
        local.get 3
        local.get 2
        ref.eq
        (if
          (then
          i32.const 1
          return
          )
        )
        br 0
      )
    )
    i32.const 0
  )
  (func $__obj_index_of_key (param (ref null 6)) (result i32)
    (local $str (ref null 7))
    (local $data (ref null 5))
    (local $len i32)
    (local $off i32)
    (local $i i32)
    (local $c i32)
    (local $val i32)
    local.get 0
    call 3
    local.tee 1
    struct.get 7 0
    local.tee 3
    i32.eqz
    (if
      (then
      i32.const -1
      return
      )
    )
    local.get 1
    struct.get 7 1
    local.set 4
    local.get 1
    struct.get 7 2
    local.tee 2
    local.get 4
    array.get_u 5
    local.tee 6
    i32.const 48
    i32.eq
    local.get 3
    i32.const 1
    i32.eq
    i32.and
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 6
    i32.const 49
    i32.lt_u
    local.get 6
    i32.const 57
    i32.gt_u
    i32.or
    (if
      (then
      i32.const -1
      return
      )
    )
    i32.const 0
    local.set 7
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 3
        i32.ge_u
        br_if 1
        local.get 2
        local.get 4
        local.get 5
        i32.add
        array.get_u 5
        local.tee 6
        i32.const 48
        i32.lt_u
        local.get 6
        i32.const 57
        i32.gt_u
        i32.or
        (if
          (then
          i32.const -1
          return
          )
        )
        local.get 7
        i32.const 10
        i32.mul
        local.get 6
        i32.const 48
        i32.sub
        i32.add
        local.tee 7
        i32.const 0
        i32.lt_s
        (if
          (then
          i32.const -1
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
    local.get 7
  )
  (func $__obj_ordered (type 76)
    (local $arr (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $out (ref null 50))
    (local $m i32)
    (local $j i32)
    (local $best i32)
    (local $k i32)
    (local $cand (ref null 49))
    (local $bestE (ref null 49))
    (local $candIdx i32)
    (local $bestIdx i32)
    (local $candSeq i32)
    (local $bestSeq i32)
    (local $tmp (ref null 49))
    local.get 0
    struct.get 51 1
    local.tee 1
    array.len
    local.set 2
    local.get 0
    struct.get 51 2
    array.new_default 50
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.set 3
    (block
      (loop
        local.get 3
        local.get 2
        i32.ge_u
        br_if 1
        local.get 1
        local.get 3
        array.get 50
        local.tee 4
        ref.is_null
        i32.eqz
        (if
          (then
          local.get 4
          ref.as_non_null
          struct.get 49 2
          i32.const 128
          i32.and
          i32.eqz
          local.get 4
          ref.as_non_null
          struct.get 49 2
          i32.const 2
          i32.and
          i32.eqz
          i32.eqz
          i32.and
          (if
            (then
            local.get 5
            local.get 6
            local.get 4
            array.set 50
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            )
          )
          )
        )
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0
      )
    )
    i32.const 0
    local.set 7
    (block
      (loop
        local.get 7
        local.get 6
        i32.ge_u
        br_if 1
        local.get 7
        local.set 8
        local.get 5
        local.get 7
        array.get 50
        local.tee 11
        ref.as_non_null
        struct.get 49 0
        call 101
        local.set 13
        local.get 11
        ref.as_non_null
        struct.get 49 3
        local.set 15
        local.get 7
        i32.const 1
        i32.add
        local.set 9
        (block
          (loop
            local.get 9
            local.get 6
            i32.ge_u
            br_if 1
            local.get 5
            local.get 9
            array.get 50
            local.tee 10
            ref.as_non_null
            struct.get 49 0
            call 101
            local.set 12
            local.get 10
            ref.as_non_null
            struct.get 49 3
            local.set 14
            local.get 12
            i32.const 0
            i32.ge_s
            (if (result i32)
              (then
              local.get 13
              i32.const 0
              i32.ge_s
              (if (result i32)
                (then
                local.get 12
                local.get 13
                i32.lt_s
                )
                (else
                i32.const 1
                )
              )
              )
              (else
              local.get 13
              i32.const 0
              i32.ge_s
              (if (result i32)
                (then
                i32.const 0
                )
                (else
                local.get 14
                local.get 15
                i32.lt_s
                )
              )
              )
            )
            (if
              (then
              local.get 9
              local.set 8
              local.get 12
              local.set 13
              local.get 14
              local.set 15
              local.get 10
              local.set 11
              )
            )
            local.get 9
            i32.const 1
            i32.add
            local.set 9
            br 0
          )
        )
        local.get 8
        local.get 7
        i32.ne
        (if
          (then
          local.get 5
          local.get 7
          array.get 50
          local.set 16
          local.get 5
          local.get 7
          local.get 11
          array.set 50
          local.get 5
          local.get 8
          local.get 16
          array.set 50
          )
        )
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        br 0
      )
    )
    local.get 5
  )
  (func $__obj_ordered_all (type 76)
    (local $arr (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $out (ref null 50))
    (local $m i32)
    (local $j i32)
    (local $best i32)
    (local $k i32)
    (local $cand (ref null 49))
    (local $bestE (ref null 49))
    (local $candIdx i32)
    (local $bestIdx i32)
    (local $candSeq i32)
    (local $bestSeq i32)
    (local $tmp (ref null 49))
    local.get 0
    struct.get 51 1
    local.tee 1
    array.len
    local.set 2
    local.get 0
    struct.get 51 2
    array.new_default 50
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.set 3
    (block
      (loop
        local.get 3
        local.get 2
        i32.ge_u
        br_if 1
        local.get 1
        local.get 3
        array.get 50
        local.tee 4
        ref.is_null
        i32.eqz
        (if
          (then
          local.get 4
          ref.as_non_null
          struct.get 49 2
          i32.const 128
          i32.and
          i32.eqz
          (if
            (then
            local.get 5
            local.get 6
            local.get 4
            array.set 50
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            )
          )
          )
        )
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0
      )
    )
    i32.const 0
    local.set 7
    (block
      (loop
        local.get 7
        local.get 6
        i32.ge_u
        br_if 1
        local.get 7
        local.set 8
        local.get 5
        local.get 7
        array.get 50
        local.tee 11
        ref.as_non_null
        struct.get 49 0
        call 101
        local.set 13
        local.get 11
        ref.as_non_null
        struct.get 49 3
        local.set 15
        local.get 7
        i32.const 1
        i32.add
        local.set 9
        (block
          (loop
            local.get 9
            local.get 6
            i32.ge_u
            br_if 1
            local.get 5
            local.get 9
            array.get 50
            local.tee 10
            ref.as_non_null
            struct.get 49 0
            call 101
            local.set 12
            local.get 10
            ref.as_non_null
            struct.get 49 3
            local.set 14
            local.get 12
            i32.const 0
            i32.ge_s
            (if (result i32)
              (then
              local.get 13
              i32.const 0
              i32.ge_s
              (if (result i32)
                (then
                local.get 12
                local.get 13
                i32.lt_s
                )
                (else
                i32.const 1
                )
              )
              )
              (else
              local.get 13
              i32.const 0
              i32.ge_s
              (if (result i32)
                (then
                i32.const 0
                )
                (else
                local.get 14
                local.get 15
                i32.lt_s
                )
              )
              )
            )
            (if
              (then
              local.get 9
              local.set 8
              local.get 12
              local.set 13
              local.get 14
              local.set 15
              local.get 10
              local.set 11
              )
            )
            local.get 9
            i32.const 1
            i32.add
            local.set 9
            br 0
          )
        )
        local.get 8
        local.get 7
        i32.ne
        (if
          (then
          local.get 5
          local.get 7
          array.get 50
          local.set 16
          local.get 5
          local.get 7
          local.get 11
          array.set 50
          local.get 5
          local.get 8
          local.get 16
          array.set 50
          )
        )
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        br 0
      )
    )
    local.get 5
  )
  (func $__object_keys (type 67)
    (local $any anyref)
    (local $o (ref null 51))
    (local $arr (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $vec externref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 0
      call 150
      return
      )
    )
    call 88
    local.set 7
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      local.get 7
      return
      )
    )
    local.get 1
    ref.cast (ref 51)
    local.tee 2
    call 102
    local.tee 3
    array.len
    local.set 4
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_s
        br_if 1
        local.get 3
        local.get 5
        array.get 50
        local.tee 6
        ref.is_null
        br_if 1
        local.get 7
        local.get 6
        ref.as_non_null
        struct.get 49 0
        extern.convert_any
        call 89
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 7
  )
  (func $__extern_length (type 46)
    (local $any anyref)
    (local $lenF64 f64)
    (local $lenTrunc f64)
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 53)
    (if (result f64)
      (then
      local.get 1
      ref.cast (ref 53)
      struct.get 53 0
      f64.convert_i32_s
      )
      (else
      f64.const 0
      )
    )
  )
  (func $__extern_get_idx (param externref f64) (result externref)
    (local $any anyref)
    (local $vec (ref null 53))
    (local $i i32)
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 53)
    i32.eqz
    (if
      (then
      ref.null extern
      return
      )
    )
    local.get 2
    ref.cast (ref 53)
    local.set 3
    local.get 1
    i32.trunc_sat_f64_s
    local.tee 4
    i32.const 0
    i32.lt_s
    (if
      (then
      ref.null extern
      return
      )
    )
    local.get 4
    local.get 3
    ref.as_non_null
    struct.get 53 0
    i32.ge_s
    (if
      (then
      ref.null extern
      return
      )
    )
    local.get 3
    ref.as_non_null
    struct.get 53 1
    local.get 4
    array.get 52
  )
  (func $__object_values (type 67)
    (local $any anyref)
    (local $o (ref null 51))
    (local $arr (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $vec externref)
    call 88
    local.set 7
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      local.get 7
      return
      )
    )
    local.get 1
    ref.cast (ref 51)
    local.tee 2
    call 102
    local.tee 3
    array.len
    local.set 4
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_s
        br_if 1
        local.get 3
        local.get 5
        array.get 50
        local.tee 6
        ref.is_null
        br_if 1
        local.get 7
        local.get 6
        ref.as_non_null
        struct.get 49 1
        extern.convert_any
        call 89
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 7
  )
  (func $__object_entries (type 67)
    (local $any anyref)
    (local $o (ref null 51))
    (local $arr (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $vec externref)
    (local $pair externref)
    call 88
    local.set 7
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      local.get 7
      return
      )
    )
    local.get 1
    ref.cast (ref 51)
    local.tee 2
    call 102
    local.tee 3
    array.len
    local.set 4
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_s
        br_if 1
        local.get 3
        local.get 5
        array.get 50
        local.tee 6
        ref.is_null
        br_if 1
        call 88
        local.tee 8
        local.get 6
        ref.as_non_null
        struct.get 49 0
        extern.convert_any
        call 89
        local.get 8
        local.get 6
        ref.as_non_null
        struct.get 49 1
        extern.convert_any
        call 89
        local.get 7
        local.get 8
        call 89
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 7
  )
  (func $__extern_has_idx (param externref f64) (result i32)
    (local $any anyref)
    (local $i i32)
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 53)
    i32.eqz
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 1
    i32.trunc_sat_f64_s
    local.tee 3
    i32.const 0
    i32.lt_s
    (if
      (then
      i32.const 0
      return
      )
    )
    local.get 3
    local.get 2
    ref.cast (ref 53)
    struct.get 53 0
    i32.lt_s
  )
  (func $__object_assign (type 17)
    (local $any anyref)
    (local $sv (ref null 53))
    (local $slen i32)
    (local $si i32)
    (local $srcAny anyref)
    (local $so (ref null 51))
    (local $arr (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $srcExt externref)
    local.get 1
    any.convert_extern
    local.tee 2
    ref.test (ref 53)
    i32.eqz
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 2
    ref.cast (ref 53)
    local.tee 3
    struct.get 53 0
    local.set 4
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_s
        br_if 1
        local.get 3
        ref.as_non_null
        struct.get 53 1
        local.get 5
        array.get 52
        local.tee 12
        any.convert_extern
        local.tee 6
        ref.test (ref 51)
        (if
          (then
          local.get 6
          ref.cast (ref 51)
          local.tee 7
          struct.get 51 1
          local.tee 8
          array.len
          local.set 9
          i32.const 0
          local.set 10
          (block
            (loop
              local.get 10
              local.get 9
              i32.ge_s
              br_if 1
              local.get 8
              local.get 10
              array.get 50
              local.tee 11
              ref.is_null
              i32.eqz
              (if
                (then
                local.get 11
                ref.as_non_null
                struct.get 49 2
                i32.const 128
                i32.and
                i32.eqz
                local.get 11
                ref.as_non_null
                struct.get 49 2
                i32.const 2
                i32.and
                i32.eqz
                i32.eqz
                i32.and
                (if
                  (then
                  local.get 0
                  local.get 11
                  ref.as_non_null
                  struct.get 49 0
                  extern.convert_any
                  local.get 11
                  ref.as_non_null
                  struct.get 49 1
                  extern.convert_any
                  call 85
                  )
                )
                )
              )
              local.get 10
              i32.const 1
              i32.add
              local.set 10
              br 0
            )
          )
          )
        )
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 0
  )
  (func $__object_is (type 69)
    (local $aa anyref)
    (local $ba anyref)
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
      call 70
      local.get 1
      call 70
      i32.and
      (if (result i32)
        (then
        local.get 0
        call 60
        i64.reinterpret_f64
        local.get 1
        call 60
        i64.reinterpret_f64
        i64.eq
        )
        (else
        local.get 0
        call 71
        local.get 1
        call 71
        i32.and
        (if (result i32)
          (then
          local.get 0
          call 63
          local.get 1
          call 63
          i32.eq
          )
          (else
          local.get 0
          call 72
          local.get 1
          call 72
          i32.and
          (if (result i32)
            (then
            local.get 0
            call 65
            local.get 1
            call 65
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
            ref.test (ref 6)
            local.get 3
            ref.test (ref 6)
            i32.and
            (if (result i32)
              (then
              local.get 2
              ref.cast (ref 6)
              call 3
              ref.cast null (ref null 6)
              local.get 3
              ref.cast (ref 6)
              ref.cast null (ref null 6)
              call 3
              call 6
              )
              (else
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
    )
  )
  (func $__defineProperty_value (param externref externref externref f64) (result externref)
    (local $o (ref null 51))
    (local $any anyref)
    (local $cap i32)
    (local $load i32)
    (local $nflags i32)
    (local $hf i32)
    (local $seq i32)
    (local $e (ref null 49))
    (local $efl i32)
    local.get 0
    any.convert_extern
    local.tee 5
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 5
    ref.cast (ref 51)
    local.set 4
    local.get 3
    i32.trunc_f64_s
    local.tee 9
    i32.const 7
    i32.and
    local.set 8
    local.get 4
    ref.as_non_null
    local.get 1
    call 54
    local.tee 11
    ref.is_null
    (if
      (then
      local.get 4
      ref.as_non_null
      struct.get 51 4
      i32.const 1
      i32.and
      (if
        (then
        i32.const 59
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
        i32.const 100
        i32.const 101
        i32.const 102
        i32.const 105
        i32.const 110
        i32.const 101
        i32.const 32
        i32.const 112
        i32.const 114
        i32.const 111
        i32.const 112
        i32.const 101
        i32.const 114
        i32.const 116
        i32.const 121
        i32.const 44
        i32.const 32
        i32.const 111
        i32.const 98
        i32.const 106
        i32.const 101
        i32.const 99
        i32.const 116
        i32.const 32
        i32.const 105
        i32.const 115
        i32.const 32
        i32.const 110
        i32.const 111
        i32.const 116
        i32.const 32
        i32.const 101
        i32.const 120
        i32.const 116
        i32.const 101
        i32.const 110
        i32.const 115
        i32.const 105
        i32.const 98
        i32.const 108
        i32.const 101
        array.new_fixed 5 59
        struct.new 7
        extern.convert_any
        call 64
        throw 0
        )
      )
      )
      (else
      local.get 11
      ref.as_non_null
      struct.get 49 2
      local.tee 12
      i32.const 4
      i32.and
      i32.const 0
      i32.ne
      i32.eqz
      (if
        (then
        local.get 9
        i32.const 32
        i32.and
        i32.const 0
        i32.ne
        local.get 9
        i32.const 4
        i32.and
        i32.const 0
        i32.ne
        i32.and
        (if
          (then
          i32.const 90
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
          i32.const 114
          i32.const 101
          i32.const 100
          i32.const 101
          i32.const 102
          i32.const 105
          i32.const 110
          i32.const 101
          i32.const 32
          i32.const 112
          i32.const 114
          i32.const 111
          i32.const 112
          i32.const 101
          i32.const 114
          i32.const 116
          i32.const 121
          i32.const 58
          i32.const 32
          i32.const 99
          i32.const 111
          i32.const 110
          i32.const 102
          i32.const 105
          i32.const 103
          i32.const 117
          i32.const 114
          i32.const 97
          i32.const 98
          i32.const 108
          i32.const 101
          i32.const 32
          i32.const 97
          i32.const 116
          i32.const 116
          i32.const 114
          i32.const 105
          i32.const 98
          i32.const 117
          i32.const 116
          i32.const 101
          i32.const 32
          i32.const 111
          i32.const 102
          i32.const 32
          i32.const 97
          i32.const 32
          i32.const 110
          i32.const 111
          i32.const 110
          i32.const 45
          i32.const 99
          i32.const 111
          i32.const 110
          i32.const 102
          i32.const 105
          i32.const 103
          i32.const 117
          i32.const 114
          i32.const 97
          i32.const 98
          i32.const 108
          i32.const 101
          i32.const 32
          i32.const 112
          i32.const 114
          i32.const 111
          i32.const 112
          i32.const 101
          i32.const 114
          i32.const 116
          i32.const 121
          array.new_fixed 5 90
          struct.new 7
          extern.convert_any
          call 64
          throw 0
          )
        )
        local.get 9
        i32.const 16
        i32.and
        i32.const 0
        i32.ne
        (if
          (then
          local.get 9
          i32.const 2
          i32.and
          i32.const 0
          i32.ne
          local.get 12
          i32.const 2
          i32.and
          i32.const 0
          i32.ne
          i32.ne
          (if
            (then
            i32.const 88
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
            i32.const 114
            i32.const 101
            i32.const 100
            i32.const 101
            i32.const 102
            i32.const 105
            i32.const 110
            i32.const 101
            i32.const 32
            i32.const 112
            i32.const 114
            i32.const 111
            i32.const 112
            i32.const 101
            i32.const 114
            i32.const 116
            i32.const 121
            i32.const 58
            i32.const 32
            i32.const 101
            i32.const 110
            i32.const 117
            i32.const 109
            i32.const 101
            i32.const 114
            i32.const 97
            i32.const 98
            i32.const 108
            i32.const 101
            i32.const 32
            i32.const 97
            i32.const 116
            i32.const 116
            i32.const 114
            i32.const 105
            i32.const 98
            i32.const 117
            i32.const 116
            i32.const 101
            i32.const 32
            i32.const 111
            i32.const 102
            i32.const 32
            i32.const 97
            i32.const 32
            i32.const 110
            i32.const 111
            i32.const 110
            i32.const 45
            i32.const 99
            i32.const 111
            i32.const 110
            i32.const 102
            i32.const 105
            i32.const 103
            i32.const 117
            i32.const 114
            i32.const 97
            i32.const 98
            i32.const 108
            i32.const 101
            i32.const 32
            i32.const 112
            i32.const 114
            i32.const 111
            i32.const 112
            i32.const 101
            i32.const 114
            i32.const 116
            i32.const 121
            array.new_fixed 5 88
            struct.new 7
            extern.convert_any
            call 64
            throw 0
            )
          )
          )
        )
        local.get 12
        i32.const 8
        i32.and
        i32.const 0
        i32.ne
        (if
          (then
          i32.const 98
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
          i32.const 114
          i32.const 101
          i32.const 100
          i32.const 101
          i32.const 102
          i32.const 105
          i32.const 110
          i32.const 101
          i32.const 32
          i32.const 112
          i32.const 114
          i32.const 111
          i32.const 112
          i32.const 101
          i32.const 114
          i32.const 116
          i32.const 121
          i32.const 58
          i32.const 32
          i32.const 99
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
          i32.const 97
          i32.const 32
          i32.const 110
          i32.const 111
          i32.const 110
          i32.const 45
          i32.const 99
          i32.const 111
          i32.const 110
          i32.const 102
          i32.const 105
          i32.const 103
          i32.const 117
          i32.const 114
          i32.const 97
          i32.const 98
          i32.const 108
          i32.const 101
          i32.const 32
          i32.const 97
          i32.const 99
          i32.const 99
          i32.const 101
          i32.const 115
          i32.const 115
          i32.const 111
          i32.const 114
          i32.const 32
          i32.const 116
          i32.const 111
          i32.const 32
          i32.const 97
          i32.const 32
          i32.const 100
          i32.const 97
          i32.const 116
          i32.const 97
          i32.const 32
          i32.const 112
          i32.const 114
          i32.const 111
          i32.const 112
          i32.const 101
          i32.const 114
          i32.const 116
          i32.const 121
          array.new_fixed 5 98
          struct.new 7
          extern.convert_any
          call 64
          throw 0
          )
        )
        local.get 12
        i32.const 1
        i32.and
        i32.const 0
        i32.ne
        i32.eqz
        (if
          (then
          local.get 9
          i32.const 8
          i32.and
          i32.const 0
          i32.ne
          local.get 9
          i32.const 1
          i32.and
          i32.const 0
          i32.ne
          i32.and
          (if
            (then
            i32.const 100
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
            i32.const 114
            i32.const 101
            i32.const 100
            i32.const 101
            i32.const 102
            i32.const 105
            i32.const 110
            i32.const 101
            i32.const 32
            i32.const 112
            i32.const 114
            i32.const 111
            i32.const 112
            i32.const 101
            i32.const 114
            i32.const 116
            i32.const 121
            i32.const 58
            i32.const 32
            i32.const 119
            i32.const 114
            i32.const 105
            i32.const 116
            i32.const 97
            i32.const 98
            i32.const 108
            i32.const 101
            i32.const 32
            i32.const 97
            i32.const 116
            i32.const 116
            i32.const 114
            i32.const 105
            i32.const 98
            i32.const 117
            i32.const 116
            i32.const 101
            i32.const 32
            i32.const 111
            i32.const 102
            i32.const 32
            i32.const 97
            i32.const 32
            i32.const 110
            i32.const 111
            i32.const 110
            i32.const 45
            i32.const 99
            i32.const 111
            i32.const 110
            i32.const 102
            i32.const 105
            i32.const 103
            i32.const 117
            i32.const 114
            i32.const 97
            i32.const 98
            i32.const 108
            i32.const 101
            i32.const 44
            i32.const 32
            i32.const 110
            i32.const 111
            i32.const 110
            i32.const 45
            i32.const 119
            i32.const 114
            i32.const 105
            i32.const 116
            i32.const 97
            i32.const 98
            i32.const 108
            i32.const 101
            i32.const 32
            i32.const 112
            i32.const 114
            i32.const 111
            i32.const 112
            i32.const 101
            i32.const 114
            i32.const 116
            i32.const 121
            array.new_fixed 5 100
            struct.new 7
            extern.convert_any
            call 64
            throw 0
            )
          )
          local.get 9
          i32.const 128
          i32.and
          i32.const 0
          i32.ne
          (if
            (then
            local.get 2
            local.get 11
            ref.as_non_null
            struct.get 49 1
            extern.convert_any
            call 111
            i32.eqz
            (if
              (then
              i32.const 77
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
              i32.const 115
              i32.const 115
              i32.const 105
              i32.const 103
              i32.const 110
              i32.const 32
              i32.const 116
              i32.const 111
              i32.const 32
              i32.const 114
              i32.const 101
              i32.const 97
              i32.const 100
              i32.const 32
              i32.const 111
              i32.const 110
              i32.const 108
              i32.const 121
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
              i32.const 102
              i32.const 32
              i32.const 97
              i32.const 32
              i32.const 110
              i32.const 111
              i32.const 110
              i32.const 45
              i32.const 99
              i32.const 111
              i32.const 110
              i32.const 102
              i32.const 105
              i32.const 103
              i32.const 117
              i32.const 114
              i32.const 97
              i32.const 98
              i32.const 108
              i32.const 101
              i32.const 32
              i32.const 112
              i32.const 114
              i32.const 111
              i32.const 112
              i32.const 101
              i32.const 114
              i32.const 116
              i32.const 121
              array.new_fixed 5 77
              struct.new 7
              extern.convert_any
              call 64
              throw 0
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
    local.get 4
    ref.as_non_null
    struct.get 51 2
    local.get 4
    ref.as_non_null
    struct.get 51 3
    i32.add
    local.set 7
    local.get 4
    ref.as_non_null
    struct.get 51 1
    array.len
    local.set 6
    local.get 7
    i32.const 1
    i32.add
    i32.const 10
    i32.mul
    local.get 6
    i32.const 7
    i32.mul
    i32.ge_s
    (if
      (then
      local.get 4
      ref.as_non_null
      call 83
      )
    )
    local.get 4
    ref.as_non_null
    struct.get 51 5
    local.set 10
    local.get 4
    ref.as_non_null
    local.get 10
    i32.const 1
    i32.add
    struct.set 51 5
    local.get 4
    ref.as_non_null
    local.get 1
    local.get 2
    any.convert_extern
    local.get 8
    local.get 10
    call 57
    local.get 0
  )
  (func $__defineProperty_accessor (param externref externref externref externref f64) (result externref)
    (local $o (ref null 51))
    (local $any anyref)
    (local $cap i32)
    (local $load i32)
    (local $nflags i32)
    (local $hf i32)
    (local $seq i32)
    (local $e (ref null 49))
    local.get 0
    any.convert_extern
    local.tee 6
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 6
    ref.cast (ref 51)
    local.set 5
    local.get 4
    i32.trunc_f64_s
    local.tee 10
    i32.const 6
    i32.and
    i32.const 8
    i32.or
    local.set 9
    local.get 5
    ref.as_non_null
    struct.get 51 2
    local.get 5
    ref.as_non_null
    struct.get 51 3
    i32.add
    local.set 8
    local.get 5
    ref.as_non_null
    struct.get 51 1
    array.len
    local.set 7
    local.get 8
    i32.const 1
    i32.add
    i32.const 10
    i32.mul
    local.get 7
    i32.const 7
    i32.mul
    i32.ge_s
    (if
      (then
      local.get 5
      ref.as_non_null
      call 83
      )
    )
    local.get 5
    ref.as_non_null
    struct.get 51 5
    local.set 11
    local.get 5
    ref.as_non_null
    local.get 11
    i32.const 1
    i32.add
    struct.set 51 5
    local.get 5
    ref.as_non_null
    local.get 1
    ref.null -18
    local.get 9
    local.get 11
    call 57
    local.get 5
    ref.as_non_null
    local.get 1
    call 54
    local.tee 12
    ref.is_null
    i32.eqz
    (if
      (then
      local.get 12
      ref.as_non_null
      local.get 2
      any.convert_extern
      struct.set 49 4
      local.get 12
      ref.as_non_null
      local.get 3
      any.convert_extern
      struct.set 49 5
      local.get 12
      ref.as_non_null
      ref.null -18
      struct.set 49 1
      )
    )
    local.get 0
  )
  (func $__defineProperties (type 17)
    (local $objAny anyref)
    (local $obj (ref null 51))
    (local $descsAny anyref)
    (local $descs (ref null 51))
    (local $ordered (ref null 50))
    (local $gathered (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $m i32)
    (local $entry (ref null 49))
    (local $rawDesc externref)
    (local $rawAny anyref)
    (local $rawObj (ref null 51))
    (local $flags i32)
    (local $hasData i32)
    (local $hasAccessor i32)
    (local $key externref)
    (local $value externref)
    (local $getter externref)
    (local $setter externref)
    local.get 0
    ref.is_null
    (if
      (then
      i32.const 79
      i32.const 0
      i32.const 79
      i32.const 98
      i32.const 106
      i32.const 101
      i32.const 99
      i32.const 116
      i32.const 46
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 80
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 105
      i32.const 101
      i32.const 115
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 115
      i32.const 117
      i32.const 112
      i32.const 112
      i32.const 111
      i32.const 114
      i32.const 116
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 100
      i32.const 101
      i32.const 115
      i32.const 99
      i32.const 114
      i32.const 105
      i32.const 112
      i32.const 116
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 115
      i32.const 104
      i32.const 97
      i32.const 112
      i32.const 101
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
      i32.const 32
      i32.const 40
      i32.const 35
      i32.const 49
      i32.const 57
      i32.const 48
      i32.const 54
      i32.const 41
      array.new_fixed 5 79
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 79
      i32.const 0
      i32.const 79
      i32.const 98
      i32.const 106
      i32.const 101
      i32.const 99
      i32.const 116
      i32.const 46
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 80
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 105
      i32.const 101
      i32.const 115
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 115
      i32.const 117
      i32.const 112
      i32.const 112
      i32.const 111
      i32.const 114
      i32.const 116
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 100
      i32.const 101
      i32.const 115
      i32.const 99
      i32.const 114
      i32.const 105
      i32.const 112
      i32.const 116
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 115
      i32.const 104
      i32.const 97
      i32.const 112
      i32.const 101
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
      i32.const 32
      i32.const 40
      i32.const 35
      i32.const 49
      i32.const 57
      i32.const 48
      i32.const 54
      i32.const 41
      array.new_fixed 5 79
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    ref.cast (ref 51)
    local.set 3
    local.get 1
    ref.is_null
    (if
      (then
      i32.const 79
      i32.const 0
      i32.const 79
      i32.const 98
      i32.const 106
      i32.const 101
      i32.const 99
      i32.const 116
      i32.const 46
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 80
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 105
      i32.const 101
      i32.const 115
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 115
      i32.const 117
      i32.const 112
      i32.const 112
      i32.const 111
      i32.const 114
      i32.const 116
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 100
      i32.const 101
      i32.const 115
      i32.const 99
      i32.const 114
      i32.const 105
      i32.const 112
      i32.const 116
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 115
      i32.const 104
      i32.const 97
      i32.const 112
      i32.const 101
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
      i32.const 32
      i32.const 40
      i32.const 35
      i32.const 49
      i32.const 57
      i32.const 48
      i32.const 54
      i32.const 41
      array.new_fixed 5 79
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 1
    any.convert_extern
    local.tee 4
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 79
      i32.const 0
      i32.const 79
      i32.const 98
      i32.const 106
      i32.const 101
      i32.const 99
      i32.const 116
      i32.const 46
      i32.const 100
      i32.const 101
      i32.const 102
      i32.const 105
      i32.const 110
      i32.const 101
      i32.const 80
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 105
      i32.const 101
      i32.const 115
      i32.const 32
      i32.const 117
      i32.const 110
      i32.const 115
      i32.const 117
      i32.const 112
      i32.const 112
      i32.const 111
      i32.const 114
      i32.const 116
      i32.const 101
      i32.const 100
      i32.const 32
      i32.const 100
      i32.const 101
      i32.const 115
      i32.const 99
      i32.const 114
      i32.const 105
      i32.const 112
      i32.const 116
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 115
      i32.const 104
      i32.const 97
      i32.const 112
      i32.const 101
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
      i32.const 32
      i32.const 40
      i32.const 35
      i32.const 49
      i32.const 57
      i32.const 48
      i32.const 54
      i32.const 41
      array.new_fixed 5 79
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 4
    ref.cast (ref 51)
    local.tee 5
    ref.as_non_null
    call 102
    local.tee 6
    array.len
    local.tee 8
    array.new_default 50
    local.set 7
    i32.const 0
    local.set 10
    i32.const 0
    local.set 9
    (block
      (loop
        local.get 9
        local.get 8
        i32.ge_s
        br_if 1
        local.get 6
        local.get 9
        array.get 50
        local.tee 11
        ref.is_null
        br_if 1
        local.get 11
        ref.as_non_null
        struct.get 49 0
        extern.convert_any
        local.set 18
        local.get 11
        ref.as_non_null
        struct.get 49 1
        extern.convert_any
        local.tee 12
        any.convert_extern
        local.tee 13
        ref.test (ref 51)
        i32.eqz
        (if
          (then
          i32.const 79
          i32.const 0
          i32.const 79
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 46
          i32.const 100
          i32.const 101
          i32.const 102
          i32.const 105
          i32.const 110
          i32.const 101
          i32.const 80
          i32.const 114
          i32.const 111
          i32.const 112
          i32.const 101
          i32.const 114
          i32.const 116
          i32.const 105
          i32.const 101
          i32.const 115
          i32.const 32
          i32.const 117
          i32.const 110
          i32.const 115
          i32.const 117
          i32.const 112
          i32.const 112
          i32.const 111
          i32.const 114
          i32.const 116
          i32.const 101
          i32.const 100
          i32.const 32
          i32.const 100
          i32.const 101
          i32.const 115
          i32.const 99
          i32.const 114
          i32.const 105
          i32.const 112
          i32.const 116
          i32.const 111
          i32.const 114
          i32.const 32
          i32.const 115
          i32.const 104
          i32.const 97
          i32.const 112
          i32.const 101
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
          i32.const 32
          i32.const 40
          i32.const 35
          i32.const 49
          i32.const 57
          i32.const 48
          i32.const 54
          i32.const 41
          array.new_fixed 5 79
          struct.new 7
          extern.convert_any
          call 64
          throw 0
          )
        )
        local.get 13
        ref.cast (ref 51)
        local.set 14
        i32.const 0
        local.set 15
        i32.const 0
        local.set 16
        i32.const 0
        local.set 17
        ref.null extern
        local.set 19
        ref.null extern
        local.set 20
        ref.null extern
        local.set 21
        local.get 12
        i32.const 5
        i32.const 0
        i32.const 118
        i32.const 97
        i32.const 108
        i32.const 117
        i32.const 101
        array.new_fixed 5 5
        struct.new 7
        extern.convert_any
        call 90
        (if
          (then
          i32.const 1
          local.set 16
          local.get 15
          i32.const 128
          i32.or
          local.set 15
          local.get 12
          i32.const 5
          i32.const 0
          i32.const 118
          i32.const 97
          i32.const 108
          i32.const 117
          i32.const 101
          array.new_fixed 5 5
          struct.new 7
          extern.convert_any
          call 56
          local.set 19
          )
        )
        local.get 12
        i32.const 8
        i32.const 0
        i32.const 119
        i32.const 114
        i32.const 105
        i32.const 116
        i32.const 97
        i32.const 98
        i32.const 108
        i32.const 101
        array.new_fixed 5 8
        struct.new 7
        extern.convert_any
        call 90
        (if
          (then
          i32.const 1
          local.set 16
          local.get 15
          i32.const 8
          i32.or
          local.set 15
          local.get 12
          i32.const 8
          i32.const 0
          i32.const 119
          i32.const 114
          i32.const 105
          i32.const 116
          i32.const 97
          i32.const 98
          i32.const 108
          i32.const 101
          array.new_fixed 5 8
          struct.new 7
          extern.convert_any
          call 56
          call 69
          (if
            (then
            local.get 15
            i32.const 1
            i32.or
            local.set 15
            )
          )
          )
        )
        local.get 12
        i32.const 10
        i32.const 0
        i32.const 101
        i32.const 110
        i32.const 117
        i32.const 109
        i32.const 101
        i32.const 114
        i32.const 97
        i32.const 98
        i32.const 108
        i32.const 101
        array.new_fixed 5 10
        struct.new 7
        extern.convert_any
        call 90
        (if
          (then
          local.get 15
          i32.const 16
          i32.or
          local.set 15
          local.get 12
          i32.const 10
          i32.const 0
          i32.const 101
          i32.const 110
          i32.const 117
          i32.const 109
          i32.const 101
          i32.const 114
          i32.const 97
          i32.const 98
          i32.const 108
          i32.const 101
          array.new_fixed 5 10
          struct.new 7
          extern.convert_any
          call 56
          call 69
          (if
            (then
            local.get 15
            i32.const 2
            i32.or
            local.set 15
            )
          )
          )
        )
        local.get 12
        i32.const 12
        i32.const 0
        i32.const 99
        i32.const 111
        i32.const 110
        i32.const 102
        i32.const 105
        i32.const 103
        i32.const 117
        i32.const 114
        i32.const 97
        i32.const 98
        i32.const 108
        i32.const 101
        array.new_fixed 5 12
        struct.new 7
        extern.convert_any
        call 90
        (if
          (then
          local.get 15
          i32.const 32
          i32.or
          local.set 15
          local.get 12
          i32.const 12
          i32.const 0
          i32.const 99
          i32.const 111
          i32.const 110
          i32.const 102
          i32.const 105
          i32.const 103
          i32.const 117
          i32.const 114
          i32.const 97
          i32.const 98
          i32.const 108
          i32.const 101
          array.new_fixed 5 12
          struct.new 7
          extern.convert_any
          call 56
          call 69
          (if
            (then
            local.get 15
            i32.const 4
            i32.or
            local.set 15
            )
          )
          )
        )
        local.get 12
        i32.const 3
        i32.const 0
        i32.const 103
        i32.const 101
        i32.const 116
        array.new_fixed 5 3
        struct.new 7
        extern.convert_any
        call 90
        (if
          (then
          i32.const 1
          local.set 17
          local.get 12
          i32.const 3
          i32.const 0
          i32.const 103
          i32.const 101
          i32.const 116
          array.new_fixed 5 3
          struct.new 7
          extern.convert_any
          call 56
          local.tee 20
          ref.is_null
          i32.eqz
          (if
            (then
            local.get 20
            call 76
            i32.eqz
            (if
              (then
              i32.const 67
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
              i32.const 79
              i32.const 98
              i32.const 106
              i32.const 101
              i32.const 99
              i32.const 116
              i32.const 46
              i32.const 100
              i32.const 101
              i32.const 102
              i32.const 105
              i32.const 110
              i32.const 101
              i32.const 80
              i32.const 114
              i32.const 111
              i32.const 112
              i32.const 101
              i32.const 114
              i32.const 116
              i32.const 105
              i32.const 101
              i32.const 115
              i32.const 32
              i32.const 103
              i32.const 101
              i32.const 116
              i32.const 47
              i32.const 115
              i32.const 101
              i32.const 116
              i32.const 32
              i32.const 109
              i32.const 117
              i32.const 115
              i32.const 116
              i32.const 32
              i32.const 98
              i32.const 101
              i32.const 32
              i32.const 99
              i32.const 97
              i32.const 108
              i32.const 108
              i32.const 97
              i32.const 98
              i32.const 108
              i32.const 101
              i32.const 32
              i32.const 40
              i32.const 35
              i32.const 49
              i32.const 57
              i32.const 48
              i32.const 54
              i32.const 41
              array.new_fixed 5 67
              struct.new 7
              extern.convert_any
              call 64
              throw 0
              )
            )
            )
          )
          )
        )
        local.get 12
        i32.const 3
        i32.const 0
        i32.const 115
        i32.const 101
        i32.const 116
        array.new_fixed 5 3
        struct.new 7
        extern.convert_any
        call 90
        (if
          (then
          i32.const 1
          local.set 17
          local.get 12
          i32.const 3
          i32.const 0
          i32.const 115
          i32.const 101
          i32.const 116
          array.new_fixed 5 3
          struct.new 7
          extern.convert_any
          call 56
          local.tee 21
          ref.is_null
          i32.eqz
          (if
            (then
            local.get 21
            call 76
            i32.eqz
            (if
              (then
              i32.const 67
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
              i32.const 79
              i32.const 98
              i32.const 106
              i32.const 101
              i32.const 99
              i32.const 116
              i32.const 46
              i32.const 100
              i32.const 101
              i32.const 102
              i32.const 105
              i32.const 110
              i32.const 101
              i32.const 80
              i32.const 114
              i32.const 111
              i32.const 112
              i32.const 101
              i32.const 114
              i32.const 116
              i32.const 105
              i32.const 101
              i32.const 115
              i32.const 32
              i32.const 103
              i32.const 101
              i32.const 116
              i32.const 47
              i32.const 115
              i32.const 101
              i32.const 116
              i32.const 32
              i32.const 109
              i32.const 117
              i32.const 115
              i32.const 116
              i32.const 32
              i32.const 98
              i32.const 101
              i32.const 32
              i32.const 99
              i32.const 97
              i32.const 108
              i32.const 108
              i32.const 97
              i32.const 98
              i32.const 108
              i32.const 101
              i32.const 32
              i32.const 40
              i32.const 35
              i32.const 49
              i32.const 57
              i32.const 48
              i32.const 54
              i32.const 41
              array.new_fixed 5 67
              struct.new 7
              extern.convert_any
              call 64
              throw 0
              )
            )
            )
          )
          )
        )
        local.get 16
        local.get 17
        i32.and
        (if
          (then
          i32.const 73
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
          i32.const 73
          i32.const 110
          i32.const 118
          i32.const 97
          i32.const 108
          i32.const 105
          i32.const 100
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
          i32.const 100
          i32.const 101
          i32.const 115
          i32.const 99
          i32.const 114
          i32.const 105
          i32.const 112
          i32.const 116
          i32.const 111
          i32.const 114
          i32.const 32
          i32.const 105
          i32.const 110
          i32.const 32
          i32.const 79
          i32.const 98
          i32.const 106
          i32.const 101
          i32.const 99
          i32.const 116
          i32.const 46
          i32.const 100
          i32.const 101
          i32.const 102
          i32.const 105
          i32.const 110
          i32.const 101
          i32.const 80
          i32.const 114
          i32.const 111
          i32.const 112
          i32.const 101
          i32.const 114
          i32.const 116
          i32.const 105
          i32.const 101
          i32.const 115
          i32.const 32
          i32.const 40
          i32.const 35
          i32.const 49
          i32.const 57
          i32.const 48
          i32.const 54
          i32.const 41
          array.new_fixed 5 73
          struct.new 7
          extern.convert_any
          call 64
          throw 0
          )
        )
        local.get 17
        (if
          (then
          local.get 15
          i32.const 64
          i32.or
          local.set 15
          )
        )
        local.get 7
        local.get 10
        local.get 11
        ref.as_non_null
        struct.get 49 0
        local.get 19
        any.convert_extern
        local.get 15
        i32.const 0
        local.get 20
        any.convert_extern
        local.get 21
        any.convert_extern
        struct.new 49
        array.set 50
        local.get 10
        i32.const 1
        i32.add
        local.set 10
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        br 0
      )
    )
    i32.const 0
    local.set 9
    (block
      (loop
        local.get 9
        local.get 10
        i32.ge_s
        br_if 1
        local.get 7
        local.get 9
        array.get 50
        local.tee 11
        ref.as_non_null
        struct.get 49 2
        local.tee 15
        i32.const 64
        i32.and
        (if
          (then
          local.get 0
          local.get 11
          ref.as_non_null
          struct.get 49 0
          extern.convert_any
          local.get 11
          ref.as_non_null
          struct.get 49 4
          extern.convert_any
          local.get 11
          ref.as_non_null
          struct.get 49 5
          extern.convert_any
          local.get 15
          f64.convert_i32_s
          call 113
          drop
          )
          (else
          local.get 0
          local.get 11
          ref.as_non_null
          struct.get 49 0
          extern.convert_any
          local.get 11
          ref.as_non_null
          struct.get 49 1
          extern.convert_any
          local.get 15
          f64.convert_i32_s
          call 112
          drop
          )
        )
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        br 0
      )
    )
    local.get 0
  )
  (func $__obj_define_from_desc (type 81)
    (local $desc externref)
    (local $descAny anyref)
    (local $flags i32)
    (local $hasData i32)
    (local $hasAccessor i32)
    (local $value externref)
    (local $getter externref)
    (local $setter externref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 1
      local.get 2
      call 152
      return
      )
    )
    local.get 2
    ref.is_null
    (if
      (then
      local.get 0
      return
      )
    )
    local.get 2
    any.convert_extern
    local.tee 4
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      i32.const 49
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
      i32.const 80
      i32.const 114
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 116
      i32.const 121
      i32.const 32
      i32.const 100
      i32.const 101
      i32.const 115
      i32.const 99
      i32.const 114
      i32.const 105
      i32.const 112
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 109
      i32.const 117
      i32.const 115
      i32.const 116
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 32
      i32.const 97
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 98
      i32.const 106
      i32.const 101
      i32.const 99
      i32.const 116
      array.new_fixed 5 49
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    local.set 3
    i32.const 0
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.set 7
    ref.null extern
    local.set 8
    ref.null extern
    local.set 9
    ref.null extern
    local.set 10
    local.get 3
    i32.const 5
    i32.const 0
    i32.const 118
    i32.const 97
    i32.const 108
    i32.const 117
    i32.const 101
    array.new_fixed 5 5
    struct.new 7
    extern.convert_any
    call 90
    (if
      (then
      i32.const 1
      local.set 6
      local.get 3
      i32.const 5
      i32.const 0
      i32.const 118
      i32.const 97
      i32.const 108
      i32.const 117
      i32.const 101
      array.new_fixed 5 5
      struct.new 7
      extern.convert_any
      call 56
      local.set 8
      )
    )
    local.get 3
    i32.const 8
    i32.const 0
    i32.const 119
    i32.const 114
    i32.const 105
    i32.const 116
    i32.const 97
    i32.const 98
    i32.const 108
    i32.const 101
    array.new_fixed 5 8
    struct.new 7
    extern.convert_any
    call 90
    (if
      (then
      i32.const 1
      local.set 6
      local.get 3
      i32.const 8
      i32.const 0
      i32.const 119
      i32.const 114
      i32.const 105
      i32.const 116
      i32.const 97
      i32.const 98
      i32.const 108
      i32.const 101
      array.new_fixed 5 8
      struct.new 7
      extern.convert_any
      call 56
      call 69
      (if
        (then
        local.get 5
        i32.const 1
        i32.or
        local.set 5
        )
      )
      )
    )
    local.get 3
    i32.const 10
    i32.const 0
    i32.const 101
    i32.const 110
    i32.const 117
    i32.const 109
    i32.const 101
    i32.const 114
    i32.const 97
    i32.const 98
    i32.const 108
    i32.const 101
    array.new_fixed 5 10
    struct.new 7
    extern.convert_any
    call 90
    (if
      (then
      local.get 3
      i32.const 10
      i32.const 0
      i32.const 101
      i32.const 110
      i32.const 117
      i32.const 109
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 98
      i32.const 108
      i32.const 101
      array.new_fixed 5 10
      struct.new 7
      extern.convert_any
      call 56
      call 69
      (if
        (then
        local.get 5
        i32.const 2
        i32.or
        local.set 5
        )
      )
      )
    )
    local.get 3
    i32.const 12
    i32.const 0
    i32.const 99
    i32.const 111
    i32.const 110
    i32.const 102
    i32.const 105
    i32.const 103
    i32.const 117
    i32.const 114
    i32.const 97
    i32.const 98
    i32.const 108
    i32.const 101
    array.new_fixed 5 12
    struct.new 7
    extern.convert_any
    call 90
    (if
      (then
      local.get 3
      i32.const 12
      i32.const 0
      i32.const 99
      i32.const 111
      i32.const 110
      i32.const 102
      i32.const 105
      i32.const 103
      i32.const 117
      i32.const 114
      i32.const 97
      i32.const 98
      i32.const 108
      i32.const 101
      array.new_fixed 5 12
      struct.new 7
      extern.convert_any
      call 56
      call 69
      (if
        (then
        local.get 5
        i32.const 4
        i32.or
        local.set 5
        )
      )
      )
    )
    local.get 3
    i32.const 3
    i32.const 0
    i32.const 103
    i32.const 101
    i32.const 116
    array.new_fixed 5 3
    struct.new 7
    extern.convert_any
    call 90
    (if
      (then
      i32.const 1
      local.set 7
      local.get 3
      i32.const 3
      i32.const 0
      i32.const 103
      i32.const 101
      i32.const 116
      array.new_fixed 5 3
      struct.new 7
      extern.convert_any
      call 56
      local.tee 9
      ref.is_null
      i32.eqz
      (if
        (then
        local.get 9
        call 76
        i32.eqz
        (if
          (then
          i32.const 43
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
          i32.const 71
          i32.const 101
          i32.const 116
          i32.const 116
          i32.const 101
          i32.const 114
          i32.const 47
          i32.const 115
          i32.const 101
          i32.const 116
          i32.const 116
          i32.const 101
          i32.const 114
          i32.const 32
          i32.const 109
          i32.const 117
          i32.const 115
          i32.const 116
          i32.const 32
          i32.const 98
          i32.const 101
          i32.const 32
          i32.const 97
          i32.const 32
          i32.const 102
          i32.const 117
          i32.const 110
          i32.const 99
          i32.const 116
          i32.const 105
          i32.const 111
          i32.const 110
          array.new_fixed 5 43
          struct.new 7
          extern.convert_any
          call 64
          throw 0
          )
        )
        )
      )
      )
    )
    local.get 3
    i32.const 3
    i32.const 0
    i32.const 115
    i32.const 101
    i32.const 116
    array.new_fixed 5 3
    struct.new 7
    extern.convert_any
    call 90
    (if
      (then
      i32.const 1
      local.set 7
      local.get 3
      i32.const 3
      i32.const 0
      i32.const 115
      i32.const 101
      i32.const 116
      array.new_fixed 5 3
      struct.new 7
      extern.convert_any
      call 56
      local.tee 10
      ref.is_null
      i32.eqz
      (if
        (then
        local.get 10
        call 76
        i32.eqz
        (if
          (then
          i32.const 43
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
          i32.const 71
          i32.const 101
          i32.const 116
          i32.const 116
          i32.const 101
          i32.const 114
          i32.const 47
          i32.const 115
          i32.const 101
          i32.const 116
          i32.const 116
          i32.const 101
          i32.const 114
          i32.const 32
          i32.const 109
          i32.const 117
          i32.const 115
          i32.const 116
          i32.const 32
          i32.const 98
          i32.const 101
          i32.const 32
          i32.const 97
          i32.const 32
          i32.const 102
          i32.const 117
          i32.const 110
          i32.const 99
          i32.const 116
          i32.const 105
          i32.const 111
          i32.const 110
          array.new_fixed 5 43
          struct.new 7
          extern.convert_any
          call 64
          throw 0
          )
        )
        )
      )
      )
    )
    local.get 6
    local.get 7
    i32.and
    (if
      (then
      i32.const 103
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
      i32.const 73
      i32.const 110
      i32.const 118
      i32.const 97
      i32.const 108
      i32.const 105
      i32.const 100
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
      i32.const 100
      i32.const 101
      i32.const 115
      i32.const 99
      i32.const 114
      i32.const 105
      i32.const 112
      i32.const 116
      i32.const 111
      i32.const 114
      i32.const 46
      i32.const 32
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 98
      i32.const 111
      i32.const 116
      i32.const 104
      i32.const 32
      i32.const 115
      i32.const 112
      i32.const 101
      i32.const 99
      i32.const 105
      i32.const 102
      i32.const 121
      i32.const 32
      i32.const 97
      i32.const 99
      i32.const 99
      i32.const 101
      i32.const 115
      i32.const 115
      i32.const 111
      i32.const 114
      i32.const 115
      i32.const 32
      i32.const 97
      i32.const 110
      i32.const 100
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 118
      i32.const 97
      i32.const 108
      i32.const 117
      i32.const 101
      i32.const 32
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 119
      i32.const 114
      i32.const 105
      i32.const 116
      i32.const 97
      i32.const 98
      i32.const 108
      i32.const 101
      i32.const 32
      i32.const 97
      i32.const 116
      i32.const 116
      i32.const 114
      i32.const 105
      i32.const 98
      i32.const 117
      i32.const 116
      i32.const 101
      array.new_fixed 5 103
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 7
    (if
      (then
      local.get 0
      local.get 1
      local.get 9
      local.get 10
      local.get 5
      f64.convert_i32_s
      call 113
      drop
      )
      (else
      local.get 0
      local.get 1
      local.get 8
      local.get 5
      f64.convert_i32_s
      call 112
      drop
      )
    )
    local.get 0
  )
  (func $__getOwnPropertyDescriptor (type 17)
    (local $any anyref)
    (local $o (ref null 51))
    (local $e (ref null 49))
    (local $fl i32)
    (local $desc externref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 1
      local.get 0
      call 145
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      ref.null extern
      return
      )
    )
    local.get 2
    ref.cast (ref 51)
    local.tee 3
    ref.as_non_null
    local.get 1
    call 54
    local.tee 4
    ref.is_null
    (if
      (then
      ref.null extern
      return
      )
    )
    local.get 4
    ref.as_non_null
    struct.get 49 2
    local.set 5
    call 53
    local.set 6
    local.get 5
    i32.const 8
    i32.and
    (if
      (then
      local.get 6
      i32.const 3
      i32.const 0
      i32.const 103
      i32.const 101
      i32.const 116
      array.new_fixed 5 3
      struct.new 7
      extern.convert_any
      local.get 4
      ref.as_non_null
      struct.get 49 4
      extern.convert_any
      call 85
      local.get 6
      i32.const 3
      i32.const 0
      i32.const 115
      i32.const 101
      i32.const 116
      array.new_fixed 5 3
      struct.new 7
      extern.convert_any
      local.get 4
      ref.as_non_null
      struct.get 49 5
      extern.convert_any
      call 85
      )
      (else
      local.get 6
      i32.const 5
      i32.const 0
      i32.const 118
      i32.const 97
      i32.const 108
      i32.const 117
      i32.const 101
      array.new_fixed 5 5
      struct.new 7
      extern.convert_any
      local.get 4
      ref.as_non_null
      struct.get 49 1
      extern.convert_any
      call 85
      local.get 6
      i32.const 8
      i32.const 0
      i32.const 119
      i32.const 114
      i32.const 105
      i32.const 116
      i32.const 97
      i32.const 98
      i32.const 108
      i32.const 101
      array.new_fixed 5 8
      struct.new 7
      extern.convert_any
      local.get 4
      ref.as_non_null
      struct.get 49 2
      i32.const 1
      i32.and
      i32.const 0
      i32.ne
      call 61
      call 85
      )
    )
    local.get 6
    i32.const 10
    i32.const 0
    i32.const 101
    i32.const 110
    i32.const 117
    i32.const 109
    i32.const 101
    i32.const 114
    i32.const 97
    i32.const 98
    i32.const 108
    i32.const 101
    array.new_fixed 5 10
    struct.new 7
    extern.convert_any
    local.get 4
    ref.as_non_null
    struct.get 49 2
    i32.const 2
    i32.and
    i32.const 0
    i32.ne
    call 61
    call 85
    local.get 6
    i32.const 12
    i32.const 0
    i32.const 99
    i32.const 111
    i32.const 110
    i32.const 102
    i32.const 105
    i32.const 103
    i32.const 117
    i32.const 114
    i32.const 97
    i32.const 98
    i32.const 108
    i32.const 101
    array.new_fixed 5 12
    struct.new 7
    extern.convert_any
    local.get 4
    ref.as_non_null
    struct.get 49 2
    i32.const 4
    i32.and
    i32.const 0
    i32.ne
    call 61
    call 85
    local.get 6
  )
  (func $__getOwnPropertyNames (type 67)
    (local $any anyref)
    (local $o (ref null 51))
    (local $arr (ref null 50))
    (local $cap i32)
    (local $i i32)
    (local $e (ref null 49))
    (local $vec externref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 0
      call 151
      return
      )
    )
    call 88
    local.set 7
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    i32.eqz
    (if
      (then
      local.get 7
      return
      )
    )
    local.get 1
    ref.cast (ref 51)
    local.tee 2
    call 103
    local.tee 3
    array.len
    local.set 4
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 5
        local.get 4
        i32.ge_s
        br_if 1
        local.get 3
        local.get 5
        array.get 50
        local.tee 6
        ref.is_null
        br_if 1
        local.get 7
        local.get 6
        ref.as_non_null
        struct.get 49 0
        extern.convert_any
        call 89
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0
      )
    )
    local.get 7
  )
  (func $__getOwnPropertySymbols (type 67)
    call 88
  )
  (func $__object_getOwnPropertyDescriptors (type 67)
    (local $names externref)
    (local $cap f64)
    (local $i i32)
    (local $key externref)
    (local $out externref)
    call 53
    local.set 5
    local.get 0
    call 117
    local.tee 1
    call 105
    local.set 2
    i32.const 0
    local.set 3
    (block
      (loop
        local.get 3
        f64.convert_i32_s
        local.get 2
        f64.ge
        br_if 1
        local.get 1
        local.get 3
        f64.convert_i32_s
        call 106
        local.set 4
        local.get 5
        local.get 4
        local.get 0
        local.get 4
        call 116
        call 85
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0
      )
    )
    local.get 5
  )
  (func $__object_fromEntries (type 67)
    (local $len f64)
    (local $i i32)
    (local $pair externref)
    (local $key externref)
    (local $val externref)
    (local $out externref)
    call 53
    local.set 6
    local.get 0
    call 105
    local.set 1
    i32.const 0
    local.set 2
    (block
      (loop
        local.get 2
        f64.convert_i32_s
        local.get 1
        f64.ge
        br_if 1
        local.get 0
        local.get 2
        f64.convert_i32_s
        call 106
        local.tee 3
        f64.const 0
        call 106
        local.set 4
        local.get 3
        f64.const 1
        call 106
        local.set 5
        local.get 6
        local.get 4
        local.get 5
        call 85
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0
      )
    )
    local.get 6
  )
  (func $__object_isFrozen (type 56)
    (local $any anyref)
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if (result i32)
      (then
      local.get 1
      ref.cast (ref 51)
      struct.get 51 4
      i32.const 4
      i32.and
      i32.const 0
      i32.ne
      )
      (else
      i32.const 1
      )
    )
  )
  (func $__object_isSealed (type 56)
    (local $any anyref)
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if (result i32)
      (then
      local.get 1
      ref.cast (ref 51)
      struct.get 51 4
      i32.const 2
      i32.and
      i32.const 0
      i32.ne
      )
      (else
      i32.const 1
      )
    )
  )
  (func $__object_isExtensible (type 56)
    (local $any anyref)
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 0
      call 148
      call 69
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if (result i32)
      (then
      local.get 1
      ref.cast (ref 51)
      struct.get 51 4
      i32.const 1
      i32.and
      i32.eqz
      )
      (else
      i32.const 0
      )
    )
  )
  (func $__object_preventExtensions (type 67)
    (local $any anyref)
    (local $o (ref null 51))
    local.get 0
    any.convert_extern
    ref.test (ref 55)
    (if
      (then
      local.get 0
      local.get 0
      call 149
      return
      )
    )
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if
      (then
      local.get 1
      ref.cast (ref 51)
      local.tee 2
      local.get 2
      ref.as_non_null
      struct.get 51 4
      i32.const 1
      i32.or
      struct.set 51 4
      )
    )
    local.get 0
  )
  (func $__object_seal (type 67)
    (local $any anyref)
    (local $o (ref null 51))
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if
      (then
      local.get 1
      ref.cast (ref 51)
      local.tee 2
      local.get 2
      ref.as_non_null
      struct.get 51 4
      i32.const 3
      i32.or
      struct.set 51 4
      )
    )
    local.get 0
  )
  (func $__object_freeze (type 67)
    (local $any anyref)
    (local $o (ref null 51))
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 51)
    (if
      (then
      local.get 1
      ref.cast (ref 51)
      local.tee 2
      local.get 2
      ref.as_non_null
      struct.get 51 4
      i32.const 7
      i32.or
      struct.set 51 4
      )
    )
    local.get 0
  )
  (func $__extern_is_undefined (type 56)
    local.get 0
    ref.is_null
  )
  (func $__apply_closure (type 81)
    (local $n i32)
    local.get 2
    call 105
    i32.trunc_f64_s
    local.tee 3
    i32.const 0
    i32.eq
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 3
      i32.const 1
      i32.eq
      (if (result externref)
        (then
        local.get 1
        local.get 0
        local.get 2
        f64.const 0
        call 106
        call 174
        )
        (else
        local.get 3
        i32.const 2
        i32.eq
        (if (result externref)
          (then
          local.get 1
          local.get 0
          local.get 2
          f64.const 0
          call 106
          local.get 2
          f64.const 1
          call 106
          call 175
          )
          (else
          local.get 3
          i32.const 3
          i32.eq
          (if (result externref)
            (then
            local.get 1
            local.get 0
            local.get 2
            f64.const 0
            call 106
            local.get 2
            f64.const 1
            call 106
            local.get 2
            f64.const 2
            call 106
            call 176
            )
            (else
            local.get 3
            i32.const 4
            i32.eq
            (if (result externref)
              (then
              local.get 1
              local.get 0
              local.get 2
              f64.const 0
              call 106
              local.get 2
              f64.const 1
              call 106
              local.get 2
              f64.const 2
              call 106
              local.get 2
              f64.const 3
              call 106
              call 177
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
    )
  )
  (func $__extern_method_call (type 81)
    (local $any anyref)
    local.get 0
    any.convert_extern
    local.tee 3
    ref.is_null
    (if
      (then
      ref.null extern
      return
      )
    )
    local.get 3
    ref.test (ref 51)
    (if (result externref)
      (then
      local.get 0
      local.get 1
      call 56
      local.get 0
      local.get 2
      call 128
      )
      (else
      ref.null extern
      )
    )
  )
  (func $__proxy_call_get (type 82)
    (local $vec externref)
    call 88
    local.tee 5
    local.get 2
    call 89
    local.get 5
    local.get 3
    call 89
    local.get 5
    local.get 4
    call 89
    local.get 1
    local.get 0
    local.get 5
    call 128
  )
  (func $__proxy_call_set (type 83)
    (local $vec externref)
    call 88
    local.tee 6
    local.get 2
    call 89
    local.get 6
    local.get 3
    call 89
    local.get 6
    local.get 4
    call 89
    local.get 6
    local.get 5
    call 89
    local.get 1
    local.get 0
    local.get 6
    call 128
  )
  (func $__proxy_call_has (type 84)
    (local $vec externref)
    call 88
    local.tee 4
    local.get 2
    call 89
    local.get 4
    local.get 3
    call 89
    local.get 1
    local.get 0
    local.get 4
    call 128
  )
  (func $__proxy_call_delete (type 84)
    (local $vec externref)
    call 88
    local.tee 4
    local.get 2
    call 89
    local.get 4
    local.get 3
    call 89
    local.get 1
    local.get 0
    local.get 4
    call 128
  )
  (func $__proxy_call_gopd (type 84)
    (local $vec externref)
    call 88
    local.tee 4
    local.get 2
    call 89
    local.get 4
    local.get 3
    call 89
    local.get 1
    local.get 0
    local.get 4
    call 128
  )
  (func $__proxy_call_gpo (type 81)
    (local $vec externref)
    call 88
    local.tee 3
    local.get 2
    call 89
    local.get 1
    local.get 0
    local.get 3
    call 128
  )
  (func $__proxy_call_spo (type 84)
    (local $vec externref)
    call 88
    local.tee 4
    local.get 2
    call 89
    local.get 4
    local.get 3
    call 89
    local.get 1
    local.get 0
    local.get 4
    call 128
  )
  (func $__proxy_call_isext (type 81)
    (local $vec externref)
    call 88
    local.tee 3
    local.get 2
    call 89
    local.get 1
    local.get 0
    local.get 3
    call 128
  )
  (func $__proxy_call_prevext (type 81)
    (local $vec externref)
    call 88
    local.tee 3
    local.get 2
    call 89
    local.get 1
    local.get 0
    local.get 3
    call 128
  )
  (func $__proxy_call_ownkeys (type 81)
    (local $vec externref)
    call 88
    local.tee 3
    local.get 2
    call 89
    local.get 1
    local.get 0
    local.get 3
    call 128
  )
  (func $__proxy_call_define (type 82)
    (local $vec externref)
    call 88
    local.tee 5
    local.get 2
    call 89
    local.get 5
    local.get 3
    call 89
    local.get 5
    local.get 4
    call 89
    local.get 1
    local.get 0
    local.get 5
    call 128
  )
  (func $__proxy_get_dispatch (type 81)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 3
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 3
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 3
      struct.get 55 3
      ref.as_non_null
      struct.get 54 0
      )
    )
    local.tee 4
    ref.is_null
    (if (result externref)
      (then
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 56
      )
      (else
      local.get 3
      struct.get 55 2
      extern.convert_any
      local.get 4
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      local.get 2
      call 130
      )
    )
  )
  (func $__proxy_set_dispatch (type 81)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 3
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 3
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 3
      struct.get 55 3
      ref.as_non_null
      struct.get 54 1
      )
    )
    local.tee 4
    ref.is_null
    (if (result externref)
      (then
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      local.get 2
      call 85
      ref.null extern
      )
      (else
      local.get 3
      struct.get 55 2
      extern.convert_any
      local.get 4
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      local.get 2
      local.get 0
      call 131
      )
    )
  )
  (func $__proxy_has_dispatch (type 81)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 3
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 3
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 3
      struct.get 55 3
      ref.as_non_null
      struct.get 54 2
      )
    )
    local.tee 4
    ref.is_null
    (if (result externref)
      (then
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 93
      call 61
      )
      (else
      local.get 3
      struct.get 55 2
      extern.convert_any
      local.get 4
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 132
      )
    )
  )
  (func $__proxy_delete_dispatch (type 81)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 3
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 3
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 3
      struct.get 55 3
      ref.as_non_null
      struct.get 54 4
      )
    )
    local.tee 4
    ref.is_null
    (if (result externref)
      (then
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 87
      call 61
      )
      (else
      local.get 3
      struct.get 55 2
      extern.convert_any
      local.get 4
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 133
      )
    )
  )
  (func $__proxy_gopd_dispatch (type 81)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 3
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 3
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 3
      struct.get 55 3
      ref.as_non_null
      struct.get 54 5
      )
    )
    local.tee 4
    ref.is_null
    (if (result externref)
      (then
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 116
      )
      (else
      local.get 3
      struct.get 55 2
      extern.convert_any
      local.get 4
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 134
      )
    )
  )
  (func $__proxy_gpo_dispatch (type 17)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 2
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 2
      struct.get 55 3
      ref.as_non_null
      struct.get 54 6
      )
    )
    local.tee 3
    ref.is_null
    (if (result externref)
      (then
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 97
      )
      (else
      local.get 2
      struct.get 55 2
      extern.convert_any
      local.get 3
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 135
      )
    )
  )
  (func $__proxy_spo_dispatch (type 17)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 2
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 2
      struct.get 55 3
      ref.as_non_null
      struct.get 54 7
      )
    )
    local.tee 3
    ref.is_null
    (if (result externref)
      (then
      local.get 2
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 99
      drop
      local.get 0
      )
      (else
      local.get 2
      struct.get 55 2
      extern.convert_any
      local.get 3
      local.get 2
      struct.get 55 1
      extern.convert_any
      local.get 1
      call 136
      )
    )
  )
  (func $__proxy_isext_dispatch (type 17)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 2
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 2
      struct.get 55 3
      ref.as_non_null
      struct.get 54 8
      )
    )
    local.tee 3
    ref.is_null
    (if (result externref)
      (then
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 123
      call 61
      )
      (else
      local.get 2
      struct.get 55 2
      extern.convert_any
      local.get 3
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 137
      )
    )
  )
  (func $__proxy_prevext_dispatch (type 17)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 2
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 2
      struct.get 55 3
      ref.as_non_null
      struct.get 54 9
      )
    )
    local.tee 3
    ref.is_null
    (if (result externref)
      (then
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 124
      drop
      local.get 0
      )
      (else
      local.get 2
      struct.get 55 2
      extern.convert_any
      local.get 3
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 138
      )
    )
  )
  (func $__proxy_ownkeys_keys_dispatch (type 17)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 2
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 2
      struct.get 55 3
      ref.as_non_null
      struct.get 54 10
      )
    )
    local.tee 3
    ref.is_null
    (if (result externref)
      (then
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 104
      )
      (else
      local.get 2
      struct.get 55 2
      extern.convert_any
      local.get 3
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 139
      local.tee 3
      ref.is_null
      local.get 3
      call 70
      i32.or
      local.get 3
      call 71
      i32.or
      local.get 3
      call 73
      i32.or
      (if
        (then
        i32.const 43
        i32.const 0
        i32.const 80
        i32.const 114
        i32.const 111
        i32.const 120
        i32.const 121
        i32.const 32
        i32.const 111
        i32.const 119
        i32.const 110
        i32.const 75
        i32.const 101
        i32.const 121
        i32.const 115
        i32.const 32
        i32.const 116
        i32.const 114
        i32.const 97
        i32.const 112
        i32.const 32
        i32.const 114
        i32.const 101
        i32.const 115
        i32.const 117
        i32.const 108
        i32.const 116
        i32.const 32
        i32.const 109
        i32.const 117
        i32.const 115
        i32.const 116
        i32.const 32
        i32.const 98
        i32.const 101
        i32.const 32
        i32.const 97
        i32.const 110
        i32.const 32
        i32.const 111
        i32.const 98
        i32.const 106
        i32.const 101
        i32.const 99
        i32.const 116
        array.new_fixed 5 43
        struct.new 7
        extern.convert_any
        call 64
        throw 0
        )
      )
      local.get 3
      )
    )
  )
  (func $__proxy_ownkeys_names_dispatch (type 17)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 2
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 2
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 2
      struct.get 55 3
      ref.as_non_null
      struct.get 54 10
      )
    )
    local.tee 3
    ref.is_null
    (if (result externref)
      (then
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 117
      )
      (else
      local.get 2
      struct.get 55 2
      extern.convert_any
      local.get 3
      local.get 2
      struct.get 55 1
      extern.convert_any
      call 139
      local.tee 3
      ref.is_null
      local.get 3
      call 70
      i32.or
      local.get 3
      call 71
      i32.or
      local.get 3
      call 73
      i32.or
      (if
        (then
        i32.const 43
        i32.const 0
        i32.const 80
        i32.const 114
        i32.const 111
        i32.const 120
        i32.const 121
        i32.const 32
        i32.const 111
        i32.const 119
        i32.const 110
        i32.const 75
        i32.const 101
        i32.const 121
        i32.const 115
        i32.const 32
        i32.const 116
        i32.const 114
        i32.const 97
        i32.const 112
        i32.const 32
        i32.const 114
        i32.const 101
        i32.const 115
        i32.const 117
        i32.const 108
        i32.const 116
        i32.const 32
        i32.const 109
        i32.const 117
        i32.const 115
        i32.const 116
        i32.const 32
        i32.const 98
        i32.const 101
        i32.const 32
        i32.const 97
        i32.const 110
        i32.const 32
        i32.const 111
        i32.const 98
        i32.const 106
        i32.const 101
        i32.const 99
        i32.const 116
        array.new_fixed 5 43
        struct.new 7
        extern.convert_any
        call 64
        throw 0
        )
      )
      local.get 3
      )
    )
  )
  (func $__proxy_define_dispatch (type 81)
    (local $p (ref null 55))
    (local $trap externref)
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 3
    struct.get 55 4
    (if
      (then
      i32.const 57
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 102
      i32.const 111
      i32.const 114
      i32.const 109
      i32.const 32
      i32.const 111
      i32.const 112
      i32.const 101
      i32.const 114
      i32.const 97
      i32.const 116
      i32.const 105
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 111
      i32.const 110
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 116
      i32.const 104
      i32.const 97
      i32.const 116
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 98
      i32.const 101
      i32.const 101
      i32.const 110
      i32.const 32
      i32.const 114
      i32.const 101
      i32.const 118
      i32.const 111
      i32.const 107
      i32.const 101
      i32.const 100
      array.new_fixed 5 57
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 3
    struct.get 55 3
    ref.is_null
    (if (result externref)
      (then
      ref.null extern
      )
      (else
      local.get 3
      struct.get 55 3
      ref.as_non_null
      struct.get 54 11
      )
    )
    local.tee 4
    ref.is_null
    (if (result externref)
      (then
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      local.get 2
      call 115
      )
      (else
      local.get 3
      struct.get 55 2
      extern.convert_any
      local.get 4
      local.get 3
      struct.get 55 1
      extern.convert_any
      local.get 1
      local.get 2
      call 140
      )
    )
  )
  (func $__proxy_create (type 17)
    (local $getT externref)
    (local $setT externref)
    (local $hasT externref)
    (local $applyT externref)
    (local $delT externref)
    (local $gopdT externref)
    (local $gpoT externref)
    (local $spoT externref)
    (local $isextT externref)
    (local $prevextT externref)
    (local $ownKeysT externref)
    (local $defineT externref)
    local.get 0
    any.convert_extern
    ref.is_null
    (if
      (then
      i32.const 58
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 99
      i32.const 114
      i32.const 101
      i32.const 97
      i32.const 116
      i32.const 101
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 119
      i32.const 105
      i32.const 116
      i32.const 104
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 110
      i32.const 111
      i32.const 110
      i32.const 45
      i32.const 111
      i32.const 98
      i32.const 106
      i32.const 101
      i32.const 99
      i32.const 116
      i32.const 32
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 116
      i32.const 97
      i32.const 114
      i32.const 103
      i32.const 101
      i32.const 116
      i32.const 32
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 110
      i32.const 100
      i32.const 108
      i32.const 101
      i32.const 114
      array.new_fixed 5 58
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 1
    any.convert_extern
    ref.is_null
    (if
      (then
      i32.const 58
      i32.const 0
      i32.const 67
      i32.const 97
      i32.const 110
      i32.const 110
      i32.const 111
      i32.const 116
      i32.const 32
      i32.const 99
      i32.const 114
      i32.const 101
      i32.const 97
      i32.const 116
      i32.const 101
      i32.const 32
      i32.const 112
      i32.const 114
      i32.const 111
      i32.const 120
      i32.const 121
      i32.const 32
      i32.const 119
      i32.const 105
      i32.const 116
      i32.const 104
      i32.const 32
      i32.const 97
      i32.const 32
      i32.const 110
      i32.const 111
      i32.const 110
      i32.const 45
      i32.const 111
      i32.const 98
      i32.const 106
      i32.const 101
      i32.const 99
      i32.const 116
      i32.const 32
      i32.const 97
      i32.const 115
      i32.const 32
      i32.const 116
      i32.const 97
      i32.const 114
      i32.const 103
      i32.const 101
      i32.const 116
      i32.const 32
      i32.const 111
      i32.const 114
      i32.const 32
      i32.const 104
      i32.const 97
      i32.const 110
      i32.const 100
      i32.const 108
      i32.const 101
      i32.const 114
      array.new_fixed 5 58
      struct.new 7
      extern.convert_any
      call 64
      throw 0
      )
    )
    local.get 1
    i32.const 3
    i32.const 0
    i32.const 103
    i32.const 101
    i32.const 116
    array.new_fixed 5 3
    struct.new 7
    extern.convert_any
    call 56
    local.set 2
    local.get 1
    i32.const 3
    i32.const 0
    i32.const 115
    i32.const 101
    i32.const 116
    array.new_fixed 5 3
    struct.new 7
    extern.convert_any
    call 56
    local.set 3
    local.get 1
    i32.const 3
    i32.const 0
    i32.const 104
    i32.const 97
    i32.const 115
    array.new_fixed 5 3
    struct.new 7
    extern.convert_any
    call 56
    local.set 4
    local.get 1
    i32.const 5
    i32.const 0
    i32.const 97
    i32.const 112
    i32.const 112
    i32.const 108
    i32.const 121
    array.new_fixed 5 5
    struct.new 7
    extern.convert_any
    call 56
    local.set 5
    local.get 1
    i32.const 14
    i32.const 0
    i32.const 100
    i32.const 101
    i32.const 108
    i32.const 101
    i32.const 116
    i32.const 101
    i32.const 80
    i32.const 114
    i32.const 111
    i32.const 112
    i32.const 101
    i32.const 114
    i32.const 116
    i32.const 121
    array.new_fixed 5 14
    struct.new 7
    extern.convert_any
    call 56
    local.set 6
    local.get 1
    i32.const 24
    i32.const 0
    i32.const 103
    i32.const 101
    i32.const 116
    i32.const 79
    i32.const 119
    i32.const 110
    i32.const 80
    i32.const 114
    i32.const 111
    i32.const 112
    i32.const 101
    i32.const 114
    i32.const 116
    i32.const 121
    i32.const 68
    i32.const 101
    i32.const 115
    i32.const 99
    i32.const 114
    i32.const 105
    i32.const 112
    i32.const 116
    i32.const 111
    i32.const 114
    array.new_fixed 5 24
    struct.new 7
    extern.convert_any
    call 56
    local.set 7
    local.get 1
    i32.const 14
    i32.const 0
    i32.const 103
    i32.const 101
    i32.const 116
    i32.const 80
    i32.const 114
    i32.const 111
    i32.const 116
    i32.const 111
    i32.const 116
    i32.const 121
    i32.const 112
    i32.const 101
    i32.const 79
    i32.const 102
    array.new_fixed 5 14
    struct.new 7
    extern.convert_any
    call 56
    local.set 8
    local.get 1
    i32.const 14
    i32.const 0
    i32.const 115
    i32.const 101
    i32.const 116
    i32.const 80
    i32.const 114
    i32.const 111
    i32.const 116
    i32.const 111
    i32.const 116
    i32.const 121
    i32.const 112
    i32.const 101
    i32.const 79
    i32.const 102
    array.new_fixed 5 14
    struct.new 7
    extern.convert_any
    call 56
    local.set 9
    local.get 1
    i32.const 12
    i32.const 0
    i32.const 105
    i32.const 115
    i32.const 69
    i32.const 120
    i32.const 116
    i32.const 101
    i32.const 110
    i32.const 115
    i32.const 105
    i32.const 98
    i32.const 108
    i32.const 101
    array.new_fixed 5 12
    struct.new 7
    extern.convert_any
    call 56
    local.set 10
    local.get 1
    i32.const 17
    i32.const 0
    i32.const 112
    i32.const 114
    i32.const 101
    i32.const 118
    i32.const 101
    i32.const 110
    i32.const 116
    i32.const 69
    i32.const 120
    i32.const 116
    i32.const 101
    i32.const 110
    i32.const 115
    i32.const 105
    i32.const 111
    i32.const 110
    i32.const 115
    array.new_fixed 5 17
    struct.new 7
    extern.convert_any
    call 56
    local.set 11
    local.get 1
    i32.const 7
    i32.const 0
    i32.const 111
    i32.const 119
    i32.const 110
    i32.const 75
    i32.const 101
    i32.const 121
    i32.const 115
    array.new_fixed 5 7
    struct.new 7
    extern.convert_any
    call 56
    local.set 12
    local.get 1
    i32.const 14
    i32.const 0
    i32.const 100
    i32.const 101
    i32.const 102
    i32.const 105
    i32.const 110
    i32.const 101
    i32.const 80
    i32.const 114
    i32.const 111
    i32.const 112
    i32.const 101
    i32.const 114
    i32.const 116
    i32.const 121
    array.new_fixed 5 14
    struct.new 7
    extern.convert_any
    call 56
    local.set 13
    i32.const 1
    local.get 0
    any.convert_extern
    local.get 1
    any.convert_extern
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    local.get 10
    local.get 11
    local.get 12
    local.get 13
    struct.new 54
    i32.const 0
    struct.new 55
    extern.convert_any
  )
  (func $__proxy_revoke (type 47)
    (local $p (ref null 55))
    local.get 0
    any.convert_extern
    ref.cast (ref 55)
    local.tee 1
    i32.const 1
    struct.set 55 4
    local.get 1
    ref.null extern
    any.convert_extern
    struct.set 55 1
    local.get 1
    ref.null extern
    any.convert_extern
    struct.set 55 2
    local.get 1
    ref.null 54
    struct.set 55 3
  )
  (func $__wasi_fd_write_all (param i32 i32 i32) (result i32)
    (local $base i32)
    (local $remaining i32)
    (local $total i32)
    (local $chunk i32)
    (local $errno i32)
    (local $nw i32)
    local.get 1
    local.set 3
    local.get 2
    local.set 4
    i32.const 0
    local.set 5
    (block
      (loop
        local.get 4
        i32.const 0
        i32.le_s
        br_if 1
        local.get 4
        i32.const 67108864
        local.get 4
        i32.const 67108864
        i32.lt_s
        select
        local.set 6
        i32.const 0
        local.get 3
        i32.store offset=0 align=4
        i32.const 4
        local.get 6
        i32.store offset=0 align=4
        local.get 0
        i32.const 0
        i32.const 1
        i32.const 8
        call 0
        local.tee 7
        br_if 1
        i32.const 8
        i32.load offset=0 align=4
        local.tee 8
        i32.const 0
        i32.le_s
        br_if 1
        local.get 5
        local.get 8
        i32.add
        local.set 5
        local.get 3
        local.get 8
        i32.add
        local.set 3
        local.get 4
        local.get 8
        i32.sub
        local.set 4
        br 0
      )
    )
    local.get 5
  )
  (func $__vec_get (param externref i32) (result externref)
    (local $__any anyref)
    call 160
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
        call 59
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
          array.get 18
          extern.convert_any
          return
          )
          (else
          local.get 2
          ref.test (ref 38)
          (if
            (then
            local.get 2
            ref.cast (ref 38)
            struct.get 38 1
            local.get 1
            array.get_u 10
            f64.convert_i32_u
            call 59
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
  (func $__fn_tramp_denoRead_cached (type 86)
    local.get 1
    call 47
  )
  (func $__fn_tramp_denoWrite_cached (type 88)
    local.get 1
    call 48
  )
  (func $__fn_tramp_denoNoLog_cached (type 88)
    local.get 1
    call 49
  )
  (func $__module_init (type 48)
    global.get 14
    (if
      (then
      return
      )
    )
    i32.const 1
    global.set 14
    f64.const 65536
    global.set 2
    f64.const 44
    global.set 3
    f64.const 91
    global.set 4
    f64.const 93
    global.set 5
    f64.const 34
    global.set 6
    call 50
  )
  (func $__sget_length (type 56)
    (local $__any anyref)
    call 160
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
  (func $__sget_data (type 67)
    (local $__any anyref)
    call 160
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
  (func $__sget_byteOffset (type 56)
    (local $__any anyref)
    call 160
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
    call 160
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
  (func $__vec_len (type 56)
    (local $__any anyref)
    call 160
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
        ref.test (ref 34)
        (if
          (then
          local.get 1
          ref.cast (ref 34)
          struct.get 34 0
          return
          )
          (else
          local.get 1
          ref.test (ref 38)
          (if
            (then
            local.get 1
            ref.cast (ref 38)
            struct.get 38 0
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
  (func $__is_vec (type 56)
    (local $__any anyref)
    call 160
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
        ref.test (ref 34)
        (if
          (then
          i32.const 1
          return
          )
          (else
          local.get 1
          ref.test (ref 38)
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
  (func $__vec_mut_supported (type 56)
    (local $__any anyref)
    call 160
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
  (func $__vec_push (type 69)
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
    call 160
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
        call 60
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
  (func $__vec_pop (type 67)
    (local $__any anyref)
    (local $__vpop_vec_4 (ref null 4))
    (local $__vpop_len_4 i32)
    (local $__vpop_vec_2 (ref null 2))
    (local $__vpop_len_2 i32)
    call 160
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
        call 59
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
  (func $__call_fn_1 (type 17)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    call 160
    local.get 0
    any.convert_extern
    local.tee 2
    ref.test (ref 85)
    (if
      (then
      local.get 2
      ref.cast (ref 85)
      struct.get 85 0
      local.set 4
      )
    )
    local.get 2
    ref.test (ref 87)
    (if
      (then
      local.get 2
      ref.cast (ref 87)
      struct.get 87 0
      local.set 4
      )
    )
    local.get 4
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      ref.null 2
      global.set 13
      local.get 2
      ref.cast (ref 87)
      local.get 1
      local.get 4
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 4
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        ref.null 2
        global.set 13
        local.get 2
        ref.cast (ref 85)
        local.get 1
        local.get 4
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
  )
  (func $__call_fn_2 (type 81)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    call 160
    local.get 0
    any.convert_extern
    local.tee 3
    ref.test (ref 85)
    (if
      (then
      local.get 3
      ref.cast (ref 85)
      struct.get 85 0
      local.set 5
      )
    )
    local.get 3
    ref.test (ref 87)
    (if
      (then
      local.get 3
      ref.cast (ref 87)
      struct.get 87 0
      local.set 5
      )
    )
    local.get 5
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      i32.const 1
      local.get 2
      array.new_fixed 1 1
      struct.new 2
      global.set 13
      local.get 3
      ref.cast (ref 87)
      local.get 1
      local.get 5
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 5
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        i32.const 1
        local.get 2
        array.new_fixed 1 1
        struct.new 2
        global.set 13
        local.get 3
        ref.cast (ref 85)
        local.get 1
        local.get 5
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
  )
  (func $__call_fn_3 (type 84)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    call 160
    local.get 0
    any.convert_extern
    local.tee 4
    ref.test (ref 85)
    (if
      (then
      local.get 4
      ref.cast (ref 85)
      struct.get 85 0
      local.set 6
      )
    )
    local.get 4
    ref.test (ref 87)
    (if
      (then
      local.get 4
      ref.cast (ref 87)
      struct.get 87 0
      local.set 6
      )
    )
    local.get 6
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      i32.const 2
      local.get 2
      local.get 3
      array.new_fixed 1 2
      struct.new 2
      global.set 13
      local.get 4
      ref.cast (ref 87)
      local.get 1
      local.get 6
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 6
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        i32.const 2
        local.get 2
        local.get 3
        array.new_fixed 1 2
        struct.new 2
        global.set 13
        local.get 4
        ref.cast (ref 85)
        local.get 1
        local.get 6
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
  )
  (func $__call_fn_4 (type 82)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    call 160
    local.get 0
    any.convert_extern
    local.tee 5
    ref.test (ref 85)
    (if
      (then
      local.get 5
      ref.cast (ref 85)
      struct.get 85 0
      local.set 7
      )
    )
    local.get 5
    ref.test (ref 87)
    (if
      (then
      local.get 5
      ref.cast (ref 87)
      struct.get 87 0
      local.set 7
      )
    )
    local.get 7
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      i32.const 3
      local.get 2
      local.get 3
      local.get 4
      array.new_fixed 1 3
      struct.new 2
      global.set 13
      local.get 5
      ref.cast (ref 87)
      local.get 1
      local.get 7
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 7
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        i32.const 3
        local.get 2
        local.get 3
        local.get 4
        array.new_fixed 1 3
        struct.new 2
        global.set 13
        local.get 5
        ref.cast (ref 85)
        local.get 1
        local.get 7
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
  )
  (func $__call_fn_method_1 (type 81)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    (local $__prev_this externref)
    (local $__result externref)
    call 160
    local.get 1
    any.convert_extern
    local.set 3
    global.get 7
    local.set 6
    local.get 0
    global.set 7
    local.get 3
    ref.test (ref 85)
    (if
      (then
      local.get 3
      ref.cast (ref 85)
      struct.get 85 0
      local.set 5
      )
    )
    local.get 3
    ref.test (ref 87)
    (if
      (then
      local.get 3
      ref.cast (ref 87)
      struct.get 87 0
      local.set 5
      )
    )
    local.get 5
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      ref.null 2
      global.set 13
      local.get 3
      ref.cast (ref 87)
      local.get 2
      local.get 5
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 5
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        ref.null 2
        global.set 13
        local.get 3
        ref.cast (ref 85)
        local.get 2
        local.get 5
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
    local.set 7
    local.get 6
    global.set 7
    local.get 7
  )
  (func $__call_fn_method_2 (type 84)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    (local $__prev_this externref)
    (local $__result externref)
    call 160
    local.get 1
    any.convert_extern
    local.set 4
    global.get 7
    local.set 7
    local.get 0
    global.set 7
    local.get 4
    ref.test (ref 85)
    (if
      (then
      local.get 4
      ref.cast (ref 85)
      struct.get 85 0
      local.set 6
      )
    )
    local.get 4
    ref.test (ref 87)
    (if
      (then
      local.get 4
      ref.cast (ref 87)
      struct.get 87 0
      local.set 6
      )
    )
    local.get 6
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      i32.const 1
      local.get 3
      array.new_fixed 1 1
      struct.new 2
      global.set 13
      local.get 4
      ref.cast (ref 87)
      local.get 2
      local.get 6
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 6
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        i32.const 1
        local.get 3
        array.new_fixed 1 1
        struct.new 2
        global.set 13
        local.get 4
        ref.cast (ref 85)
        local.get 2
        local.get 6
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
    local.set 8
    local.get 7
    global.set 7
    local.get 8
  )
  (func $__call_fn_method_3 (type 82)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    (local $__prev_this externref)
    (local $__result externref)
    call 160
    local.get 1
    any.convert_extern
    local.set 5
    global.get 7
    local.set 8
    local.get 0
    global.set 7
    local.get 5
    ref.test (ref 85)
    (if
      (then
      local.get 5
      ref.cast (ref 85)
      struct.get 85 0
      local.set 7
      )
    )
    local.get 5
    ref.test (ref 87)
    (if
      (then
      local.get 5
      ref.cast (ref 87)
      struct.get 87 0
      local.set 7
      )
    )
    local.get 7
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      i32.const 2
      local.get 3
      local.get 4
      array.new_fixed 1 2
      struct.new 2
      global.set 13
      local.get 5
      ref.cast (ref 87)
      local.get 2
      local.get 7
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 7
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        i32.const 2
        local.get 3
        local.get 4
        array.new_fixed 1 2
        struct.new 2
        global.set 13
        local.get 5
        ref.cast (ref 85)
        local.get 2
        local.get 7
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
    local.set 9
    local.get 8
    global.set 7
    local.get 9
  )
  (func $__call_fn_method_4 (type 83)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    (local $__prev_this externref)
    (local $__result externref)
    call 160
    local.get 1
    any.convert_extern
    local.set 6
    global.get 7
    local.set 9
    local.get 0
    global.set 7
    local.get 6
    ref.test (ref 85)
    (if
      (then
      local.get 6
      ref.cast (ref 85)
      struct.get 85 0
      local.set 8
      )
    )
    local.get 6
    ref.test (ref 87)
    (if
      (then
      local.get 6
      ref.cast (ref 87)
      struct.get 87 0
      local.set 8
      )
    )
    local.get 8
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      i32.const 3
      local.get 3
      local.get 4
      local.get 5
      array.new_fixed 1 3
      struct.new 2
      global.set 13
      local.get 6
      ref.cast (ref 87)
      local.get 2
      local.get 8
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 8
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        i32.const 3
        local.get 3
        local.get 4
        local.get 5
        array.new_fixed 1 3
        struct.new 2
        global.set 13
        local.get 6
        ref.cast (ref 85)
        local.get 2
        local.get 8
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
    local.set 10
    local.get 9
    global.set 7
    local.get 10
  )
  (func $__call_fn_method_5 (param externref externref externref externref externref externref externref) (result externref)
    (local $__any anyref)
    (local $__struct (ref null 85))
    (local $__funcref funcref)
    (local $__prev_this externref)
    (local $__result externref)
    call 160
    local.get 1
    any.convert_extern
    local.set 7
    global.get 7
    local.set 10
    local.get 0
    global.set 7
    local.get 7
    ref.test (ref 85)
    (if
      (then
      local.get 7
      ref.cast (ref 85)
      struct.get 85 0
      local.set 9
      )
    )
    local.get 7
    ref.test (ref 87)
    (if
      (then
      local.get 7
      ref.cast (ref 87)
      struct.get 87 0
      local.set 9
      )
    )
    local.get 9
    ref.test (ref 88)
    (if (result externref)
      (then
      i32.const 1
      global.set 12
      i32.const 4
      local.get 3
      local.get 4
      local.get 5
      local.get 6
      array.new_fixed 1 4
      struct.new 2
      global.set 13
      local.get 7
      ref.cast (ref 87)
      local.get 2
      local.get 9
      ref.cast (ref 88)
      call_ref 88
      ref.null extern
      )
      (else
      local.get 9
      ref.test (ref 86)
      (if (result externref)
        (then
        i32.const 1
        global.set 12
        i32.const 4
        local.get 3
        local.get 4
        local.get 5
        local.get 6
        array.new_fixed 1 4
        struct.new 2
        global.set 13
        local.get 7
        ref.cast (ref 85)
        local.get 2
        local.get 9
        ref.cast (ref 86)
        call_ref 86
        call 59
        )
        (else
        ref.null extern
        )
      )
      )
    )
    local.set 11
    local.get 10
    global.set 7
    local.get 11
  )
  (func $__is_closure (type 56)
    (local $__any anyref)
    call 160
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 85)
    (if
      (then
      i32.const 1
      return
      )
    )
    i32.const 0
  )
  (func $__is_data_struct (type 56)
    (local $__any anyref)
    call 160
    local.get 0
    any.convert_extern
    local.tee 1
    ref.test (ref 11)
    (if
      (then
      i32.const 1
      return
      )
    )
    local.get 1
    ref.test (ref 13)
    (if
      (then
      i32.const 1
      return
      )
    )
    local.get 1
    ref.test (ref 15)
    (if
      (then
      i32.const 1
      return
      )
    )
    local.get 1
    ref.test (ref 16)
    (if
      (then
      i32.const 1
      return
      )
    )
    i32.const 0
  )
  (func $_start (type 48)
    call 50
  )
  (export "memory" (memory 0))
  (export "main" (func 50))
  (export "__vec_get" (func 156))
  (export "__sget_length" (func 161))
  (export "__sget_data" (func 162))
  (export "__sget_byteOffset" (func 163))
  (export "__sset_length" (func 164))
  (export "__vec_len" (func 165))
  (export "__is_vec" (func 166))
  (export "__vec_mut_supported" (func 167))
  (export "__vec_push" (func 168))
  (export "__vec_pop" (func 169))
  (export "__call_fn_1" (func 170))
  (export "__call_fn_2" (func 171))
  (export "__call_fn_3" (func 172))
  (export "__call_fn_4" (func 173))
  (export "__call_fn_method_1" (func 174))
  (export "__call_fn_method_2" (func 175))
  (export "__call_fn_method_3" (func 176))
  (export "__call_fn_method_4" (func 177))
  (export "__call_fn_method_5" (func 178))
  (export "__is_closure" (func 179))
  (export "__is_data_struct" (func 180))
  (export "_start" (func 181))
  (export "__exn_tag" (tag 0))
)