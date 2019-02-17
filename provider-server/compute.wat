(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32)))
  (type (;5;) (func (param i32 f64 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 f32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i32) (result i32)))
  (type (;12;) (func (param i32) (result i64)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 f64 i32 i32)))
  (type (;16;) (func (param i32 i32 f32 i32 i32)))
  (import "./trustless_health" "__wbindgen_throw" (func $__wbindgen_throw (type 0)))
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc::h5891d2855e0d9ebe (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              local.get 1
                                                                              i32.const 244
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              local.get 0
                                                                              i32.load
                                                                              local.tee 2
                                                                              i32.const 16
                                                                              local.get 1
                                                                              i32.const 11
                                                                              i32.add
                                                                              i32.const -8
                                                                              i32.and
                                                                              local.get 1
                                                                              i32.const 11
                                                                              i32.lt_u
                                                                              select
                                                                              local.tee 3
                                                                              i32.const 3
                                                                              i32.shr_u
                                                                              local.tee 4
                                                                              i32.const 31
                                                                              i32.and
                                                                              local.tee 5
                                                                              i32.shr_u
                                                                              local.tee 1
                                                                              i32.const 3
                                                                              i32.and
                                                                              i32.eqz
                                                                              br_if 1 (;@36;)
                                                                              local.get 0
                                                                              local.get 1
                                                                              i32.const -1
                                                                              i32.xor
                                                                              i32.const 1
                                                                              i32.and
                                                                              local.get 4
                                                                              i32.add
                                                                              local.tee 3
                                                                              i32.const 3
                                                                              i32.shl
                                                                              i32.add
                                                                              local.tee 5
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 1
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.set 6
                                                                              local.get 1
                                                                              i32.load offset=8
                                                                              local.tee 4
                                                                              local.get 5
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.tee 5
                                                                              i32.eq
                                                                              br_if 2 (;@35;)
                                                                              local.get 4
                                                                              local.get 5
                                                                              i32.store offset=12
                                                                              local.get 5
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.get 4
                                                                              i32.store
                                                                              br 3 (;@34;)
                                                                            end
                                                                            i32.const 0
                                                                            local.set 2
                                                                            local.get 1
                                                                            i32.const -64
                                                                            i32.ge_u
                                                                            br_if 28 (;@8;)
                                                                            local.get 1
                                                                            i32.const 11
                                                                            i32.add
                                                                            local.tee 1
                                                                            i32.const -8
                                                                            i32.and
                                                                            local.set 3
                                                                            local.get 0
                                                                            i32.load offset=4
                                                                            local.tee 7
                                                                            i32.eqz
                                                                            br_if 9 (;@27;)
                                                                            i32.const 0
                                                                            local.set 8
                                                                            block  ;; label = @37
                                                                              local.get 1
                                                                              i32.const 8
                                                                              i32.shr_u
                                                                              local.tee 1
                                                                              i32.eqz
                                                                              br_if 0 (;@37;)
                                                                              i32.const 31
                                                                              local.set 8
                                                                              local.get 3
                                                                              i32.const 16777215
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              local.get 3
                                                                              i32.const 38
                                                                              local.get 1
                                                                              i32.clz
                                                                              local.tee 1
                                                                              i32.sub
                                                                              i32.const 31
                                                                              i32.and
                                                                              i32.shr_u
                                                                              i32.const 1
                                                                              i32.and
                                                                              i32.const 31
                                                                              local.get 1
                                                                              i32.sub
                                                                              i32.const 1
                                                                              i32.shl
                                                                              i32.or
                                                                              local.set 8
                                                                            end
                                                                            i32.const 0
                                                                            local.get 3
                                                                            i32.sub
                                                                            local.set 4
                                                                            local.get 0
                                                                            local.get 8
                                                                            i32.const 2
                                                                            i32.shl
                                                                            i32.add
                                                                            i32.const 272
                                                                            i32.add
                                                                            i32.load
                                                                            local.tee 1
                                                                            i32.eqz
                                                                            br_if 6 (;@30;)
                                                                            i32.const 0
                                                                            local.set 5
                                                                            local.get 3
                                                                            i32.const 0
                                                                            i32.const 25
                                                                            local.get 8
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.sub
                                                                            i32.const 31
                                                                            i32.and
                                                                            local.get 8
                                                                            i32.const 31
                                                                            i32.eq
                                                                            select
                                                                            i32.shl
                                                                            local.set 2
                                                                            i32.const 0
                                                                            local.set 6
                                                                            loop  ;; label = @37
                                                                              block  ;; label = @38
                                                                                local.get 1
                                                                                i32.load offset=4
                                                                                i32.const -8
                                                                                i32.and
                                                                                local.tee 9
                                                                                local.get 3
                                                                                i32.lt_u
                                                                                br_if 0 (;@38;)
                                                                                local.get 9
                                                                                local.get 3
                                                                                i32.sub
                                                                                local.tee 9
                                                                                local.get 4
                                                                                i32.ge_u
                                                                                br_if 0 (;@38;)
                                                                                local.get 9
                                                                                local.set 4
                                                                                local.get 1
                                                                                local.set 6
                                                                                local.get 9
                                                                                i32.eqz
                                                                                br_if 6 (;@32;)
                                                                              end
                                                                              local.get 1
                                                                              i32.const 20
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 9
                                                                              local.get 5
                                                                              local.get 9
                                                                              local.get 1
                                                                              local.get 2
                                                                              i32.const 29
                                                                              i32.shr_u
                                                                              i32.const 4
                                                                              i32.and
                                                                              i32.add
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 1
                                                                              i32.ne
                                                                              select
                                                                              local.get 5
                                                                              local.get 9
                                                                              select
                                                                              local.set 5
                                                                              local.get 2
                                                                              i32.const 1
                                                                              i32.shl
                                                                              local.set 2
                                                                              local.get 1
                                                                              br_if 0 (;@37;)
                                                                            end
                                                                            local.get 5
                                                                            i32.eqz
                                                                            br_if 5 (;@31;)
                                                                            local.get 5
                                                                            local.set 1
                                                                            br 7 (;@29;)
                                                                          end
                                                                          local.get 3
                                                                          local.get 0
                                                                          i32.load offset=400
                                                                          i32.le_u
                                                                          br_if 8 (;@27;)
                                                                          local.get 1
                                                                          i32.eqz
                                                                          br_if 2 (;@33;)
                                                                          local.get 0
                                                                          local.get 1
                                                                          local.get 5
                                                                          i32.shl
                                                                          i32.const 2
                                                                          local.get 5
                                                                          i32.shl
                                                                          local.tee 1
                                                                          i32.const 0
                                                                          local.get 1
                                                                          i32.sub
                                                                          i32.or
                                                                          i32.and
                                                                          local.tee 1
                                                                          i32.const 0
                                                                          local.get 1
                                                                          i32.sub
                                                                          i32.and
                                                                          i32.ctz
                                                                          local.tee 4
                                                                          i32.const 3
                                                                          i32.shl
                                                                          i32.add
                                                                          local.tee 6
                                                                          i32.const 16
                                                                          i32.add
                                                                          i32.load
                                                                          local.tee 1
                                                                          i32.load offset=8
                                                                          local.tee 5
                                                                          local.get 6
                                                                          i32.const 8
                                                                          i32.add
                                                                          local.tee 6
                                                                          i32.eq
                                                                          br_if 10 (;@25;)
                                                                          local.get 5
                                                                          local.get 6
                                                                          i32.store offset=12
                                                                          local.get 6
                                                                          i32.const 8
                                                                          i32.add
                                                                          local.get 5
                                                                          i32.store
                                                                          br 11 (;@24;)
                                                                        end
                                                                        local.get 0
                                                                        local.get 2
                                                                        i32.const -2
                                                                        local.get 3
                                                                        i32.rotl
                                                                        i32.and
                                                                        i32.store
                                                                      end
                                                                      local.get 1
                                                                      local.get 3
                                                                      i32.const 3
                                                                      i32.shl
                                                                      local.tee 3
                                                                      i32.const 3
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      local.get 1
                                                                      local.get 3
                                                                      i32.add
                                                                      local.tee 1
                                                                      local.get 1
                                                                      i32.load offset=4
                                                                      i32.const 1
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      local.get 6
                                                                      return
                                                                    end
                                                                    local.get 0
                                                                    i32.load offset=4
                                                                    local.tee 1
                                                                    i32.eqz
                                                                    br_if 5 (;@27;)
                                                                    local.get 0
                                                                    local.get 1
                                                                    i32.const 0
                                                                    local.get 1
                                                                    i32.sub
                                                                    i32.and
                                                                    i32.ctz
                                                                    i32.const 2
                                                                    i32.shl
                                                                    i32.add
                                                                    i32.const 272
                                                                    i32.add
                                                                    i32.load
                                                                    local.tee 2
                                                                    i32.load offset=4
                                                                    i32.const -8
                                                                    i32.and
                                                                    local.get 3
                                                                    i32.sub
                                                                    local.set 4
                                                                    local.get 2
                                                                    local.set 5
                                                                    local.get 2
                                                                    i32.load offset=16
                                                                    local.tee 1
                                                                    i32.eqz
                                                                    br_if 20 (;@12;)
                                                                    i32.const 0
                                                                    local.set 10
                                                                    br 21 (;@11;)
                                                                  end
                                                                  i32.const 0
                                                                  local.set 4
                                                                  local.get 1
                                                                  local.set 6
                                                                  br 2 (;@29;)
                                                                end
                                                                local.get 6
                                                                br_if 2 (;@28;)
                                                              end
                                                              i32.const 0
                                                              local.set 6
                                                              i32.const 2
                                                              local.get 8
                                                              i32.const 31
                                                              i32.and
                                                              i32.shl
                                                              local.tee 1
                                                              i32.const 0
                                                              local.get 1
                                                              i32.sub
                                                              i32.or
                                                              local.get 7
                                                              i32.and
                                                              local.tee 1
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                              local.get 0
                                                              local.get 1
                                                              i32.const 0
                                                              local.get 1
                                                              i32.sub
                                                              i32.and
                                                              i32.ctz
                                                              i32.const 2
                                                              i32.shl
                                                              i32.add
                                                              i32.const 272
                                                              i32.add
                                                              i32.load
                                                              local.tee 1
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                            end
                                                            loop  ;; label = @29
                                                              local.get 1
                                                              i32.load offset=4
                                                              i32.const -8
                                                              i32.and
                                                              local.tee 5
                                                              local.get 3
                                                              i32.ge_u
                                                              local.get 5
                                                              local.get 3
                                                              i32.sub
                                                              local.tee 9
                                                              local.get 4
                                                              i32.lt_u
                                                              i32.and
                                                              local.set 2
                                                              block  ;; label = @30
                                                                local.get 1
                                                                i32.load offset=16
                                                                local.tee 5
                                                                br_if 0 (;@30;)
                                                                local.get 1
                                                                i32.const 20
                                                                i32.add
                                                                i32.load
                                                                local.set 5
                                                              end
                                                              local.get 1
                                                              local.get 6
                                                              local.get 2
                                                              select
                                                              local.set 6
                                                              local.get 9
                                                              local.get 4
                                                              local.get 2
                                                              select
                                                              local.set 4
                                                              local.get 5
                                                              local.set 1
                                                              local.get 5
                                                              br_if 0 (;@29;)
                                                            end
                                                            local.get 6
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                          end
                                                          local.get 0
                                                          i32.load offset=400
                                                          local.tee 1
                                                          local.get 3
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                          local.get 4
                                                          local.get 1
                                                          local.get 3
                                                          i32.sub
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                        end
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 0
                                                                i32.load offset=400
                                                                local.tee 4
                                                                local.get 3
                                                                i32.ge_u
                                                                br_if 0 (;@30;)
                                                                local.get 0
                                                                i32.load offset=404
                                                                local.tee 1
                                                                local.get 3
                                                                i32.le_u
                                                                br_if 1 (;@29;)
                                                                local.get 0
                                                                i32.const 404
                                                                i32.add
                                                                local.get 1
                                                                local.get 3
                                                                i32.sub
                                                                local.tee 4
                                                                i32.store
                                                                local.get 0
                                                                local.get 0
                                                                i32.load offset=412
                                                                local.tee 1
                                                                local.get 3
                                                                i32.add
                                                                local.tee 5
                                                                i32.store offset=412
                                                                local.get 5
                                                                local.get 4
                                                                i32.const 1
                                                                i32.or
                                                                i32.store offset=4
                                                                local.get 1
                                                                local.get 3
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                local.get 1
                                                                i32.const 8
                                                                i32.add
                                                                return
                                                              end
                                                              local.get 0
                                                              i32.load offset=408
                                                              local.set 1
                                                              local.get 4
                                                              local.get 3
                                                              i32.sub
                                                              local.tee 5
                                                              i32.const 16
                                                              i32.ge_u
                                                              br_if 1 (;@28;)
                                                              local.get 0
                                                              i32.const 408
                                                              i32.add
                                                              i32.const 0
                                                              i32.store
                                                              local.get 0
                                                              i32.const 400
                                                              i32.add
                                                              i32.const 0
                                                              i32.store
                                                              local.get 1
                                                              local.get 4
                                                              i32.const 3
                                                              i32.or
                                                              i32.store offset=4
                                                              local.get 1
                                                              local.get 4
                                                              i32.add
                                                              local.tee 4
                                                              i32.const 4
                                                              i32.add
                                                              local.set 3
                                                              local.get 4
                                                              i32.load offset=4
                                                              i32.const 1
                                                              i32.or
                                                              local.set 4
                                                              br 2 (;@27;)
                                                            end
                                                            i32.const 0
                                                            local.set 2
                                                            local.get 3
                                                            i32.const 65583
                                                            i32.add
                                                            local.tee 4
                                                            i32.const 16
                                                            i32.shr_u
                                                            memory.grow
                                                            local.tee 1
                                                            i32.const -1
                                                            i32.eq
                                                            br_if 20 (;@8;)
                                                            local.get 1
                                                            i32.const 16
                                                            i32.shl
                                                            local.tee 6
                                                            i32.eqz
                                                            br_if 20 (;@8;)
                                                            local.get 0
                                                            local.get 0
                                                            i32.load offset=416
                                                            local.get 4
                                                            i32.const -65536
                                                            i32.and
                                                            local.tee 8
                                                            i32.add
                                                            local.tee 1
                                                            i32.store offset=416
                                                            local.get 0
                                                            local.get 0
                                                            i32.load offset=420
                                                            local.tee 4
                                                            local.get 1
                                                            local.get 1
                                                            local.get 4
                                                            i32.lt_u
                                                            select
                                                            i32.store offset=420
                                                            local.get 0
                                                            i32.load offset=412
                                                            local.tee 4
                                                            i32.eqz
                                                            br_if 9 (;@19;)
                                                            local.get 0
                                                            i32.const 424
                                                            i32.add
                                                            local.tee 7
                                                            local.set 1
                                                            loop  ;; label = @29
                                                              local.get 1
                                                              i32.load
                                                              local.tee 5
                                                              local.get 1
                                                              i32.load offset=4
                                                              local.tee 9
                                                              i32.add
                                                              local.get 6
                                                              i32.eq
                                                              br_if 11 (;@18;)
                                                              local.get 1
                                                              i32.load offset=8
                                                              local.tee 1
                                                              br_if 0 (;@29;)
                                                              br 19 (;@10;)
                                                            end
                                                          end
                                                          local.get 0
                                                          i32.const 400
                                                          i32.add
                                                          local.get 5
                                                          i32.store
                                                          local.get 0
                                                          i32.const 408
                                                          i32.add
                                                          local.get 1
                                                          local.get 3
                                                          i32.add
                                                          local.tee 2
                                                          i32.store
                                                          local.get 2
                                                          local.get 5
                                                          i32.const 1
                                                          i32.or
                                                          i32.store offset=4
                                                          local.get 1
                                                          local.get 4
                                                          i32.add
                                                          local.get 5
                                                          i32.store
                                                          local.get 3
                                                          i32.const 3
                                                          i32.or
                                                          local.set 4
                                                          local.get 1
                                                          i32.const 4
                                                          i32.add
                                                          local.set 3
                                                        end
                                                        local.get 3
                                                        local.get 4
                                                        i32.store
                                                        local.get 1
                                                        i32.const 8
                                                        i32.add
                                                        return
                                                      end
                                                      local.get 0
                                                      local.get 6
                                                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
                                                      local.get 4
                                                      i32.const 15
                                                      i32.gt_u
                                                      br_if 2 (;@23;)
                                                      local.get 6
                                                      local.get 4
                                                      local.get 3
                                                      i32.add
                                                      local.tee 1
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      local.get 6
                                                      local.get 1
                                                      i32.add
                                                      local.tee 1
                                                      local.get 1
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br 12 (;@13;)
                                                    end
                                                    local.get 0
                                                    local.get 2
                                                    i32.const -2
                                                    local.get 4
                                                    i32.rotl
                                                    i32.and
                                                    i32.store
                                                  end
                                                  local.get 1
                                                  i32.const 8
                                                  i32.add
                                                  local.set 5
                                                  local.get 1
                                                  local.get 3
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 1
                                                  local.get 3
                                                  i32.add
                                                  local.tee 2
                                                  local.get 4
                                                  i32.const 3
                                                  i32.shl
                                                  local.tee 4
                                                  local.get 3
                                                  i32.sub
                                                  local.tee 3
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 1
                                                  local.get 4
                                                  i32.add
                                                  local.get 3
                                                  i32.store
                                                  local.get 0
                                                  i32.const 400
                                                  i32.add
                                                  local.tee 6
                                                  i32.load
                                                  local.tee 1
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 0
                                                  local.get 1
                                                  i32.const 3
                                                  i32.shr_u
                                                  local.tee 9
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  local.set 4
                                                  local.get 0
                                                  i32.const 408
                                                  i32.add
                                                  i32.load
                                                  local.set 1
                                                  local.get 0
                                                  i32.load
                                                  local.tee 8
                                                  i32.const 1
                                                  local.get 9
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  local.tee 9
                                                  i32.and
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                  local.get 4
                                                  i32.load offset=8
                                                  local.set 9
                                                  br 2 (;@21;)
                                                end
                                                local.get 6
                                                local.get 3
                                                i32.const 3
                                                i32.or
                                                i32.store offset=4
                                                local.get 6
                                                local.get 3
                                                i32.add
                                                local.tee 1
                                                local.get 4
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                local.get 1
                                                local.get 4
                                                i32.add
                                                local.get 4
                                                i32.store
                                                local.get 4
                                                i32.const 255
                                                i32.gt_u
                                                br_if 5 (;@17;)
                                                local.get 0
                                                local.get 4
                                                i32.const 3
                                                i32.shr_u
                                                local.tee 4
                                                i32.const 3
                                                i32.shl
                                                i32.add
                                                i32.const 8
                                                i32.add
                                                local.set 3
                                                local.get 0
                                                i32.load
                                                local.tee 5
                                                i32.const 1
                                                local.get 4
                                                i32.const 31
                                                i32.and
                                                i32.shl
                                                local.tee 4
                                                i32.and
                                                i32.eqz
                                                br_if 7 (;@15;)
                                                local.get 3
                                                i32.const 8
                                                i32.add
                                                local.set 5
                                                local.get 3
                                                i32.load offset=8
                                                local.set 4
                                                br 8 (;@14;)
                                              end
                                              local.get 0
                                              local.get 8
                                              local.get 9
                                              i32.or
                                              i32.store
                                              local.get 4
                                              local.set 9
                                            end
                                            local.get 4
                                            i32.const 8
                                            i32.add
                                            local.get 1
                                            i32.store
                                            local.get 9
                                            local.get 1
                                            i32.store offset=12
                                            local.get 1
                                            local.get 4
                                            i32.store offset=12
                                            local.get 1
                                            local.get 9
                                            i32.store offset=8
                                          end
                                          local.get 0
                                          i32.const 408
                                          i32.add
                                          local.get 2
                                          i32.store
                                          local.get 6
                                          local.get 3
                                          i32.store
                                          local.get 5
                                          return
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 0
                                            i32.load offset=444
                                            local.tee 1
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 1
                                            local.get 6
                                            i32.le_u
                                            br_if 1 (;@19;)
                                          end
                                          local.get 0
                                          i32.const 444
                                          i32.add
                                          local.get 6
                                          i32.store
                                        end
                                        local.get 0
                                        local.get 6
                                        i32.store offset=424
                                        local.get 0
                                        i32.const 4095
                                        i32.store offset=448
                                        local.get 0
                                        i32.const 428
                                        i32.add
                                        local.get 8
                                        i32.store
                                        i32.const 0
                                        local.set 1
                                        local.get 0
                                        i32.const 436
                                        i32.add
                                        i32.const 0
                                        i32.store
                                        loop  ;; label = @19
                                          local.get 0
                                          local.get 1
                                          i32.add
                                          local.tee 4
                                          i32.const 16
                                          i32.add
                                          local.get 4
                                          i32.const 8
                                          i32.add
                                          local.tee 5
                                          i32.store
                                          local.get 4
                                          i32.const 20
                                          i32.add
                                          local.get 5
                                          i32.store
                                          local.get 1
                                          i32.const 8
                                          i32.add
                                          local.tee 1
                                          i32.const 256
                                          i32.ne
                                          br_if 0 (;@19;)
                                        end
                                        local.get 0
                                        i32.const 404
                                        i32.add
                                        local.get 8
                                        i32.const -40
                                        i32.add
                                        local.tee 1
                                        i32.store
                                        local.get 0
                                        i32.const 412
                                        i32.add
                                        local.get 6
                                        i32.store
                                        local.get 6
                                        local.get 1
                                        i32.const 1
                                        i32.or
                                        i32.store offset=4
                                        local.get 6
                                        local.get 1
                                        i32.add
                                        i32.const 40
                                        i32.store offset=4
                                        local.get 0
                                        i32.const 2097152
                                        i32.store offset=440
                                        br 9 (;@9;)
                                      end
                                      local.get 1
                                      i32.load offset=12
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      br 7 (;@10;)
                                    end
                                    local.get 0
                                    local.get 1
                                    local.get 4
                                    call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::he0b6e9bfcf411f56
                                    br 3 (;@13;)
                                  end
                                  local.get 6
                                  local.get 4
                                  i32.le_u
                                  br_if 5 (;@10;)
                                  local.get 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 5 (;@10;)
                                  local.get 1
                                  i32.const 4
                                  i32.add
                                  local.get 9
                                  local.get 8
                                  i32.add
                                  i32.store
                                  local.get 0
                                  i32.const 412
                                  i32.add
                                  local.tee 1
                                  local.get 1
                                  i32.load
                                  local.tee 1
                                  i32.const 15
                                  i32.add
                                  i32.const -8
                                  i32.and
                                  local.tee 4
                                  i32.const -8
                                  i32.add
                                  local.tee 5
                                  i32.store
                                  local.get 0
                                  i32.const 404
                                  i32.add
                                  local.tee 6
                                  local.get 6
                                  i32.load
                                  local.get 8
                                  i32.add
                                  local.tee 6
                                  local.get 1
                                  i32.const 8
                                  i32.add
                                  local.get 4
                                  i32.sub
                                  i32.add
                                  local.tee 4
                                  i32.store
                                  local.get 5
                                  local.get 4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 1
                                  local.get 6
                                  i32.add
                                  i32.const 40
                                  i32.store offset=4
                                  local.get 0
                                  i32.const 2097152
                                  i32.store offset=440
                                  br 6 (;@9;)
                                end
                                local.get 0
                                local.get 5
                                local.get 4
                                i32.or
                                i32.store
                                local.get 3
                                i32.const 8
                                i32.add
                                local.set 5
                                local.get 3
                                local.set 4
                              end
                              local.get 5
                              local.get 1
                              i32.store
                              local.get 4
                              local.get 1
                              i32.store offset=12
                              local.get 1
                              local.get 3
                              i32.store offset=12
                              local.get 1
                              local.get 4
                              i32.store offset=8
                            end
                            local.get 6
                            i32.const 8
                            i32.add
                            local.set 2
                            br 4 (;@8;)
                          end
                          i32.const 1
                          local.set 10
                        end
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              local.get 10
                                                              br_table 0 (;@29;) 1 (;@28;) 2 (;@27;) 4 (;@25;) 5 (;@24;) 6 (;@23;) 8 (;@21;) 9 (;@20;) 10 (;@19;) 7 (;@22;) 3 (;@26;) 3 (;@26;)
                                                            end
                                                            local.get 1
                                                            i32.load offset=4
                                                            i32.const -8
                                                            i32.and
                                                            local.get 3
                                                            i32.sub
                                                            local.tee 2
                                                            local.get 4
                                                            local.get 2
                                                            local.get 4
                                                            i32.lt_u
                                                            local.tee 2
                                                            select
                                                            local.set 4
                                                            local.get 1
                                                            local.get 5
                                                            local.get 2
                                                            select
                                                            local.set 5
                                                            local.get 1
                                                            local.tee 2
                                                            i32.load offset=16
                                                            local.tee 1
                                                            br_if 10 (;@18;)
                                                            i32.const 1
                                                            local.set 10
                                                            br 17 (;@11;)
                                                          end
                                                          local.get 2
                                                          i32.const 20
                                                          i32.add
                                                          i32.load
                                                          local.tee 1
                                                          br_if 10 (;@17;)
                                                          i32.const 2
                                                          local.set 10
                                                          br 16 (;@11;)
                                                        end
                                                        local.get 0
                                                        local.get 5
                                                        call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
                                                        local.get 4
                                                        i32.const 16
                                                        i32.ge_u
                                                        br_if 10 (;@16;)
                                                        i32.const 10
                                                        local.set 10
                                                        br 15 (;@11;)
                                                      end
                                                      local.get 5
                                                      local.get 4
                                                      local.get 3
                                                      i32.add
                                                      local.tee 1
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      local.get 5
                                                      local.get 1
                                                      i32.add
                                                      local.tee 1
                                                      local.get 1
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br 13 (;@12;)
                                                    end
                                                    local.get 5
                                                    local.get 3
                                                    i32.const 3
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 5
                                                    local.get 3
                                                    i32.add
                                                    local.tee 3
                                                    local.get 4
                                                    i32.const 1
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 3
                                                    local.get 4
                                                    i32.add
                                                    local.get 4
                                                    i32.store
                                                    local.get 0
                                                    i32.const 400
                                                    i32.add
                                                    local.tee 6
                                                    i32.load
                                                    local.tee 1
                                                    i32.eqz
                                                    br_if 9 (;@15;)
                                                    i32.const 4
                                                    local.set 10
                                                    br 13 (;@11;)
                                                  end
                                                  local.get 0
                                                  local.get 1
                                                  i32.const 3
                                                  i32.shr_u
                                                  local.tee 9
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  local.set 2
                                                  local.get 0
                                                  i32.const 408
                                                  i32.add
                                                  i32.load
                                                  local.set 1
                                                  local.get 0
                                                  i32.load
                                                  local.tee 8
                                                  i32.const 1
                                                  local.get 9
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  local.tee 9
                                                  i32.and
                                                  i32.eqz
                                                  br_if 9 (;@14;)
                                                  i32.const 5
                                                  local.set 10
                                                  br 12 (;@11;)
                                                end
                                                local.get 2
                                                i32.load offset=8
                                                local.set 9
                                                br 9 (;@13;)
                                              end
                                              local.get 0
                                              local.get 8
                                              local.get 9
                                              i32.or
                                              i32.store
                                              local.get 2
                                              local.set 9
                                              i32.const 6
                                              local.set 10
                                              br 10 (;@11;)
                                            end
                                            local.get 2
                                            i32.const 8
                                            i32.add
                                            local.get 1
                                            i32.store
                                            local.get 9
                                            local.get 1
                                            i32.store offset=12
                                            local.get 1
                                            local.get 2
                                            i32.store offset=12
                                            local.get 1
                                            local.get 9
                                            i32.store offset=8
                                            i32.const 7
                                            local.set 10
                                            br 9 (;@11;)
                                          end
                                          local.get 0
                                          i32.const 408
                                          i32.add
                                          local.get 3
                                          i32.store
                                          local.get 6
                                          local.get 4
                                          i32.store
                                          i32.const 8
                                          local.set 10
                                          br 8 (;@11;)
                                        end
                                        local.get 5
                                        i32.const 8
                                        i32.add
                                        return
                                      end
                                      i32.const 0
                                      local.set 10
                                      br 6 (;@11;)
                                    end
                                    i32.const 0
                                    local.set 10
                                    br 5 (;@11;)
                                  end
                                  i32.const 3
                                  local.set 10
                                  br 4 (;@11;)
                                end
                                i32.const 7
                                local.set 10
                                br 3 (;@11;)
                              end
                              i32.const 9
                              local.set 10
                              br 2 (;@11;)
                            end
                            i32.const 6
                            local.set 10
                            br 1 (;@11;)
                          end
                          i32.const 8
                          local.set 10
                          br 0 (;@11;)
                        end
                      end
                      local.get 0
                      local.get 0
                      i32.load offset=444
                      local.tee 1
                      local.get 6
                      local.get 1
                      local.get 6
                      i32.lt_u
                      select
                      i32.store offset=444
                      local.get 6
                      local.get 8
                      i32.add
                      local.set 5
                      local.get 7
                      local.set 1
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 1
                                  i32.load
                                  local.get 5
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 1
                                  i32.load offset=8
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 1
                              i32.load offset=12
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            local.get 7
                            local.set 1
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i32.load
                                  local.tee 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.get 1
                                  i32.load offset=4
                                  i32.add
                                  local.tee 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 2 (;@13;)
                                end
                                local.get 1
                                i32.load offset=8
                                local.set 1
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.const 404
                            i32.add
                            local.get 8
                            i32.const -40
                            i32.add
                            local.tee 1
                            i32.store
                            local.get 0
                            i32.const 412
                            i32.add
                            local.get 6
                            i32.store
                            local.get 6
                            local.get 1
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 6
                            local.get 1
                            i32.add
                            i32.const 40
                            i32.store offset=4
                            local.get 0
                            i32.const 2097152
                            i32.store offset=440
                            local.get 4
                            local.get 5
                            i32.const -32
                            i32.add
                            i32.const -8
                            i32.and
                            i32.const -8
                            i32.add
                            local.tee 1
                            local.get 1
                            local.get 4
                            i32.const 16
                            i32.add
                            i32.lt_u
                            select
                            local.tee 9
                            i32.const 27
                            i32.store offset=4
                            local.get 7
                            i64.load align=4
                            local.set 11
                            local.get 9
                            i32.const 16
                            i32.add
                            local.get 7
                            i32.const 8
                            i32.add
                            i64.load align=4
                            i64.store align=4
                            local.get 9
                            local.get 11
                            i64.store offset=8 align=4
                            local.get 0
                            i32.const 428
                            i32.add
                            local.get 8
                            i32.store
                            local.get 0
                            i32.const 424
                            i32.add
                            local.get 6
                            i32.store
                            local.get 0
                            i32.const 436
                            i32.add
                            i32.const 0
                            i32.store
                            local.get 0
                            i32.const 432
                            i32.add
                            local.get 9
                            i32.const 8
                            i32.add
                            i32.store
                            local.get 9
                            i32.const 28
                            i32.add
                            local.set 1
                            loop  ;; label = @13
                              local.get 1
                              i32.const 7
                              i32.store
                              local.get 5
                              local.get 1
                              i32.const 4
                              i32.add
                              local.tee 1
                              i32.gt_u
                              br_if 0 (;@13;)
                            end
                            local.get 9
                            local.get 4
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 9
                            local.get 9
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                            local.get 4
                            local.get 9
                            local.get 4
                            i32.sub
                            local.tee 1
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 9
                            local.get 1
                            i32.store
                            block  ;; label = @13
                              local.get 1
                              i32.const 255
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              local.get 1
                              i32.const 3
                              i32.shr_u
                              local.tee 5
                              i32.const 3
                              i32.shl
                              i32.add
                              i32.const 8
                              i32.add
                              local.set 1
                              local.get 0
                              i32.load
                              local.tee 6
                              i32.const 1
                              local.get 5
                              i32.const 31
                              i32.and
                              i32.shl
                              local.tee 5
                              i32.and
                              i32.eqz
                              br_if 2 (;@11;)
                              local.get 1
                              i32.load offset=8
                              local.set 5
                              br 3 (;@10;)
                            end
                            local.get 0
                            local.get 4
                            local.get 1
                            call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::he0b6e9bfcf411f56
                            br 3 (;@9;)
                          end
                          local.get 1
                          local.get 6
                          i32.store
                          local.get 1
                          local.get 1
                          i32.load offset=4
                          local.get 8
                          i32.add
                          i32.store offset=4
                          local.get 6
                          local.get 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 6
                          local.get 3
                          i32.add
                          local.set 1
                          local.get 5
                          local.get 6
                          i32.sub
                          local.get 3
                          i32.sub
                          local.set 3
                          local.get 0
                          i32.const 412
                          i32.add
                          local.tee 4
                          i32.load
                          local.get 5
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 0
                          i32.load offset=408
                          local.get 5
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 5
                          i32.load offset=4
                          local.tee 4
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 9 (;@2;)
                          local.get 4
                          i32.const -8
                          i32.and
                          local.tee 2
                          i32.const 255
                          i32.gt_u
                          br_if 6 (;@5;)
                          local.get 5
                          i32.load offset=12
                          local.tee 9
                          local.get 5
                          i32.load offset=8
                          local.tee 8
                          i32.eq
                          br_if 7 (;@4;)
                          local.get 8
                          local.get 9
                          i32.store offset=12
                          local.get 9
                          local.get 8
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        local.get 0
                        local.get 6
                        local.get 5
                        i32.or
                        i32.store
                        local.get 1
                        local.set 5
                      end
                      local.get 1
                      i32.const 8
                      i32.add
                      local.get 4
                      i32.store
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 1
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                    end
                    local.get 0
                    i32.const 404
                    i32.add
                    local.tee 1
                    i32.load
                    local.tee 4
                    local.get 3
                    i32.le_u
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 4
                    local.get 3
                    i32.sub
                    local.tee 4
                    i32.store
                    local.get 0
                    i32.const 412
                    i32.add
                    local.tee 1
                    local.get 1
                    i32.load
                    local.tee 1
                    local.get 3
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 5
                    local.get 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 1
                    i32.const 8
                    i32.add
                    return
                  end
                  local.get 2
                  return
                end
                local.get 4
                local.get 1
                i32.store
                local.get 0
                i32.const 404
                i32.add
                local.tee 4
                local.get 4
                i32.load
                local.get 3
                i32.add
                local.tee 3
                i32.store
                local.get 1
                local.get 3
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              local.get 0
              i32.const 408
              i32.add
              local.get 1
              i32.store
              local.get 0
              i32.const 400
              i32.add
              local.tee 4
              local.get 4
              i32.load
              local.get 3
              i32.add
              local.tee 3
              i32.store
              local.get 1
              local.get 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.add
              local.get 3
              i32.store
              br 4 (;@1;)
            end
            local.get 0
            local.get 5
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
            br 1 (;@3;)
          end
          local.get 0
          local.get 0
          i32.load
          i32.const -2
          local.get 4
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        local.get 2
        local.get 3
        i32.add
        local.set 3
        local.get 5
        local.get 2
        i32.add
        local.set 5
      end
      local.get 5
      local.get 5
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 1
      local.get 3
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 1
      local.get 3
      i32.add
      local.get 3
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 3
            local.get 0
            i32.load
            local.tee 5
            i32.const 1
            local.get 4
            i32.const 31
            i32.and
            i32.shl
            local.tee 4
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.const 8
            i32.add
            local.set 5
            local.get 3
            i32.load offset=8
            local.set 4
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          local.get 3
          call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::he0b6e9bfcf411f56
          br 2 (;@1;)
        end
        local.get 0
        local.get 5
        local.get 4
        i32.or
        i32.store
        local.get 3
        i32.const 8
        i32.add
        local.set 5
        local.get 3
        local.set 4
      end
      local.get 5
      local.get 1
      i32.store
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 1
      local.get 3
      i32.store offset=12
      local.get 1
      local.get 4
      i32.store offset=8
    end
    local.get 6
    i32.const 8
    i32.add)
  (func $core::fmt::Formatter::pad_integral::h497abba91e955e27 (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    local.get 3
    i32.store offset=4
    local.get 6
    local.get 2
    i32.store
    local.get 6
    i32.const 1114112
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.tee 7
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          local.get 5
          local.set 8
          br 2 (;@1;)
        end
        local.get 6
        i32.const 45
        i32.store offset=8
        local.get 5
        i32.const 1
        i32.add
        local.set 8
        local.get 0
        i32.load
        local.set 7
        br 1 (;@1;)
      end
      local.get 6
      i32.const 43
      i32.store offset=8
      local.get 5
      i32.const 1
      i32.add
      local.set 8
    end
    i32.const 0
    local.set 1
    local.get 6
    i32.const 0
    i32.store8 offset=15
    block  ;; label = @1
      local.get 7
      i32.const 4
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.const 1
      i32.store8 offset=15
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        local.get 3
        local.set 9
        loop  ;; label = @3
          local.get 1
          local.get 2
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 3
      i32.add
      local.get 1
      i32.sub
      local.set 8
    end
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 6
    local.get 6
    i32.const 15
    i32.add
    i32.store offset=20
    local.get 6
    local.get 6
    i32.const 8
    i32.add
    i32.store offset=16
    local.get 6
    local.get 6
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 1
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 0
                                    i32.const 12
                                    i32.add
                                    i32.load
                                    local.tee 2
                                    local.get 8
                                    i32.le_u
                                    br_if 1 (;@15;)
                                    local.get 7
                                    i32.const 8
                                    i32.and
                                    br_if 2 (;@14;)
                                    local.get 2
                                    local.get 8
                                    i32.sub
                                    local.set 9
                                    i32.const 1
                                    local.get 0
                                    i32.load8_u offset=48
                                    local.tee 2
                                    local.get 2
                                    i32.const 3
                                    i32.eq
                                    select
                                    i32.const 3
                                    i32.and
                                    local.tee 2
                                    i32.eqz
                                    br_if 4 (;@12;)
                                    local.get 2
                                    i32.const 2
                                    i32.eq
                                    br_if 3 (;@13;)
                                    i32.const 0
                                    local.set 3
                                    br 5 (;@11;)
                                  end
                                  local.get 6
                                  i32.const 16
                                  i32.add
                                  local.get 0
                                  call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::he32248278ed4ae9e
                                  br_if 12 (;@3;)
                                  local.get 0
                                  i32.load offset=24
                                  local.get 4
                                  local.get 5
                                  local.get 0
                                  i32.const 28
                                  i32.add
                                  i32.load
                                  i32.load offset=12
                                  call_indirect (type 1)
                                  local.set 2
                                  br 14 (;@1;)
                                end
                                local.get 6
                                i32.const 16
                                i32.add
                                local.get 0
                                call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::he32248278ed4ae9e
                                br_if 11 (;@3;)
                                local.get 0
                                i32.load offset=24
                                local.get 4
                                local.get 5
                                local.get 0
                                i32.const 28
                                i32.add
                                i32.load
                                i32.load offset=12
                                call_indirect (type 1)
                                local.set 2
                                br 13 (;@1;)
                              end
                              local.get 0
                              i32.const 1
                              i32.store8 offset=48
                              local.get 0
                              i32.const 48
                              i32.store offset=4
                              local.get 6
                              i32.const 16
                              i32.add
                              local.get 0
                              call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::he32248278ed4ae9e
                              br_if 10 (;@3;)
                              local.get 2
                              local.get 8
                              i32.sub
                              local.set 9
                              i32.const 1
                              local.get 0
                              i32.const 48
                              i32.add
                              i32.load8_u
                              local.tee 2
                              local.get 2
                              i32.const 3
                              i32.eq
                              select
                              i32.const 3
                              i32.and
                              local.tee 2
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 2
                              i32.const 2
                              i32.eq
                              br_if 3 (;@10;)
                              i32.const 0
                              local.set 3
                              br 5 (;@8;)
                            end
                            local.get 9
                            i32.const 1
                            i32.add
                            i32.const 1
                            i32.shr_u
                            local.set 3
                            local.get 9
                            i32.const 1
                            i32.shr_u
                            local.set 9
                            br 1 (;@11;)
                          end
                          local.get 9
                          local.set 3
                          i32.const 0
                          local.set 9
                        end
                        local.get 6
                        i32.const 0
                        i32.store offset=28
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          local.tee 2
                          i32.const 127
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 2
                          i32.store8 offset=28
                          i32.const 1
                          local.set 1
                          br 5 (;@6;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.const 2047
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 2
                          i32.const 63
                          i32.and
                          i32.const 128
                          i32.or
                          i32.store8 offset=29
                          local.get 6
                          local.get 2
                          i32.const 6
                          i32.shr_u
                          i32.const 31
                          i32.and
                          i32.const 192
                          i32.or
                          i32.store8 offset=28
                          i32.const 2
                          local.set 1
                          br 5 (;@6;)
                        end
                        local.get 2
                        i32.const 65535
                        i32.gt_u
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 2
                        i32.const 63
                        i32.and
                        i32.const 128
                        i32.or
                        i32.store8 offset=30
                        local.get 6
                        local.get 2
                        i32.const 6
                        i32.shr_u
                        i32.const 63
                        i32.and
                        i32.const 128
                        i32.or
                        i32.store8 offset=29
                        local.get 6
                        local.get 2
                        i32.const 12
                        i32.shr_u
                        i32.const 15
                        i32.and
                        i32.const 224
                        i32.or
                        i32.store8 offset=28
                        i32.const 3
                        local.set 1
                        br 4 (;@6;)
                      end
                      local.get 9
                      i32.const 1
                      i32.add
                      i32.const 1
                      i32.shr_u
                      local.set 3
                      local.get 9
                      i32.const 1
                      i32.shr_u
                      local.set 9
                      br 1 (;@8;)
                    end
                    local.get 9
                    local.set 3
                    i32.const 0
                    local.set 9
                  end
                  local.get 6
                  i32.const 0
                  i32.store offset=28
                  block  ;; label = @8
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 2
                    i32.const 127
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 2
                    i32.store8 offset=28
                    i32.const 1
                    local.set 1
                    br 4 (;@4;)
                  end
                  local.get 2
                  i32.const 2047
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 6
                  local.get 2
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=29
                  local.get 6
                  local.get 2
                  i32.const 6
                  i32.shr_u
                  i32.const 31
                  i32.and
                  i32.const 192
                  i32.or
                  i32.store8 offset=28
                  i32.const 2
                  local.set 1
                  br 3 (;@4;)
                end
                local.get 6
                local.get 2
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=28
                local.get 6
                local.get 2
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=31
                local.get 6
                local.get 2
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=29
                local.get 6
                local.get 2
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=30
                i32.const 4
                local.set 1
              end
              i32.const -1
              local.set 2
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.add
                  local.tee 2
                  local.get 9
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 24
                  i32.add
                  i32.load
                  local.get 6
                  i32.const 28
                  i32.add
                  local.get 1
                  local.get 0
                  i32.const 28
                  i32.add
                  i32.load
                  i32.load offset=12
                  call_indirect (type 1)
                  i32.eqz
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 6
              i32.const 16
              i32.add
              local.get 0
              call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::he32248278ed4ae9e
              br_if 2 (;@3;)
              local.get 0
              i32.const 24
              i32.add
              local.tee 9
              i32.load
              local.get 4
              local.get 5
              local.get 0
              i32.const 28
              i32.add
              local.tee 0
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              br_if 2 (;@3;)
              i32.const -1
              local.set 2
              loop  ;; label = @6
                local.get 2
                i32.const 1
                i32.add
                local.tee 2
                local.get 3
                i32.ge_u
                br_if 4 (;@2;)
                local.get 9
                i32.load
                local.get 6
                i32.const 28
                i32.add
                local.get 1
                local.get 0
                i32.load
                i32.load offset=12
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            block  ;; label = @5
              local.get 2
              i32.const 65535
              i32.gt_u
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=30
              local.get 6
              local.get 2
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=29
              local.get 6
              local.get 2
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 224
              i32.or
              i32.store8 offset=28
              i32.const 3
              local.set 1
              br 1 (;@4;)
            end
            local.get 6
            local.get 2
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=28
            local.get 6
            local.get 2
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=31
            local.get 6
            local.get 2
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=29
            local.get 6
            local.get 2
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=30
            i32.const 4
            local.set 1
          end
          i32.const -1
          local.set 2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              local.get 9
              i32.ge_u
              br_if 1 (;@4;)
              local.get 0
              i32.const 24
              i32.add
              i32.load
              local.get 6
              i32.const 28
              i32.add
              local.get 1
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 0
          i32.const 24
          i32.add
          local.tee 9
          i32.load
          local.get 4
          local.get 5
          local.get 0
          i32.const 28
          i32.add
          local.tee 0
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          br_if 0 (;@3;)
          i32.const -1
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 3
            i32.ge_u
            br_if 2 (;@2;)
            local.get 9
            i32.load
            local.get 6
            i32.const 28
            i32.add
            local.get 1
            local.get 0
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
    end
    local.get 6
    i32.const 32
    i32.add
    global.set 0
    local.get 2)
  (func $core::fmt::write::h6ba42b8d16cec7ea (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 28
    i32.add
    local.tee 4
    local.get 1
    i32.store
    local.get 3
    i32.const 44
    i32.add
    local.tee 5
    local.get 2
    i32.const 20
    i32.add
    i32.load
    local.tee 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=48
    local.get 3
    i32.const 36
    i32.add
    local.tee 6
    local.get 2
    i32.load offset=16
    local.tee 7
    local.get 1
    i32.const 3
    i32.shl
    local.tee 8
    i32.add
    i32.store
    local.get 3
    i64.const 137438953472
    i64.store
    i32.const 0
    local.set 1
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 7
    i32.store offset=32
    local.get 3
    local.get 7
    i32.store offset=40
    local.get 3
    local.get 2
    i32.load
    local.tee 9
    i32.store offset=56
    local.get 3
    local.get 9
    local.get 2
    i32.load offset=4
    i32.const 3
    i32.shl
    local.tee 10
    i32.add
    local.tee 11
    i32.store offset=60
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.load offset=8
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 28
                          i32.add
                          local.set 7
                          local.get 0
                          local.get 2
                          i32.const 12
                          i32.add
                          i32.load
                          i32.const 36
                          i32.mul
                          i32.add
                          local.set 12
                          local.get 3
                          i32.const 24
                          i32.add
                          local.set 13
                          local.get 3
                          i32.const 48
                          i32.add
                          local.set 14
                          local.get 3
                          i32.const 40
                          i32.add
                          local.set 15
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 16
                          local.get 3
                          i32.const 20
                          i32.add
                          local.set 17
                          local.get 3
                          i32.const 16
                          i32.add
                          local.set 18
                          local.get 3
                          i32.const 32
                          i32.add
                          local.set 19
                          loop  ;; label = @12
                            local.get 0
                            local.get 12
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 10
                            local.get 1
                            i32.eq
                            br_if 2 (;@10;)
                            block  ;; label = @13
                              local.get 13
                              i32.load
                              local.get 9
                              local.get 1
                              i32.add
                              local.tee 20
                              i32.load
                              local.get 20
                              i32.const 4
                              i32.add
                              i32.load
                              local.get 4
                              i32.load
                              i32.load offset=12
                              call_indirect (type 1)
                              br_if 0 (;@13;)
                              local.get 14
                              local.get 0
                              i32.load8_u offset=32
                              i32.store8
                              local.get 3
                              local.get 0
                              i32.load offset=8
                              i32.store offset=4
                              local.get 3
                              local.get 0
                              i32.load offset=12
                              i32.store
                              i32.const 0
                              local.set 8
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load offset=24
                                      local.tee 2
                                      i32.const 1
                                      i32.eq
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        local.get 2
                                        i32.const 3
                                        i32.eq
                                        br_if 0 (;@18;)
                                        local.get 2
                                        i32.const 2
                                        i32.ne
                                        br_if 2 (;@16;)
                                        local.get 19
                                        i32.load
                                        local.tee 21
                                        local.get 6
                                        i32.load
                                        i32.eq
                                        br_if 0 (;@18;)
                                        local.get 19
                                        local.get 21
                                        i32.const 8
                                        i32.add
                                        i32.store
                                        local.get 21
                                        i32.load offset=4
                                        i32.const 15
                                        i32.ne
                                        br_if 4 (;@14;)
                                        local.get 21
                                        i32.load
                                        i32.load
                                        local.set 2
                                        br 3 (;@15;)
                                      end
                                      br 3 (;@14;)
                                    end
                                    local.get 7
                                    i32.load
                                    local.tee 21
                                    local.get 5
                                    i32.load
                                    local.tee 2
                                    i32.ge_u
                                    br_if 14 (;@2;)
                                    local.get 15
                                    i32.load
                                    local.get 21
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    local.tee 21
                                    i32.load offset=4
                                    i32.const 15
                                    i32.ne
                                    br_if 2 (;@14;)
                                    local.get 21
                                    i32.load
                                    i32.load
                                    local.set 2
                                    br 1 (;@15;)
                                  end
                                  local.get 7
                                  i32.load
                                  local.set 2
                                end
                                i32.const 1
                                local.set 8
                              end
                              local.get 3
                              i32.const 12
                              i32.add
                              local.get 2
                              i32.store
                              local.get 16
                              local.get 8
                              i32.store
                              i32.const 0
                              local.set 8
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load offset=16
                                      local.tee 2
                                      i32.const 1
                                      i32.eq
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        local.get 2
                                        i32.const 3
                                        i32.eq
                                        br_if 0 (;@18;)
                                        local.get 2
                                        i32.const 2
                                        i32.ne
                                        br_if 2 (;@16;)
                                        local.get 19
                                        i32.load
                                        local.tee 21
                                        local.get 6
                                        i32.load
                                        i32.eq
                                        br_if 0 (;@18;)
                                        local.get 19
                                        local.get 21
                                        i32.const 8
                                        i32.add
                                        i32.store
                                        local.get 21
                                        i32.load offset=4
                                        i32.const 15
                                        i32.ne
                                        br_if 4 (;@14;)
                                        local.get 21
                                        i32.load
                                        i32.load
                                        local.set 2
                                        br 3 (;@15;)
                                      end
                                      br 3 (;@14;)
                                    end
                                    local.get 7
                                    i32.const -8
                                    i32.add
                                    i32.load
                                    local.tee 21
                                    local.get 5
                                    i32.load
                                    local.tee 2
                                    i32.ge_u
                                    br_if 15 (;@1;)
                                    local.get 15
                                    i32.load
                                    local.get 21
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    local.tee 21
                                    i32.load offset=4
                                    i32.const 15
                                    i32.ne
                                    br_if 2 (;@14;)
                                    local.get 21
                                    i32.load
                                    i32.load
                                    local.set 2
                                    br 1 (;@15;)
                                  end
                                  local.get 7
                                  i32.const -8
                                  i32.add
                                  i32.load
                                  local.set 2
                                end
                                i32.const 1
                                local.set 8
                              end
                              local.get 17
                              local.get 2
                              i32.store
                              local.get 18
                              local.get 8
                              i32.store
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load
                                  i32.const 1
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.const -24
                                  i32.add
                                  i32.load
                                  local.tee 8
                                  local.get 5
                                  i32.load
                                  local.tee 2
                                  i32.ge_u
                                  br_if 11 (;@4;)
                                  local.get 15
                                  i32.load
                                  local.get 8
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 19
                                i32.load
                                local.tee 8
                                local.get 6
                                i32.load
                                i32.eq
                                br_if 11 (;@3;)
                                local.get 19
                                local.get 8
                                i32.const 8
                                i32.add
                                i32.store
                              end
                              local.get 0
                              i32.const 36
                              i32.add
                              local.set 0
                              local.get 7
                              i32.const 36
                              i32.add
                              local.set 7
                              local.get 1
                              i32.const 8
                              i32.add
                              local.set 1
                              local.get 8
                              i32.load
                              local.get 3
                              local.get 8
                              i32.const 4
                              i32.add
                              i32.load
                              call_indirect (type 2)
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                          end
                          local.get 3
                          local.get 20
                          i32.const 8
                          i32.add
                          i32.store offset=56
                          br 4 (;@7;)
                        end
                        local.get 3
                        i32.const 24
                        i32.add
                        local.set 20
                        loop  ;; label = @11
                          local.get 9
                          local.set 0
                          local.get 8
                          i32.eqz
                          br_if 3 (;@8;)
                          local.get 10
                          i32.eqz
                          br_if 1 (;@10;)
                          block  ;; label = @12
                            local.get 20
                            i32.load
                            local.get 0
                            i32.load
                            local.get 0
                            i32.const 4
                            i32.add
                            i32.load
                            local.get 4
                            i32.load
                            i32.load offset=12
                            call_indirect (type 1)
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 8
                            i32.add
                            local.set 9
                            local.get 8
                            i32.const -8
                            i32.add
                            local.set 8
                            local.get 10
                            i32.const -8
                            i32.add
                            local.set 10
                            local.get 7
                            i32.load
                            local.set 1
                            local.get 7
                            i32.load offset=4
                            local.set 2
                            local.get 7
                            i32.const 8
                            i32.add
                            local.set 7
                            local.get 1
                            local.get 3
                            local.get 2
                            call_indirect (type 2)
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                        end
                        local.get 3
                        local.get 0
                        i32.const 8
                        i32.add
                        i32.store offset=56
                        br 3 (;@7;)
                      end
                      local.get 11
                      local.set 0
                      br 1 (;@8;)
                    end
                    local.get 9
                    local.get 1
                    i32.add
                    local.set 0
                  end
                  local.get 3
                  local.get 0
                  i32.store offset=56
                  local.get 0
                  local.get 11
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 3
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.store offset=56
                  local.get 3
                  i32.const 24
                  i32.add
                  i32.load
                  local.get 0
                  i32.load
                  local.get 0
                  i32.load offset=4
                  local.get 3
                  i32.const 28
                  i32.add
                  i32.load
                  i32.load offset=12
                  call_indirect (type 1)
                  i32.eqz
                  br_if 1 (;@6;)
                end
                i32.const 1
                local.set 0
                br 1 (;@5;)
              end
              i32.const 0
              local.set 0
            end
            local.get 3
            i32.const 64
            i32.add
            global.set 0
            local.get 0
            return
          end
          i32.const 1049708
          local.get 8
          local.get 2
          call $core::panicking::panic_bounds_check::hae7fc3b7bdba2f8f
          unreachable
        end
        i32.const 1049684
        call $core::panicking::panic::h158c6e3285d6c3fb
        unreachable
      end
      i32.const 1049724
      local.get 21
      local.get 2
      call $core::panicking::panic_bounds_check::hae7fc3b7bdba2f8f
      unreachable
    end
    i32.const 1049724
    local.get 21
    local.get 2
    call $core::panicking::panic_bounds_check::hae7fc3b7bdba2f8f
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::free::h9c21b28cf27be6c6 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const -8
    i32.add
    local.tee 2
    local.get 1
    i32.const -4
    i32.add
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 1
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=408
              local.get 2
              local.get 3
              i32.sub
              local.tee 2
              i32.eq
              br_if 0 (;@5;)
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=12
              local.tee 5
              local.get 2
              i32.load offset=8
              local.tee 6
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              local.get 5
              i32.store offset=12
              local.get 5
              local.get 6
              i32.store offset=8
              br 3 (;@2;)
            end
            local.get 4
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            local.get 1
            i32.store offset=400
            local.get 4
            i32.const 4
            i32.add
            local.tee 0
            local.get 0
            i32.load
            i32.const -2
            i32.and
            i32.store
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 0
          local.get 2
          call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
          br 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load
        i32.const -2
        local.get 3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.load offset=4
                        local.tee 3
                        i32.const 2
                        i32.and
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load offset=412
                        local.get 4
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 0
                        i32.load offset=408
                        local.get 4
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const -8
                        i32.and
                        local.tee 5
                        local.get 1
                        i32.add
                        local.set 1
                        local.get 5
                        i32.const 255
                        i32.gt_u
                        br_if 3 (;@7;)
                        local.get 4
                        i32.load offset=12
                        local.tee 5
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 4
                        local.get 5
                        i32.store offset=12
                        local.get 5
                        local.get 4
                        i32.store offset=8
                        br 5 (;@5;)
                      end
                      local.get 4
                      i32.const 4
                      i32.add
                      local.get 3
                      i32.const -2
                      i32.and
                      i32.store
                      local.get 2
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 1
                      i32.add
                      local.get 1
                      i32.store
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.const 412
                    i32.add
                    local.get 2
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=404
                    local.get 1
                    i32.add
                    local.tee 1
                    i32.store offset=404
                    local.get 2
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 2
                      local.get 0
                      i32.load offset=408
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 0
                      i32.store offset=400
                      local.get 0
                      i32.const 408
                      i32.add
                      i32.const 0
                      i32.store
                    end
                    local.get 0
                    i32.load offset=440
                    local.tee 3
                    local.get 1
                    i32.ge_u
                    br_if 7 (;@1;)
                    local.get 0
                    i32.const 412
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 7 (;@1;)
                    block  ;; label = @9
                      local.get 0
                      i32.const 404
                      i32.add
                      i32.load
                      local.tee 5
                      i32.const 41
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 424
                      i32.add
                      local.set 2
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.load
                          local.tee 4
                          local.get 1
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 2
                          i32.load offset=4
                          i32.add
                          local.get 1
                          i32.gt_u
                          br_if 2 (;@9;)
                        end
                        local.get 2
                        i32.load offset=8
                        local.tee 2
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.const 432
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 4 (;@4;)
                    i32.const 0
                    local.set 2
                    loop  ;; label = @9
                      local.get 2
                      i32.const 1
                      i32.add
                      local.set 2
                      local.get 1
                      i32.load offset=8
                      local.tee 1
                      br_if 0 (;@9;)
                    end
                    local.get 2
                    i32.const 4095
                    local.get 2
                    i32.const 4095
                    i32.gt_u
                    select
                    local.set 2
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const 408
                  i32.add
                  local.get 2
                  i32.store
                  local.get 0
                  local.get 0
                  i32.load offset=400
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=400
                  local.get 2
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 2
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  return
                end
                local.get 0
                local.get 4
                call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
                br 1 (;@5;)
              end
              local.get 0
              local.get 0
              i32.load
              i32.const -2
              local.get 3
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store
            end
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            i32.add
            local.get 1
            i32.store
            local.get 2
            local.get 0
            i32.const 408
            i32.add
            i32.load
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            local.get 1
            i32.store offset=400
            return
          end
          i32.const 4095
          local.set 2
        end
        local.get 0
        local.get 2
        i32.store offset=448
        local.get 5
        local.get 3
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 440
        i32.add
        i32.const -1
        i32.store
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 255
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 1
                i32.const 3
                i32.shr_u
                local.tee 4
                i32.const 3
                i32.shl
                i32.add
                i32.const 8
                i32.add
                local.set 1
                local.get 0
                i32.load
                local.tee 3
                i32.const 1
                local.get 4
                i32.const 31
                i32.and
                i32.shl
                local.tee 4
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 1
                i32.const 8
                i32.add
                local.set 4
                local.get 1
                i32.load offset=8
                local.set 0
                br 2 (;@4;)
              end
              local.get 0
              local.get 2
              local.get 1
              call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::he0b6e9bfcf411f56
              local.get 0
              local.get 0
              i32.load offset=448
              i32.const -1
              i32.add
              local.tee 2
              i32.store offset=448
              local.get 2
              br_if 4 (;@1;)
              local.get 0
              i32.const 432
              i32.add
              i32.load
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              i32.const 0
              local.set 2
              loop  ;; label = @6
                local.get 2
                i32.const 1
                i32.add
                local.set 2
                local.get 1
                i32.load offset=8
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 2
              i32.const 4095
              local.get 2
              i32.const 4095
              i32.gt_u
              select
              local.set 2
              br 3 (;@2;)
            end
            local.get 0
            local.get 3
            local.get 4
            i32.or
            i32.store
            local.get 1
            i32.const 8
            i32.add
            local.set 4
            local.get 1
            local.set 0
          end
          local.get 4
          local.get 2
          i32.store
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=8
          return
        end
        i32.const 4095
        local.set 2
      end
      local.get 0
      i32.const 448
      i32.add
      local.get 2
      i32.store
    end)
  (func $dlmalloc::dlmalloc::Dlmalloc::realloc::h91f1e0f626a302ae (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const -65
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.set 4
      local.get 1
      i32.const -4
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.const -8
      i32.and
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          i32.const -8
                          i32.add
                          local.tee 8
                          local.get 7
                          i32.add
                          local.set 9
                          local.get 7
                          local.get 4
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 0
                          i32.load offset=412
                          local.get 9
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 0
                          i32.load offset=408
                          local.get 9
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 9
                          i32.load offset=4
                          local.tee 6
                          i32.const 2
                          i32.and
                          br_if 4 (;@7;)
                          local.get 6
                          i32.const -8
                          i32.and
                          local.tee 10
                          local.get 7
                          i32.add
                          local.tee 7
                          local.get 4
                          i32.lt_u
                          br_if 4 (;@7;)
                          local.get 7
                          local.get 4
                          i32.sub
                          local.set 2
                          local.get 10
                          i32.const 255
                          i32.gt_u
                          br_if 6 (;@5;)
                          local.get 9
                          i32.load offset=12
                          local.tee 3
                          local.get 9
                          i32.load offset=8
                          local.tee 9
                          i32.eq
                          br_if 7 (;@4;)
                          local.get 9
                          local.get 3
                          i32.store offset=12
                          local.get 3
                          local.get 9
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        local.get 4
                        i32.const 256
                        i32.lt_u
                        br_if 3 (;@7;)
                        local.get 7
                        local.get 4
                        i32.const 4
                        i32.or
                        i32.lt_u
                        br_if 3 (;@7;)
                        local.get 7
                        local.get 4
                        i32.sub
                        i32.const 131073
                        i32.lt_u
                        br_if 8 (;@2;)
                        br 3 (;@7;)
                      end
                      local.get 7
                      local.get 4
                      i32.sub
                      local.tee 2
                      i32.const 16
                      i32.lt_u
                      br_if 7 (;@2;)
                      local.get 5
                      local.get 4
                      local.get 6
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 2
                      i32.or
                      i32.store
                      local.get 8
                      local.get 4
                      i32.add
                      local.tee 3
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 9
                      local.get 9
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 3
                      local.get 2
                      call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hc8029ca8e37a2e7e
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.load offset=404
                    local.get 7
                    i32.add
                    local.tee 7
                    local.get 4
                    i32.le_u
                    br_if 1 (;@7;)
                    local.get 5
                    local.get 4
                    local.get 6
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 8
                    local.get 4
                    i32.add
                    local.tee 2
                    local.get 7
                    local.get 4
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    i32.const 404
                    i32.add
                    local.get 3
                    i32.store
                    local.get 0
                    i32.const 412
                    i32.add
                    local.get 2
                    i32.store
                    br 6 (;@2;)
                  end
                  local.get 0
                  i32.load offset=400
                  local.get 7
                  i32.add
                  local.tee 7
                  local.get 4
                  i32.ge_u
                  br_if 1 (;@6;)
                end
                local.get 0
                local.get 2
                call $dlmalloc::dlmalloc::Dlmalloc::malloc::h5891d2855e0d9ebe
                local.tee 4
                i32.eqz
                br_if 5 (;@1;)
                local.get 4
                local.get 1
                local.get 2
                local.get 5
                i32.load
                local.tee 3
                i32.const -8
                i32.and
                i32.const 4
                i32.const 8
                local.get 3
                i32.const 3
                i32.and
                select
                i32.sub
                local.tee 3
                local.get 3
                local.get 2
                i32.gt_u
                select
                call $memcpy
                local.set 2
                local.get 0
                local.get 1
                call $dlmalloc::dlmalloc::Dlmalloc::free::h9c21b28cf27be6c6
                local.get 2
                return
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  local.get 4
                  i32.sub
                  local.tee 2
                  i32.const 16
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 6
                  i32.const 1
                  i32.and
                  local.get 7
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  local.get 8
                  local.get 7
                  i32.add
                  local.tee 2
                  local.get 2
                  i32.load offset=4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  local.set 2
                  i32.const 0
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 5
                local.get 4
                local.get 6
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 4
                i32.add
                local.tee 3
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 8
                local.get 7
                i32.add
                local.tee 4
                local.get 2
                i32.store
                local.get 4
                local.get 4
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
              end
              local.get 0
              i32.const 408
              i32.add
              local.get 3
              i32.store
              local.get 0
              i32.const 400
              i32.add
              local.get 2
              i32.store
              br 3 (;@2;)
            end
            local.get 0
            local.get 9
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
            br 1 (;@3;)
          end
          local.get 0
          local.get 0
          i32.load
          i32.const -2
          local.get 6
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        block  ;; label = @3
          local.get 2
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 7
          local.get 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 8
          local.get 7
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 5
        local.get 4
        local.get 5
        i32.load
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 8
        local.get 4
        i32.add
        local.tee 3
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 8
        local.get 7
        i32.add
        local.tee 4
        local.get 4
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        local.get 2
        call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hc8029ca8e37a2e7e
      end
      local.get 1
      local.set 3
    end
    local.get 3)
  (func $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hc8029ca8e37a2e7e (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=4
                    local.tee 4
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 1
                    i32.load
                    local.tee 4
                    local.get 2
                    i32.add
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=408
                          local.get 1
                          local.get 4
                          i32.sub
                          local.tee 1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 255
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 1
                          i32.load offset=12
                          local.tee 5
                          local.get 1
                          i32.load offset=8
                          local.tee 6
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 6
                          local.get 5
                          i32.store offset=12
                          local.get 5
                          local.get 6
                          i32.store offset=8
                          br 3 (;@8;)
                        end
                        local.get 3
                        i32.load offset=4
                        i32.const 3
                        i32.and
                        i32.const 3
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 0
                        local.get 2
                        i32.store offset=400
                        local.get 3
                        i32.const 4
                        i32.add
                        local.tee 0
                        local.get 0
                        i32.load
                        i32.const -2
                        i32.and
                        i32.store
                        local.get 1
                        local.get 2
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 3
                        local.get 2
                        i32.store
                        return
                      end
                      local.get 0
                      local.get 1
                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 0
                    i32.load
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.load offset=4
                      local.tee 4
                      i32.const 2
                      i32.and
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=412
                      local.get 3
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=408
                      local.get 3
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 4
                      i32.const -8
                      i32.and
                      local.tee 5
                      local.get 2
                      i32.add
                      local.set 2
                      local.get 5
                      i32.const 255
                      i32.gt_u
                      br_if 4 (;@5;)
                      local.get 3
                      i32.load offset=12
                      local.tee 5
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      i32.eq
                      br_if 6 (;@3;)
                      local.get 3
                      local.get 5
                      i32.store offset=12
                      local.get 5
                      local.get 3
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 3
                    i32.const 4
                    i32.add
                    local.get 4
                    i32.const -2
                    i32.and
                    i32.store
                    local.get 1
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 2
                    i32.add
                    local.get 2
                    i32.store
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 412
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  local.get 0
                  i32.load offset=404
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.store offset=404
                  local.get 1
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.load offset=408
                  i32.eq
                  br_if 3 (;@4;)
                end
                return
              end
              local.get 0
              i32.const 408
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 0
              i32.load offset=400
              local.get 2
              i32.add
              local.tee 2
              i32.store offset=400
              local.get 1
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 2
              i32.store
              return
            end
            local.get 0
            local.get 3
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9
            br 2 (;@2;)
          end
          local.get 0
          i32.const 0
          i32.store offset=400
          local.get 0
          i32.const 408
          i32.add
          i32.const 0
          i32.store
          return
        end
        local.get 0
        local.get 0
        i32.load
        i32.const -2
        local.get 4
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      local.get 1
      local.get 2
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 1
      local.get 2
      i32.add
      local.get 2
      i32.store
      local.get 1
      local.get 0
      i32.const 408
      i32.add
      i32.load
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.store offset=400
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          i32.const 3
          i32.shr_u
          local.tee 3
          i32.const 3
          i32.shl
          i32.add
          i32.const 8
          i32.add
          local.set 2
          local.get 0
          i32.load
          local.tee 4
          i32.const 1
          local.get 3
          i32.const 31
          i32.and
          i32.shl
          local.tee 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=8
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        local.get 2
        call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::he0b6e9bfcf411f56
        return
      end
      local.get 0
      local.get 4
      local.get 3
      i32.or
      i32.store
      local.get 2
      local.set 0
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8)
  (func $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$_$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_char::hc9ab131b04d70ab9 (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 128
                i32.ge_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 0
                  i32.load offset=8
                  local.tee 3
                  local.get 0
                  i32.load offset=4
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 3
                  i32.const 1
                  i32.const 1
                  call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h062ccc252251e601__.llvm.656494836967476777_
                  local.tee 3
                  i32.const 255
                  i32.and
                  i32.const 2
                  i32.ne
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.load
                  local.set 3
                end
                local.get 0
                i32.load
                local.get 3
                i32.add
                local.get 1
                i32.store8
                local.get 0
                i32.const 8
                i32.add
                local.tee 0
                local.get 0
                i32.load
                i32.const 1
                i32.add
                i32.store
                br 1 (;@5;)
              end
              local.get 2
              i32.const 0
              i32.store offset=12
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 2048
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 31
                  i32.and
                  i32.const 192
                  i32.or
                  i32.store8 offset=12
                  i32.const 2
                  local.set 1
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.const 65535
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  local.get 2
                  local.get 1
                  i32.const 12
                  i32.shr_u
                  i32.const 15
                  i32.and
                  i32.const 224
                  i32.or
                  i32.store8 offset=12
                  i32.const 3
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 2
                local.get 1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=12
                local.get 2
                local.get 1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=15
                local.get 2
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                local.get 2
                local.get 1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                i32.const 4
                local.set 1
              end
              local.get 0
              local.get 0
              i32.load offset=8
              local.get 1
              i32.const 1
              call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h062ccc252251e601__.llvm.656494836967476777_
              local.tee 3
              i32.const 255
              i32.and
              i32.const 2
              i32.ne
              br_if 1 (;@4;)
              local.get 0
              i32.const 8
              i32.add
              local.tee 3
              local.get 3
              i32.load
              local.tee 3
              local.get 1
              i32.add
              i32.store
              local.get 3
              local.get 0
              i32.load
              i32.add
              local.get 2
              i32.const 12
              i32.add
              local.get 1
              call $memcpy
              drop
            end
            local.get 2
            i32.const 16
            i32.add
            global.set 0
            i32.const 0
            return
          end
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          i32.const 1049488
          call $core::panicking::panic::h158c6e3285d6c3fb
          unreachable
        end
        local.get 3
        i32.const 1
        i32.and
        br_if 1 (;@1;)
      end
      call $alloc::raw_vec::capacity_overflow::h0432b49d9a8429de
      unreachable
    end
    i32.const 1049488
    call $core::panicking::panic::h158c6e3285d6c3fb
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::memalign::h6ee1a31adbbeca60 (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      i32.const -64
      local.get 1
      i32.const 16
      local.get 1
      i32.const 16
      i32.gt_u
      select
      local.tee 1
      i32.sub
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call $dlmalloc::dlmalloc::Dlmalloc::malloc::h5891d2855e0d9ebe
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const -8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 5
            local.get 2
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const -4
            i32.add
            local.tee 6
            i32.load
            local.tee 7
            i32.const -8
            i32.and
            local.get 5
            local.get 2
            i32.add
            i32.const 0
            local.get 1
            i32.sub
            i32.and
            i32.const -8
            i32.add
            local.tee 2
            local.get 2
            local.get 1
            i32.add
            local.get 2
            local.get 3
            i32.sub
            i32.const 16
            i32.gt_u
            select
            local.tee 1
            local.get 3
            i32.sub
            local.tee 2
            i32.sub
            local.set 5
            local.get 7
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 5
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 1
            local.get 5
            i32.add
            local.tee 5
            local.get 5
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 6
            local.get 2
            local.get 6
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            local.get 2
            call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hc8029ca8e37a2e7e
            br 2 (;@2;)
          end
          local.get 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 3
        local.get 1
        local.get 5
        i32.store offset=4
        local.get 1
        local.get 3
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        local.tee 3
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.add
        local.get 4
        local.get 2
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 1
        local.get 4
        i32.add
        local.tee 2
        local.get 3
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 1
        local.get 3
        i32.add
        local.tee 3
        local.get 3
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 4
        call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hc8029ca8e37a2e7e
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func $std::panicking::rust_panic_with_hook::h734f34ceefcf033c (type 4) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    i32.const 1
    local.set 5
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 3
    i32.load offset=8
    local.set 7
    local.get 3
    i32.load offset=4
    local.set 8
    local.get 3
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1049856
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.load offset=1049860
        i32.const 1
        i32.add
        local.tee 5
        i32.store offset=1049860
        local.get 5
        i32.const 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 4
        i32.const 1049628
        i32.store offset=8
        local.get 4
        i64.const 1
        i64.store offset=12 align=4
        local.get 4
        i32.const 1048776
        i32.store offset=24
        local.get 4
        i32.const 8
        i32.add
        call $std::sys_common::util::dumb_print::hd01034ffb1a2cf33
        unreachable
      end
      i32.const 0
      i64.const 4294967297
      i64.store offset=1049856
    end
    local.get 4
    i32.const 40
    i32.add
    local.get 3
    local.get 8
    local.get 7
    local.get 6
    call $core::panic::Location::internal_constructor::hdcb8a2213ee1abd6
    local.get 4
    i32.const 8
    i32.add
    i32.const 20
    i32.add
    local.get 4
    i32.const 48
    i32.add
    i64.load
    i64.store align=4
    local.get 4
    i32.const 1049576
    i32.store offset=12
    local.get 4
    i32.const 1048776
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=16
    local.get 4
    local.get 4
    i64.load offset=40
    i64.store offset=20 align=4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1049844
        local.tee 3
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.store offset=1049844
        block  ;; label = @3
          i32.const 0
          i32.load offset=1049852
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1049848
          local.set 3
          local.get 4
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
          local.get 4
          local.get 4
          i64.load
          i64.store offset=8
          local.get 3
          local.get 4
          i32.const 8
          i32.add
          local.get 2
          i32.load offset=12
          call_indirect (type 0)
          i32.const 0
          i32.load offset=1049844
          local.set 3
        end
        i32.const 0
        local.get 3
        i32.const -1
        i32.add
        i32.store offset=1049844
        local.get 5
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 4
        i32.const 1049636
        i32.store offset=8
        local.get 4
        i64.const 1
        i64.store offset=12 align=4
        local.get 4
        i32.const 1048776
        i32.store offset=24
        local.get 4
        i32.const 8
        i32.add
        call $std::sys_common::util::dumb_print::hd01034ffb1a2cf33
        unreachable
      end
      local.get 4
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i32.const 1049652
      i32.store offset=40
      local.get 4
      i64.const 1
      i64.store offset=44 align=4
      local.get 4
      i32.const 1048776
      i32.store offset=56
      local.get 4
      i32.const 40
      i32.add
      call $std::sys_common::util::abort::h5f4ae5826427a74e
      unreachable
    end
    local.get 0
    local.get 1
    call $rust_panic
    unreachable)
  (func $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::he32248278ed4ae9e (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        i32.load
        local.tee 3
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 28
        i32.add
        i32.load
        local.set 4
        local.get 1
        i32.load offset=24
        local.set 5
        local.get 2
        i32.const 0
        i32.store offset=12
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 127
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.store8 offset=12
            i32.const 1
            local.set 6
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 2047
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 3
            i32.const 6
            i32.shr_u
            i32.const 31
            i32.and
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            local.set 6
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 65535
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 3
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 3
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            local.set 6
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 3
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 3
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 3
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          i32.const 4
          local.set 6
        end
        i32.const 1
        local.set 3
        local.get 5
        local.get 2
        i32.const 12
        i32.add
        local.get 6
        local.get 4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        local.get 0
        i32.load offset=8
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::he0b6e9bfcf411f56 (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 8
        i32.shr_u
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 4
        local.get 2
        i32.const 16777215
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 38
        local.get 3
        i32.clz
        local.tee 4
        i32.sub
        i32.const 31
        i32.and
        i32.shr_u
        i32.const 1
        i32.and
        i32.const 31
        local.get 4
        i32.sub
        i32.const 1
        i32.shl
        i32.or
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
    end
    local.get 1
    local.get 4
    i32.store offset=28
    local.get 1
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 4
    i32.const 2
    i32.shl
    i32.add
    i32.const 272
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 5
              i32.const 1
              local.get 4
              i32.const 31
              i32.and
              i32.shl
              local.tee 6
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load
              local.tee 3
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 2
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              local.set 4
              br 2 (;@3;)
            end
            local.get 0
            i32.const 4
            i32.add
            local.get 5
            local.get 6
            i32.or
            i32.store
            local.get 3
            local.get 1
            i32.store
            local.get 1
            local.get 3
            i32.store offset=24
            br 3 (;@1;)
          end
          local.get 2
          i32.const 0
          i32.const 25
          local.get 4
          i32.const 1
          i32.shr_u
          i32.sub
          i32.const 31
          i32.and
          local.get 4
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 0
          loop  ;; label = @4
            local.get 3
            local.get 0
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 5
            i32.load
            local.tee 4
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.const 1
            i32.shl
            local.set 0
            local.get 4
            local.set 3
            local.get 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 2
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=24
        return
      end
      local.get 5
      local.get 1
      i32.store
      local.get 1
      local.get 3
      i32.store offset=24
    end
    local.get 1
    local.get 1
    i32.store offset=12
    local.get 1
    local.get 1
    i32.store offset=8)
  (func $trustless_health::compute::h7a4c47c05a1a5870 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store
    local.get 2
    local.get 0
    local.get 1
    i32.const 1
    call $trustless_health::load_bit::h766865fc9d9aab0a
    local.tee 3
    local.get 0
    local.get 1
    i32.const 4
    call $trustless_health::load_bit::h766865fc9d9aab0a
    local.tee 4
    i32.xor
    local.tee 5
    local.get 0
    local.get 1
    i32.const 8
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 6
    i32.xor
    local.tee 7
    local.get 0
    local.get 1
    i32.const 13
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 8
    i32.xor
    local.tee 9
    local.get 0
    local.get 1
    i32.const 17
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 10
    i32.xor
    local.tee 11
    local.get 0
    local.get 1
    i32.const 21
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 12
    i32.xor
    local.tee 13
    local.get 0
    local.get 1
    i32.const 26
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 0
    i32.xor
    i32.store8 offset=31
    local.get 2
    local.get 11
    local.get 12
    i32.and
    local.tee 1
    local.get 9
    local.get 10
    i32.and
    local.tee 9
    local.get 7
    local.get 8
    i32.and
    local.tee 7
    local.get 5
    local.get 6
    i32.and
    local.get 4
    local.get 3
    i32.or
    i32.const -1
    i32.xor
    local.tee 3
    i32.xor
    local.tee 4
    i32.xor
    local.tee 5
    i32.xor
    local.tee 6
    i32.xor
    local.get 13
    local.get 0
    i32.and
    local.tee 0
    i32.xor
    i32.store8 offset=30
    local.get 2
    local.get 0
    local.get 6
    i32.and
    local.tee 0
    local.get 1
    local.get 5
    i32.and
    local.tee 1
    local.get 9
    local.get 4
    i32.and
    local.tee 4
    local.get 7
    local.get 3
    i32.and
    local.tee 3
    i32.xor
    local.tee 5
    i32.xor
    local.tee 6
    i32.xor
    i32.store8 offset=29
    local.get 2
    local.get 1
    local.get 5
    i32.and
    local.get 4
    local.get 3
    i32.and
    i32.xor
    local.get 0
    local.get 6
    i32.and
    i32.xor
    i32.store8 offset=28
    local.get 2
    i32.const 32
    call $trustless_health::byte_arr_to_u32::ha1723a0cb4443a41
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf603e4746ddb82d9 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.load offset=24
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=12
            local.tee 3
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=8
            local.tee 4
            local.get 3
            i32.store offset=12
            local.get 3
            local.get 4
            i32.store offset=8
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 1
            i32.const 20
            i32.const 16
            local.get 1
            i32.const 20
            i32.add
            local.tee 3
            i32.load
            local.tee 5
            select
            i32.add
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 16
            i32.add
            local.get 5
            select
            local.set 5
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                local.set 6
                block  ;; label = @7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.tee 5
                  i32.load
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 3
                i32.const 16
                i32.add
                local.set 5
                local.get 3
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
            end
            local.get 6
            i32.const 0
            i32.store
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          local.set 3
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.tee 4
            i32.load
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 16
            i32.const 20
            local.get 2
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 4
          local.get 3
          i32.store
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 3
        local.get 2
        i32.store offset=24
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 1
        i32.const 20
        i32.add
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 20
        i32.add
        local.get 4
        i32.store
        local.get 4
        local.get 3
        i32.store offset=24
      end
      return
    end
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const -2
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.rotl
    i32.and
    i32.store offset=4)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$::fmt::h739e628519b3a1fa (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    i32.const 39
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 0
        i32.const 10000
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 39
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 9
          i32.add
          local.get 3
          i32.add
          local.tee 4
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i32.const 10000
          i32.div_u
          local.tee 5
          i32.const 10000
          i32.mul
          i32.sub
          local.tee 6
          i32.const 100
          i32.div_u
          local.tee 7
          i32.const 1
          i32.shl
          i32.const 1048998
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const -2
          i32.add
          local.get 6
          local.get 7
          i32.const 100
          i32.mul
          i32.sub
          i32.const 1
          i32.shl
          i32.const 1048998
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const -4
          i32.add
          local.set 3
          local.get 0
          i32.const 99999999
          i32.gt_u
          local.set 4
          local.get 5
          local.set 0
          local.get 4
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 0
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 100
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -2
        i32.add
        local.tee 3
        i32.add
        local.get 5
        local.get 5
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 0
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048998
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 5
      local.set 0
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 9
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        i32.add
        local.tee 5
        local.get 0
        i32.const 48
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.tee 5
      local.get 0
      i32.const 1
      i32.shl
      i32.const 1048998
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    local.get 1
    i32.const 1
    i32.const 1048998
    i32.const 0
    local.get 5
    i32.const 39
    local.get 3
    i32.sub
    call $core::fmt::Formatter::pad_integral::h497abba91e955e27
    local.set 0
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 0)
  (func $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::box_me_up::h4eb8f98a388fde67 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 3
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1049528
      local.get 2
      i32.const 24
      i32.add
      call $core::fmt::write::h6ba42b8d16cec7ea
      drop
      local.get 4
      local.get 2
      i32.load offset=16
      i32.store
      local.get 2
      local.get 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.tee 3
        i32.load
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.store offset=8
      local.get 1
      local.get 5
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1049612
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set 0
      return
    end
    i32.const 12
    i32.const 4
    call $alloc::alloc::handle_alloc_error::h612a63a56f8c2099
    unreachable)
  (func $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::get::hfd9945b4a16b00e9 (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.tee 5
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1049528
      local.get 2
      i32.const 24
      i32.add
      call $core::fmt::write::h6ba42b8d16cec7ea
      drop
      local.get 5
      local.get 2
      i32.load offset=16
      i32.store
      local.get 2
      local.get 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        local.get 3
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 5
      i32.load
      i32.store
    end
    local.get 0
    i32.const 1049612
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func $trustless_health::byte_arr_to_u32::ha1723a0cb4443a41 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.ge_u
        br_if 1 (;@1;)
        local.get 3
        i32.const 1
        i32.add
        local.set 4
        block  ;; label = @3
          local.get 0
          local.get 3
          i32.add
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 2
          local.set 5
          i32.const 1
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              i32.const 31
              local.get 3
              i32.sub
              local.tee 3
              i32.const 2
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 1
              local.set 6
              i32.const 2
              local.set 5
              loop  ;; label = @6
                local.get 5
                i32.const 1
                local.get 3
                i32.const 1
                i32.and
                select
                local.get 6
                i32.mul
                local.set 6
                local.get 3
                i32.const 3
                i32.gt_u
                local.set 7
                local.get 5
                local.get 5
                i32.mul
                local.set 5
                local.get 3
                i32.const 1
                i32.shr_u
                local.tee 8
                local.set 3
                local.get 7
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 3
            local.set 8
          end
          local.get 5
          i32.const 1
          local.get 8
          i32.const 1
          i32.eq
          select
          local.get 6
          i32.mul
          local.get 2
          i32.add
          local.set 2
        end
        local.get 4
        local.set 3
        local.get 4
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
      end
      local.get 2
      return
    end
    i32.const 1049472
    local.get 3
    local.get 1
    call $core::panicking::panic_bounds_check::hae7fc3b7bdba2f8f
    unreachable)
  (func $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h062ccc252251e601__.llvm.656494836967476777_ (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 2
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 5
            local.get 1
            i32.sub
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.add
            local.tee 2
            local.get 1
            i32.lt_u
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.set 4
                local.get 1
                br_if 2 (;@4;)
                local.get 5
                i32.const 1
                i32.shl
                local.tee 1
                local.get 2
                local.get 2
                local.get 1
                i32.lt_u
                select
                local.set 2
                br 1 (;@5;)
              end
              i32.const 0
              local.set 4
              local.get 1
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 4
            local.get 2
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load
            local.get 5
            i32.const 1
            local.get 2
            call $__rust_realloc
            local.tee 1
            i32.eqz
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          local.get 4
          return
        end
        local.get 2
        i32.const 1
        call $__rust_alloc
        local.tee 1
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 1
      call $alloc::alloc::handle_alloc_error::h612a63a56f8c2099
      unreachable
    end
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.get 2
    i32.store
    i32.const 2)
  (func $core::panicking::panic_bounds_check::hae7fc3b7bdba2f8f (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store
    local.get 3
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 1
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 1
    i32.store offset=36
    local.get 3
    i32.const 1049756
    i32.store offset=8
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1049336
    i32.store offset=16
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $core::panicking::panic_fmt::h0c93626b89c38af6
    unreachable)
  (func $std::panicking::continue_panic_fmt::h66e52772c6d4be59 (type 9) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call $core::panic::PanicInfo::location::hc3240fc0a67fd9c4
    call $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::hb6a8ee5ef7afe279
    local.set 2
    local.get 0
    call $core::panic::PanicInfo::message::h31808be4a032d97b
    call $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h7c7285439fdb25af
    local.set 3
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    call $core::panic::Location::file::hde4b7a9dd3e2b513
    local.get 1
    i64.load offset=8
    local.set 5
    local.get 2
    call $core::panic::Location::line::h8e007cbbe19a00d6
    local.set 4
    local.get 2
    call $core::panic::Location::column::hd1f8d20e6b0dde2b
    local.set 2
    local.get 1
    local.get 5
    i64.store offset=16
    local.get 1
    local.get 4
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=28
    local.get 1
    i32.const 0
    i32.store offset=36
    local.get 1
    local.get 3
    i32.store offset=32
    local.get 1
    i32.const 32
    i32.add
    i32.const 1049592
    local.get 0
    call $core::panic::PanicInfo::message::h31808be4a032d97b
    local.get 1
    i32.const 16
    i32.add
    call $std::panicking::rust_panic_with_hook::h734f34ceefcf033c
    unreachable)
  (func $rust_panic (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 2
    call $__rust_start_panic
    i32.store offset=12
    local.get 2
    i32.const 28
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 36
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 7
    i32.store offset=44
    local.get 2
    i32.const 1049644
    i32.store offset=16
    local.get 2
    i32.const 1
    i32.store offset=20
    local.get 2
    i32.const 1048776
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 2
    i32.const 16
    i32.add
    call $std::sys_common::util::abort::h5f4ae5826427a74e
    unreachable)
  (func $__rdl_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    call $alloc_system::platform::lock::lock::hee475d2d71eced53
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1049864
            call $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::h508df8ec7c638162
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 1049864
            call $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::h508df8ec7c638162
            local.get 2
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1049864
            local.get 2
            local.get 3
            call $dlmalloc::dlmalloc::Dlmalloc::memalign::h6ee1a31adbbeca60
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          i32.const 1049864
          local.get 0
          local.get 3
          call $dlmalloc::dlmalloc::Dlmalloc::realloc::h91f1e0f626a302ae
          return
        end
        i32.const 1049864
        local.get 3
        call $dlmalloc::dlmalloc::Dlmalloc::malloc::h5891d2855e0d9ebe
        local.tee 2
        br_if 1 (;@1;)
      end
      i32.const 0
      return
    end
    local.get 2
    local.get 0
    local.get 3
    local.get 1
    local.get 1
    local.get 3
    i32.gt_u
    select
    call $memcpy
    local.set 2
    i32.const 1049864
    local.get 0
    call $dlmalloc::dlmalloc::Dlmalloc::free::h9c21b28cf27be6c6
    local.get 2)
  (func $std::alloc::default_alloc_error_hook::h862a281eeb0fe6b8 (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 1
    i32.store
    local.get 2
    local.get 0
    i32.store offset=44
    local.get 2
    i32.const 1
    i32.store offset=36
    local.get 2
    i32.const 1049512
    i32.store offset=8
    local.get 2
    i32.const 2
    i32.store offset=12
    local.get 2
    i32.const 1048680
    i32.store offset=16
    local.get 2
    local.get 2
    i32.const 44
    i32.add
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    i32.const 8
    i32.add
    call $std::sys_common::util::dumb_print::hd01034ffb1a2cf33
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$_$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_fmt::h258a56cc12783b69 (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1049528
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::h6ba42b8d16cec7ea
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$_$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_str::h96b55967ee9cf1d7 (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      local.get 0
      i32.load offset=8
      local.get 2
      i32.const 1
      call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h062ccc252251e601__.llvm.656494836967476777_
      local.tee 3
      i32.const 255
      i32.and
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.tee 3
      local.get 3
      i32.load
      local.tee 3
      local.get 2
      i32.add
      i32.store
      local.get 3
      local.get 0
      i32.load
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 3
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      call $alloc::raw_vec::capacity_overflow::h0432b49d9a8429de
      unreachable
    end
    i32.const 1049488
    call $core::panicking::panic::h158c6e3285d6c3fb
    unreachable)
  (func $core::panicking::panic::h158c6e3285d6c3fb (type 9) (param i32)
    (local i32 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i64.load offset=16 align=4
    local.set 2
    local.get 0
    i64.load offset=8 align=4
    local.set 3
    local.get 0
    i64.load align=4
    local.set 4
    local.get 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i64.store offset=24
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 1
    i32.const 1049284
    i32.store offset=16
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store
    local.get 1
    local.get 3
    i64.store offset=32
    local.get 1
    local.get 2
    i64.store offset=40
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    call $core::panicking::panic_fmt::h0c93626b89c38af6
    unreachable)
  (func $core::panicking::panic_fmt::h0c93626b89c38af6 (type 0) (param i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load align=4
    local.set 3
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i64.load offset=8 align=4
    i64.store align=4
    local.get 2
    i32.const 1049740
    i32.store offset=4
    local.get 2
    i32.const 1049284
    i32.store
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 3
    i64.store offset=12 align=4
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $__wbindgen_malloc (type 11) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const -4
      i32.gt_u
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 4
        local.get 1
        select
        call $__rust_alloc
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      return
    end
    call $std::process::abort::h9719faa57713020f
    unreachable)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $core::ptr::drop_in_place::h31d75aeef92fdd29 (type 9) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $wasm_bindgen::convert::closures::invoke4_mut::h494338652a69578a (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      local.get 1
      i32.load offset=12
      call_indirect (type 8)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h09786eb7290cc541 (type 14) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 4)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h102bdda50208bcf8 (type 14) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 4)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h21f6ed8e5f177703 (type 14) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 4)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h707432af13f9124d (type 15) (param i32 i32 f64 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 5)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h9c5786cce2b31be9 (type 8) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 6)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke3_mut::ha752b465cf1b2e69 (type 8) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 6)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke3_mut::hc071bd0d55eb3e35 (type 16) (param i32 i32 f32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 7)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $trustless_health::load_bit::h766865fc9d9aab0a (type 1) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      i32.load8_u
      return
    end
    i32.const 1049456
    local.get 2
    local.get 1
    call $core::panicking::panic_bounds_check::hae7fc3b7bdba2f8f
    unreachable)
  (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
    call $alloc_system::platform::lock::lock::hee475d2d71eced53
    block  ;; label = @1
      i32.const 1049864
      call $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::h508df8ec7c638162
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1049864
      local.get 1
      local.get 0
      call $dlmalloc::dlmalloc::Dlmalloc::memalign::h6ee1a31adbbeca60
      return
    end
    i32.const 1049864
    local.get 0
    call $dlmalloc::dlmalloc::Dlmalloc::malloc::h5891d2855e0d9ebe)
  (func $wasm_bindgen::convert::closures::invoke2_mut::h8eb06d0cc9dafefe (type 4) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      local.get 1
      i32.load offset=12
      call_indirect (type 3)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $wasm_bindgen::convert::closures::invoke1_mut::h436e3ef136263ba0 (type 1) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=12
      call_indirect (type 2)
      return
    end
    i32.const 1049408
    i32.const 48
    call $wasm_bindgen::throw_str::h3cab6731fb973c4e
    unreachable)
  (func $core::panic::Location::internal_constructor::hdcb8a2213ee1abd6 (type 14) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=12)
  (func $core::ptr::drop_in_place::h2c951c53fe7d1335 (type 9) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $rust_oom (type 0) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1049840
    local.tee 2
    i32.const 2
    local.get 2
    select
    call_indirect (type 0)
    unreachable)
  (func $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h7c7285439fdb25af (type 11) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    i32.const 1049552
    call $core::panicking::panic::h158c6e3285d6c3fb
    unreachable)
  (func $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::hb6a8ee5ef7afe279 (type 11) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    i32.const 1049552
    call $core::panicking::panic::h158c6e3285d6c3fb
    unreachable)
  (func $__wbindgen_free (type 0) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 4
      call $__rust_dealloc
    end)
  (func $load_bit (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const 255
    i32.and)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h5345030bf8d07f62 (type 14) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $wasm_bindgen::convert::closures::invoke3_mut::h102bdda50208bcf8)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h8c92a4d2d75e14a2 (type 14) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $wasm_bindgen::convert::closures::invoke3_mut::h102bdda50208bcf8)
  (func $wasm_bindgen::convert::closures::invoke3_mut::he61566cceee9ab1b (type 14) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $wasm_bindgen::convert::closures::invoke3_mut::h102bdda50208bcf8)
  (func $wasm_bindgen::convert::closures::invoke3_mut::h6eb215eef72d8e80 (type 14) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $wasm_bindgen::convert::closures::invoke3_mut::h21f6ed8e5f177703)
  (func $wasm_bindgen::convert::closures::invoke3_mut::ha45bf2ac8917f658 (type 14) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $wasm_bindgen::convert::closures::invoke3_mut::h09786eb7290cc541)
  (func $wasm_bindgen::convert::closures::invoke3_mut::hba6824ac931d1d74 (type 14) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $wasm_bindgen::convert::closures::invoke3_mut::h21f6ed8e5f177703)
  (func $__rust_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc)
  (func $wasm_bindgen::convert::closures::invoke2_mut::haaa4e8e7c0a062d3 (type 4) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $wasm_bindgen::convert::closures::invoke2_mut::h8eb06d0cc9dafefe)
  (func $__rust_dealloc (type 3) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc)
  (func $wasm_bindgen::throw_str::h3cab6731fb973c4e (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $__wbindgen_throw
    unreachable)
  (func $__rdl_dealloc (type 3) (param i32 i32 i32)
    call $alloc_system::platform::lock::lock::hee475d2d71eced53
    i32.const 1049864
    local.get 0
    call $dlmalloc::dlmalloc::Dlmalloc::free::h9c21b28cf27be6c6)
  (func $alloc::alloc::handle_alloc_error::h612a63a56f8c2099 (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $core::panic::Location::file::hde4b7a9dd3e2b513 (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4)
  (func $byte_arr_to_u32 (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $trustless_health::byte_arr_to_u32::ha1723a0cb4443a41)
  (func $compute (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $trustless_health::compute::h7a4c47c05a1a5870)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__rdl_alloc)
  (func $rust_begin_unwind (type 9) (param i32)
    local.get 0
    call $std::panicking::continue_panic_fmt::h66e52772c6d4be59
    unreachable)
  (func $alloc::raw_vec::capacity_overflow::h0432b49d9a8429de (type 10)
    i32.const 1049660
    call $core::panicking::panic::h158c6e3285d6c3fb
    unreachable)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::h75725d8759fe7125 (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$::fmt::h739e628519b3a1fa)
  (func $core::fmt::ArgumentV1::show_usize::h8b4544009f9e3220__.llvm.18050495408702106972_ (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::h75725d8759fe7125)
  (func $core::panic::PanicInfo::location::hc3240fc0a67fd9c4 (type 11) (param i32) (result i32)
    local.get 0
    i32.const 12
    i32.add)
  (func $core::panic::PanicInfo::message::h31808be4a032d97b (type 11) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $core::panic::Location::line::h8e007cbbe19a00d6 (type 11) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $core::panic::Location::column::hd1f8d20e6b0dde2b (type 11) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $std::process::abort::h9719faa57713020f (type 10)
    unreachable)
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h0ea61d8b670522c0 (type 12) (param i32) (result i64)
    i64.const -3237081014420081632)
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::he03b88d9c2712a76 (type 12) (param i32) (result i64)
    i64.const 58716571761178983)
  (func $std::sys_common::util::abort::h5f4ae5826427a74e (type 9) (param i32)
    unreachable)
  (func $__rust_start_panic (type 11) (param i32) (result i32)
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::h508df8ec7c638162 (type 11) (param i32) (result i32)
    i32.const 8)
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h70a50119ef9c01da (type 12) (param i32) (result i64)
    i64.const -3237081014420081632)
  (func $core::ptr::drop_in_place::h44e4586b1d01e75f (type 9) (param i32))
  (func $std::sys_common::util::dumb_print::hd01034ffb1a2cf33 (type 9) (param i32))
  (func $core::ptr::drop_in_place::h0cdf5bbd91aac732 (type 9) (param i32))
  (func $alloc_system::platform::lock::lock::hee475d2d71eced53 (type 10))
  (func $core::ptr::drop_in_place::h088e8834711f879a (type 9) (param i32))
  (table (;0;) 35 35 anyfunc)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "load_bit" (func $load_bit))
  (export "byte_arr_to_u32" (func $byte_arr_to_u32))
  (export "compute" (func $compute))
  (export "__wbindgen_malloc" (func $__wbindgen_malloc))
  (export "__wbindgen_free" (func $__wbindgen_free))
  (elem (;0;) (i32.const 1) $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::h75725d8759fe7125 $std::alloc::default_alloc_error_hook::h862a281eeb0fe6b8 $core::ptr::drop_in_place::h44e4586b1d01e75f $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$_$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_str::h96b55967ee9cf1d7 $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$_$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_char::hc9ab131b04d70ab9 $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$_$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_fmt::h258a56cc12783b69 $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$::fmt::h739e628519b3a1fa $core::ptr::drop_in_place::h0cdf5bbd91aac732 $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h0ea61d8b670522c0 $core::ptr::drop_in_place::h31d75aeef92fdd29 $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::box_me_up::h4eb8f98a388fde67 $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::get::hfd9945b4a16b00e9 $core::ptr::drop_in_place::h2c951c53fe7d1335 $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::he03b88d9c2712a76 $core::fmt::ArgumentV1::show_usize::h8b4544009f9e3220__.llvm.18050495408702106972_ $core::ptr::drop_in_place::h088e8834711f879a $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h70a50119ef9c01da $wasm_bindgen::convert::closures::invoke3_mut::h9c5786cce2b31be9 $wasm_bindgen::convert::closures::invoke3_mut::h5345030bf8d07f62 $wasm_bindgen::convert::closures::invoke3_mut::ha752b465cf1b2e69 $wasm_bindgen::convert::closures::invoke4_mut::h494338652a69578a $wasm_bindgen::convert::closures::invoke1_mut::h436e3ef136263ba0 $wasm_bindgen::convert::closures::invoke3_mut::hc071bd0d55eb3e35 $wasm_bindgen::convert::closures::invoke3_mut::h707432af13f9124d $wasm_bindgen::convert::closures::invoke3_mut::h21f6ed8e5f177703 $wasm_bindgen::convert::closures::invoke3_mut::h09786eb7290cc541 $wasm_bindgen::convert::closures::invoke3_mut::h102bdda50208bcf8 $wasm_bindgen::convert::closures::invoke2_mut::haaa4e8e7c0a062d3 $wasm_bindgen::convert::closures::invoke3_mut::he61566cceee9ab1b $wasm_bindgen::convert::closures::invoke3_mut::hba6824ac931d1d74 $wasm_bindgen::convert::closures::invoke3_mut::h6eb215eef72d8e80 $wasm_bindgen::convert::closures::invoke3_mut::ha45bf2ac8917f658 $wasm_bindgen::convert::closures::invoke3_mut::h8c92a4d2d75e14a2 $wasm_bindgen::convert::closures::invoke2_mut::h8eb06d0cc9dafefe)
  (data (;0;) (i32.const 1048576) "src/lib.rsinternal error: entered unreachable codeliballoc/raw_vec.rsmemory allocation of  bytes failed\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00called `Option::unwrap()` on a `None` valuelibcore/option.rs\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00thread panicked while processing panic. aborting.\0athread panicked while panicking. aborting.\0afailed to initiate panic, error rwlock locked for writingliballoc/raw_vec.rscapacity overflow00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899called `Option::unwrap()` on a `None` valuelibcore/option.rs\00\00\00\00\00\00libcore/fmt/mod.rs\00\00index out of bounds: the len is  but the index is \00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00closure invoked recursively or destroyed already")
  (data (;1;) (i32.const 1049456) "\00\00\10\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\00\00\10\00\0a\00\00\00\14\00\00\00\17\00\00\00\0a\00\10\00(\00\00\002\00\10\00\13\00\00\00\f8\01\00\00\1e\00\00\00E\00\10\00\15\00\00\00Z\00\10\00\0d\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\8c\00\10\00+\00\00\00\b7\00\10\00\11\00\00\00c\01\00\00\15\00\00\00\08\00\00\00\00\00\00\00\01\00\00\00\09\00\00\00\0a\00\00\00\10\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\0e\00\00\00\ec\00\10\002\00\00\00\1e\01\10\00+\00\00\00I\01\10\00 \00\00\00i\01\10\00\19\00\00\00\95\01\10\00\11\00\00\00\82\01\10\00\13\00\00\00\f5\02\00\00\05\00\00\00n\02\10\00+\00\00\00\99\02\10\00\11\00\00\00c\01\00\00\15\00\00\00\b0\02\10\00\12\00\00\00J\04\00\00(\00\00\00\b0\02\10\00\12\00\00\00V\04\00\00\11\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\11\00\00\00\c4\02\10\00 \00\00\00\e4\02\10\00\12\00\00\00")
  (data (;2;) (i32.const 1049776) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
