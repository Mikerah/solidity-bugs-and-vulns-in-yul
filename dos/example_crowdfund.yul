object "CrowdFundBad_36" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_CrowdFundBad_36()

        codecopy(0, dataoffset("CrowdFundBad_36_deployed"), datasize("CrowdFundBad_36_deployed"))

        return(0, datasize("CrowdFundBad_36_deployed"))

        function constructor_CrowdFundBad_36() {

        }

    }
    object "CrowdFundBad_36_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x11a6af0c
                {
                    // refundDos()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_refundDos_35()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xacde5d28
                {
                    // refundAmount(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_refundAmount_8(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { revert(0, 0) }
                mstore(64, newFreePtr)
            }

            function array_dataslot_t_array$_t_address_payable_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_length_t_array$_t_address_payable_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function cleanup_from_storage_split_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_from_storage_t_address_payable(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_address(value) -> cleaned {
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

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function extract_from_storage_value_dynamicsplit_t_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_dynamict_address_payable(slot_value, offset) -> value {
                value := cleanup_from_storage_t_address_payable(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_refundDos_35() {

                for {
                    let vloc_i_12
                    let zero_value_for_type_t_uint256_1 := zero_value_for_split_t_uint256()
                    vloc_i_12 := zero_value_for_type_t_uint256_1
                    } 1 {
                    let _3 := vloc_i_12
                    let _2 := increment_t_uint256(_3)
                    vloc_i_12 := _2
                    let expr_19 := _3
                }
                {
                    let _4 := vloc_i_12
                    let expr_14 := _4
                    let _5_slot := 0x00
                    let expr_15_slot := _5_slot
                    let expr_16 := array_length_t_array$_t_address_payable_$dyn_storage(expr_15_slot)
                    let expr_17 := lt(cleanup_t_uint256(expr_14), cleanup_t_uint256(expr_16))
                    if iszero(expr_17) { break }
                    let _6_slot := 0x00
                    let expr_21_slot := _6_slot
                    let _7 := vloc_i_12
                    let expr_22 := _7

                    let _8, _9 := storage_array_index_access_t_array$_t_address_payable_$dyn_storage(expr_21_slot, expr_22)
                    let _10 := read_from_storage_dynamic_t_address_payable(_8, _9)
                    let expr_23 := _10
                    let expr_24_address := convert_t_address_payable_to_t_address(expr_23)
                    let _11 := 0x01
                    let expr_25 := _11
                    let _12_slot := 0x00
                    let expr_26_slot := _12_slot
                    let _13 := vloc_i_12
                    let expr_27 := _13

                    let _14, _15 := storage_array_index_access_t_array$_t_address_payable_$dyn_storage(expr_26_slot, expr_27)
                    let _16 := read_from_storage_dynamic_t_address_payable(_14, _15)
                    let expr_28 := _16
                    let _17 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_25,expr_28)
                    let _18 := read_from_storage_offset_0_t_uint256(_17)
                    let expr_29 := _18

                    let _19 := 0
                    if iszero(expr_29) { _19 := 2300 }
                    let _20 := call(_19, expr_24_address, expr_29, 0, 0, 0, 0)

                    if iszero(_20) { revert_forward_1() }

                }

            }

            function getter_fun_refundAmount_8(key_0) -> ret {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { revert(0,0) }
                ret := add(value, 1)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function read_from_storage_dynamic_t_address_payable(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_address_payable(sload(slot), offset)
            }

            function read_from_storage_dynamicsplit__t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_uint256(sload(slot), offset)
            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function revert_forward_1() {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function storage_array_index_access_t_array$_t_address_payable_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_address_payable_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { invalid() }

                let dataArea := array_dataslot_t_array$_t_address_payable_$dyn_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

    }

}


