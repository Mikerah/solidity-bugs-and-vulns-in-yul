object "DosAuction_42" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_DosAuction_42()

        codecopy(0, dataoffset("DosAuction_42_deployed"), datasize("DosAuction_42_deployed"))

        return(0, datasize("DosAuction_42_deployed"))

        function constructor_DosAuction_42() {

        }

    }
    object "DosAuction_42_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x1998aeef
                {
                    // bid()

                    abi_decode_tuple_(4, calldatasize())
                    fun_bid_41()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

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

            function cleanup_from_storage_t_address_payable(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_address_payable(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_rational_0_by_1_to_t_address_payable(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function extract_from_storage_value_offset_0t_address_payable(slot_value) -> value {
                value := cleanup_from_storage_t_address_payable(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_bid_41() {

                let expr_10 := callvalue()
                let _1 := read_from_storage_offset_0_t_uint256(0x01)
                let expr_11 := _1
                let expr_12 := gt(cleanup_t_uint256(expr_10), cleanup_t_uint256(expr_11))
                require_helper(expr_12)
                let _2 := read_from_storage_offset_0_t_address_payable(0x00)
                let expr_15 := _2
                let expr_18 := 0x00
                let expr_19 := convert_t_rational_0_by_1_to_t_address_payable(expr_18)
                let expr_20 := iszero(eq(cleanup_t_address_payable(expr_15), cleanup_t_address_payable(expr_19)))
                if expr_20 {
                    let _3 := read_from_storage_offset_0_t_address_payable(0x00)
                    let expr_22 := _3
                    let expr_23_address := convert_t_address_payable_to_t_address(expr_22)
                    let _4 := read_from_storage_offset_0_t_uint256(0x01)
                    let expr_24 := _4

                    let _5 := 0
                    if iszero(expr_24) { _5 := 2300 }
                    let expr_25 := call(_5, expr_23_address, expr_24, 0, 0, 0, 0)

                    require_helper(expr_25)
                }
                let expr_32 := caller()
                update_storage_value_offset_0t_address_payable(0x00, expr_32)
                let expr_33 := expr_32
                let expr_37 := callvalue()
                update_storage_value_offset_0t_uint256(0x01, expr_37)
                let expr_38 := expr_37

            }

            function prepare_store_t_address_payable(value) -> ret {
                ret := value
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_storage_offset_0_t_address_payable(slot) -> value {
                value := extract_from_storage_value_offset_0t_address_payable(sload(slot))
            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function revert_forward_1() {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

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

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_address_payable(slot, value) {
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address_payable(value)))
            }

            function update_storage_value_offset_0t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

        }

    }

}


