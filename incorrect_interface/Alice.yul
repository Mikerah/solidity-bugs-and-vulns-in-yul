object "Alice_32" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_Alice_32()

        codecopy(0, dataoffset("Alice_32_deployed"), datasize("Alice_32_deployed"))

        return(0, datasize("Alice_32_deployed"))

        function constructor_Alice_32() {

        }

    }
    object "Alice_32_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x3c6bb436
                {
                    // val()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_val_3()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa5d5e465
                {
                    // set_fixed(int256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                    fun_set_fixed_23(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe5c19b2d
                {
                    // set(int256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                    fun_set_13(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            if callvalue() { revert(0, 0) }fun__31() stop()

            function abi_decode_t_int256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int256(value)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple_t_int256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_int256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_int256__to_t_int256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { revert(0, 0) }
                mstore(64, newFreePtr)
            }

            function cleanup_from_storage_split_t_int256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(value)
            }

            function extract_from_storage_value_dynamicsplit_t_int256(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_int256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function fun__31() {

                let expr_27 := 0x01
                let _3 := convert_t_rational_1_by_1_to_t_int256(expr_27)
                update_storage_value_offset_0t_int256(0x00, _3)
                let expr_28 := _3

            }

            function fun_set_13(vloc_new_val_5) {

                let _1 := vloc_new_val_5
                let expr_9 := _1
                update_storage_value_offset_0t_int256(0x00, expr_9)
                let expr_10 := expr_9

            }

            function fun_set_fixed_23(vloc_new_val_15) {

                let _2 := vloc_new_val_15
                let expr_19 := _2
                update_storage_value_offset_0t_int256(0x00, expr_19)
                let expr_20 := expr_19

            }

            function getter_fun_val_3() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_int256(slot, offset)

            }

            function prepare_store_t_int256(value) -> ret {
                ret := value
            }

            function read_from_storage_dynamicsplit__t_int256(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_int256(sload(slot), offset)
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_int256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_int256(value)))
            }

            function validator_revert_t_int256(value) {
                if iszero(eq(value, cleanup_t_int256(value))) { revert(0, 0) }
            }

        }

    }

}


