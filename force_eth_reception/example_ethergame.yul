IR:
/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "EtherGame_134" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_EtherGame_134()

        codecopy(0, dataoffset("EtherGame_134_deployed"), datasize("EtherGame_134_deployed"))

        return(0, datasize("EtherGame_134_deployed"))

        function constructor_EtherGame_134() {

            let expr_3 := 0x29a2241af62c0000
            update_storage_value_offset_0t_uint256(0x00, expr_3)
            let expr_6 := 0x1bc16d674ec80000
            update_storage_value_offset_0t_uint256(0x01, expr_6)
            let expr_9 := 0x4563918244f40000
            update_storage_value_offset_0t_uint256(0x02, expr_9)
            let expr_12 := 0x29a2241af62c0000
            update_storage_value_offset_0t_uint256(0x03, expr_12)
            let expr_15 := 0x8ac7230489e80000
            update_storage_value_offset_0t_uint256(0x04, expr_15)
            let expr_18 := 0x4563918244f40000
            update_storage_value_offset_0t_uint256(0x05, expr_18)

        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

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
    object "EtherGame_134_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x16a1883a
                {
                    // finalMileStone()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_finalMileStone_16()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1c95cfc1
                {
                    // payoutMileStone2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_payoutMileStone2_10()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x33c2a9f8
                {
                    // payoutMileStone1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_payoutMileStone1_4()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6e1d5537
                {
                    // finalReward()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_finalReward_19()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x82d4a75c
                {
                    // mileStone1Reward()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_mileStone1Reward_7()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x8c6f3759
                {
                    // mileStone2Reward()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_mileStone2Reward_13()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x93e84cd9
                {
                    // play()

                    abi_decode_tuple_(4, calldatasize())
                    fun_play_88()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xb88a802f
                {
                    // claimReward()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_claimReward_133()
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

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { revert(0, 0) }

                sum := add(x, y)
            }

            function cleanup_from_storage_split_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
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

            function convert_t_contract$_EtherGame_$134_to_t_address(value) -> converted {
                converted := convert_t_contract$_EtherGame_$134_to_t_uint160(value)
            }

            function convert_t_contract$_EtherGame_$134_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_500000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
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

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_claimReward_133() {

                let expr_94_address := address()
                let expr_95 := convert_t_contract$_EtherGame_$134_to_t_address(expr_94_address)
                let expr_96 := balance(expr_95)
                let _21 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_97 := _21
                let expr_98 := eq(cleanup_t_uint256(expr_96), cleanup_t_uint256(expr_97))
                require_helper(expr_98)
                let _22 := 0x06
                let expr_102 := _22
                let expr_104 := caller()
                let _23 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_102,expr_104)
                let _24 := read_from_storage_offset_0_t_uint256(_23)
                let expr_105 := _24
                let expr_106 := 0x00
                let expr_107 := gt(cleanup_t_uint256(expr_105), convert_t_rational_0_by_1_to_t_uint256(expr_106))
                require_helper(expr_107)
                let _25 := 0x06
                let expr_112 := _25
                let expr_114 := caller()
                let _26 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_112,expr_114)
                let _27 := read_from_storage_offset_0_t_uint256(_26)
                let expr_115 := _27
                let vloc_transferValue_111 := expr_115
                let expr_121 := 0x00
                let _28 := convert_t_rational_0_by_1_to_t_uint256(expr_121)
                let _29 := 0x06
                let expr_117 := _29
                let expr_119 := caller()
                let _30 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_117,expr_119)
                update_storage_value_offset_0t_uint256(_30, _28)
                let expr_122 := _28
                let expr_127 := caller()
                let expr_128_address := convert_t_address_payable_to_t_address(expr_127)
                let _31 := vloc_transferValue_111
                let expr_129 := _31

                let _32 := 0
                if iszero(expr_129) { _32 := 2300 }
                let _33 := call(_32, expr_128_address, expr_129, 0, 0, 0, 0)

                if iszero(_33) { revert_forward_1() }

            }

            function fun_play_88() {

                let expr_28 := callvalue()
                let expr_29 := 0x06f05b59d3b20000
                let expr_30 := eq(cleanup_t_uint256(expr_28), convert_t_rational_500000000000000000_by_1_to_t_uint256(expr_29))
                require_helper(expr_30)
                let expr_37_address := address()
                let expr_38 := convert_t_contract$_EtherGame_$134_to_t_address(expr_37_address)
                let expr_39 := balance(expr_38)
                let expr_41 := callvalue()
                let expr_42 := checked_add_t_uint256(expr_39, expr_41)

                let vloc_currentBalance_34 := expr_42
                let _1 := vloc_currentBalance_34
                let expr_45 := _1
                let _2 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_46 := _2
                let expr_47 := iszero(gt(cleanup_t_uint256(expr_45), cleanup_t_uint256(expr_46)))
                require_helper(expr_47)
                let _3 := vloc_currentBalance_34
                let expr_50 := _3
                let _4 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_51 := _4
                let expr_52 := eq(cleanup_t_uint256(expr_50), cleanup_t_uint256(expr_51))
                switch expr_52
                case 0 {
                    let _5 := vloc_currentBalance_34
                    let expr_61 := _5
                    let _6 := read_from_storage_offset_0_t_uint256(0x02)
                    let expr_62 := _6
                    let expr_63 := eq(cleanup_t_uint256(expr_61), cleanup_t_uint256(expr_62))
                    switch expr_63
                    case 0 {
                        let _7 := vloc_currentBalance_34
                        let expr_72 := _7
                        let _8 := read_from_storage_offset_0_t_uint256(0x04)
                        let expr_73 := _8
                        let expr_74 := eq(cleanup_t_uint256(expr_72), cleanup_t_uint256(expr_73))
                        if expr_74 {
                            let _9 := read_from_storage_offset_0_t_uint256(0x05)
                            let expr_79 := _9
                            let _10 := 0x06
                            let expr_75 := _10
                            let expr_77 := caller()
                            let _11 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_75,expr_77)
                            let _12 := read_from_storage_offset_0_t_uint256(_11)
                            expr_79 := checked_add_t_uint256(_12, expr_79)
                            update_storage_value_offset_0t_uint256(_11, expr_79)
                            let expr_80 := expr_79
                        }
                    }
                    default {
                        let _13 := read_from_storage_offset_0_t_uint256(0x03)
                        let expr_68 := _13
                        let _14 := 0x06
                        let expr_64 := _14
                        let expr_66 := caller()
                        let _15 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_64,expr_66)
                        let _16 := read_from_storage_offset_0_t_uint256(_15)
                        expr_68 := checked_add_t_uint256(_16, expr_68)
                        update_storage_value_offset_0t_uint256(_15, expr_68)
                        let expr_69 := expr_68
                    }
                }
                default {
                    let _17 := read_from_storage_offset_0_t_uint256(0x01)
                    let expr_57 := _17
                    let _18 := 0x06
                    let expr_53 := _18
                    let expr_55 := caller()
                    let _19 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_53,expr_55)
                    let _20 := read_from_storage_offset_0_t_uint256(_19)
                    expr_57 := checked_add_t_uint256(_20, expr_57)
                    update_storage_value_offset_0t_uint256(_19, expr_57)
                    let expr_58 := expr_57
                }
                leave

            }

            function getter_fun_finalMileStone_16() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_finalReward_19() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_mileStone1Reward_7() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_mileStone2Reward_13() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_payoutMileStone1_4() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_payoutMileStone2_10() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_storage_dynamicsplit__t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_uint256(sload(slot), offset)
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


