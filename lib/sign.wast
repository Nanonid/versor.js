(module
  (table 0 anyfunc)
  (memory $0 1)
  (export "memory" (memory $0))
  (export "_Z4signmm" (func $_Z4signmm))
  (export "_Z5gradem" (func $_Z5gradem))
  (func $_Z4signmm (param $0 i32) (param $1 i32) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (set_local $5
      (i32.const 1)
    )
    (block $label$0
      (br_if $label$0
        (i32.eq
          (tee_local $3
            (i32.shr_u
              (get_local $0)
              (i32.const 1)
            )
          )
          (i32.const 1)
        )
      )
      (set_local $4
        (i32.const 0)
      )
      (loop $label$1
        (set_local $0
          (i32.const 0)
        )
        (block $label$2
          (br_if $label$2
            (i32.eqz
              (tee_local $5
                (i32.and
                  (get_local $3)
                  (get_local $1)
                )
              )
            )
          )
          (set_local $0
            (i32.const 0)
          )
          (loop $label$3
            (set_local $0
              (i32.add
                (i32.and
                  (get_local $5)
                  (i32.const 1)
                )
                (get_local $0)
              )
            )
            (set_local $5
              (tee_local $2
                (i32.shr_u
                  (get_local $5)
                  (i32.const 1)
                )
              )
            )
            (br_if $label$3
              (get_local $2)
            )
          )
        )
        (set_local $4
          (i32.add
            (get_local $0)
            (get_local $4)
          )
        )
        (br_if $label$1
          (i32.ne
            (tee_local $3
              (i32.shr_u
                (get_local $3)
                (i32.const 1)
              )
            )
            (i32.const 1)
          )
        )
      )
      (set_local $5
        (i32.add
          (i32.and
            (i32.xor
              (i32.shl
                (get_local $4)
                (i32.const 1)
              )
              (i32.const -1)
            )
            (i32.const 2)
          )
          (i32.const -1)
        )
      )
    )
    (get_local $5)
  )
  (func $_Z5gradem (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (block $label$0
      (br_if $label$0
        (i32.eqz
          (get_local $0)
        )
      )
      (set_local $2
        (i32.const 0)
      )
      (loop $label$1
        (set_local $2
          (i32.add
            (get_local $2)
            (i32.and
              (get_local $0)
              (i32.const 1)
            )
          )
        )
        (set_local $0
          (tee_local $1
            (i32.shr_u
              (get_local $0)
              (i32.const 1)
            )
          )
        )
        (br_if $label$1
          (get_local $1)
        )
      )
      (return
        (get_local $2)
      )
    )
    (i32.const 0)
  )
)
