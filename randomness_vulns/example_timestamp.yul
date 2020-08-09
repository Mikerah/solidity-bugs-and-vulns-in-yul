object "EtherLotto_78" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_EtherLotto_78()

        codecopy(0, dataoffset("EtherLotto_78_deployed"), datasize("EtherLotto_78_deployed"))

        return(0, datasize("EtherLotto_78_deployed"))

        function constructor_EtherLotto_78() {

            let expr_17 := caller()
            update_storage_value_offset_0t_address_payable(0x00, expr_17)
            let expr_18 := expr_17

        }

        function prepare_store_t_address_payable(value) -> ret {
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

        function update_storage_value_offset_0t_address_payable(slot, value) {
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address_payable(value)))
        }

    }
    object "EtherLotto_78_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x4ba2363a
                {
                    // pot()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_pot_12()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x76cdb03b
                {
                    // bank()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_bank_10()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address_payable__to_t_address_payable__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x93e84cd9
                {
                    // play()

                    abi_decode_tuple_(4, calldatasize())
                    fun_play_77()
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

            function abi_encode_t_address_payable_to_t_address_payable_fromStack(value, pos) {
                mstore(pos, cleanup_t_address_payable(value))
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_address_payable__to_t_address_payable__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_payable_to_t_address_payable_fromStack(value0,  add(headStart, 0))

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

            function allocateTemporaryMemory() -> memPtr {
                memPtr := mload(64)
            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function assert_helper(condition) {
                if iszero(condition) { invalid() }
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { revert(0, 0) }

                sum := add(x, y)
            }

            function checked_mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { revert(0, 0) }
                r := mod(x, y)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { revert(0, 0) }

                diff := sub(x, y)
            }

            function cleanup_from_storage_split_t_address_payable(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
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

            function cleanup_t_address_payable(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function constant_FEE_AMOUNT_8() -> ret {
                let expr_7 := 0x01
                let _7 := convert_t_rational_1_by_1_to_t_uint256(expr_7)

                ret := _7
            }

            function constant_TICKET_AMOUNT_5() -> ret {
                let expr_4 := 0x0a
                let _1 := convert_t_rational_10_by_1_to_t_uint256(expr_4)

                ret := _1
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function extract_from_storage_value_dynamicsplit_t_address_payable(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_address_payable(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_dynamicsplit_t_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_address_payable(slot_value) -> value {
                value := cleanup_from_storage_t_address_payable(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_play_77() {

                let expr_26 := callvalue()
                let expr_27 := constant_TICKET_AMOUNT_5()
                let expr_28 := eq(cleanup_t_uint256(expr_26), cleanup_t_uint256(expr_27))
                assert_helper(expr_28)
                let expr_33 := callvalue()
                let _2 := read_from_storage_offset_0_t_uint256(0x01)
                expr_33 := checked_add_t_uint256(_2, expr_33)
                update_storage_value_offset_0t_uint256(0x01, expr_33)
                let expr_34 := expr_33
                let expr_44 := timestamp()

                let expr_45_mpos := allocateTemporaryMemory()
                let _3 := add(expr_45_mpos, 0x20)

                let _4 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_3, expr_44)
                mstore(expr_45_mpos, sub(_4, add(expr_45_mpos, 0x20)))
                mstore(64, round_up_to_mul_of_32(_4))
                let expr_46 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_45_mpos), array_length_t_bytes_memory_ptr(expr_45_mpos))
                let expr_47 := convert_t_bytes32_to_t_uint256(expr_46)
                let expr_48 := 0x02
                let expr_49 := checked_mod_t_uint256(expr_47, convert_t_rational_2_by_1_to_t_uint256(expr_48))

                let vloc_random_37 := expr_49
                let _5 := vloc_random_37
                let expr_51 := _5
                let expr_52 := 0x00
                let expr_53 := eq(cleanup_t_uint256(expr_51), convert_t_rational_0_by_1_to_t_uint256(expr_52))
                if expr_53 {
                    let _6 := read_from_storage_offset_0_t_address_payable(0x00)
                    let expr_54 := _6
                    let expr_56_address := convert_t_address_payable_to_t_address(expr_54)
                    let expr_57 := constant_FEE_AMOUNT_8()

                    let _8 := 0
                    if iszero(expr_57) { _8 := 2300 }
                    let _9 := call(_8, expr_56_address, expr_57, 0, 0, 0, 0)

                    if iszero(_9) { revert_forward_1() }

                    let expr_63 := caller()
                    let expr_64_address := convert_t_address_payable_to_t_address(expr_63)
                    let _10 := read_from_storage_offset_0_t_uint256(0x01)
                    let expr_65 := _10
                    let expr_66 := constant_FEE_AMOUNT_8()
                    let expr_67 := checked_sub_t_uint256(expr_65, expr_66)

                    let _11 := 0
                    if iszero(expr_67) { _11 := 2300 }
                    let _12 := call(_11, expr_64_address, expr_67, 0, 0, 0, 0)

                    if iszero(_12) { revert_forward_1() }

                    let expr_71 := 0x00
                    let _13 := convert_t_rational_0_by_1_to_t_uint256(expr_71)
                    update_storage_value_offset_0t_uint256(0x01, _13)
                    let expr_72 := _13
                }

            }

            function getter_fun_bank_10() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_address_payable(slot, offset)

            }

            function getter_fun_pot_12() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_storage_dynamicsplit__t_address_payable(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_address_payable(sload(slot), offset)
            }

            function read_from_storage_dynamicsplit__t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_uint256(sload(slot), offset)
            }

            function read_from_storage_offset_0_t_address_payable(slot) -> value {
                value := extract_from_storage_value_offset_0t_address_payable(sload(slot))
            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function revert_forward_1() {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
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

            function update_storage_value_offset_0t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

        }

    }

}


