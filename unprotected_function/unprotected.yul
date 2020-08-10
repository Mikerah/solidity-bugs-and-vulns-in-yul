object "Unprotected_46" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_Unprotected_46()

        codecopy(0, dataoffset("Unprotected_46_deployed"), datasize("Unprotected_46_deployed"))

        return(0, datasize("Unprotected_46_deployed"))

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function constructor_Unprotected_46() {

            let expr_19 := caller()
            let _1 := convert_t_address_payable_to_t_address(expr_19)
            update_storage_value_offset_0t_address(0x00, _1)
            let expr_20 := _1

        }

        function convert_t_address_payable_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(value)
        }

        function prepare_store_t_address(value) -> ret {
            ret := value
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_20_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_address(slot, value) {
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(value)))
        }

    }
    object "Unprotected_46_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x9d87b813
                {
                    // changeOwner_fixed(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_changeOwner_fixed_45(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa6f9dae1
                {
                    // changeOwner(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_changeOwner_33(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { revert(0, 0) }
                mstore(64, newFreePtr)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function fun_changeOwner_33(vloc__newOwner_25) {

                let _1 := vloc__newOwner_25
                let expr_29 := _1
                update_storage_value_offset_0t_address(0x00, expr_29)
                let expr_30 := expr_29

            }

            function fun_changeOwner_fixed_45(vloc__newOwner_35) {

                let _2 := vloc__newOwner_35
                let expr_41 := _2
                update_storage_value_offset_0t_address(0x00, expr_41)
                let expr_42 := expr_41

            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_address(slot, value) {
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(value)))
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

        }

    }

}


