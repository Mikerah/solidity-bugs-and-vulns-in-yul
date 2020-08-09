object "RaceCondition_144" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        let _1, _2 := copy_arguments_for_constructor_95_object_RaceCondition_144()
        constructor_RaceCondition_144(_1, _2)

        codecopy(0, dataoffset("RaceCondition_144_deployed"), datasize("RaceCondition_144_deployed"))

        return(0, datasize("RaceCondition_144_deployed"))

        function abi_decode_t_contract$_ERC20_$68_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_contract$_ERC20_$68(value)
        }

        function abi_decode_t_uint256_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint256(value)
        }

        function abi_decode_tuple_t_uint256t_contract$_ERC20_$68_fromMemory(headStart, dataEnd) -> value0, value1 {
            if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }

            {
                let offset := 0
                value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
            }

            {
                let offset := 32
                value1 := abi_decode_t_contract$_ERC20_$68_fromMemory(add(headStart, offset), dataEnd)
            }

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

        function cleanup_t_contract$_ERC20_$68(value) -> cleaned {
            cleaned := cleanup_t_address(value)
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function constructor_RaceCondition_144(vloc__price_76, vloc__token_78_address) {

            let expr_83 := caller()
            let _3 := convert_t_address_payable_to_t_address(expr_83)
            update_storage_value_offset_0t_address(0x00, _3)
            let expr_84 := _3
            let _4 := vloc__price_76
            let expr_87 := _4
            update_storage_value_offset_0t_uint256(0x01, expr_87)
            let expr_88 := expr_87
            let _5_address := vloc__token_78_address
            let expr_91_address := _5_address
            update_storage_value_offset_0t_contract$_ERC20_$68(0x02, expr_91_address)
            let expr_92_address := expr_91_address

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

        function copy_arguments_for_constructor_95_object_RaceCondition_144() -> ret_param_0, ret_param_1 {
            let programSize := datasize("RaceCondition_144")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocateMemory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1 := abi_decode_tuple_t_uint256t_contract$_ERC20_$68_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function prepare_store_t_address(value) -> ret {
            ret := value
        }

        function prepare_store_t_contract$_ERC20_$68(value) -> ret {
            ret := value
        }

        function prepare_store_t_uint256(value) -> ret {
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

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_address(slot, value) {
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(value)))
        }

        function update_storage_value_offset_0t_contract$_ERC20_$68(slot, value) {
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_ERC20_$68(value)))
        }

        function update_storage_value_offset_0t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

        function validator_revert_t_contract$_ERC20_$68(value) {
            if iszero(eq(value, cleanup_t_contract$_ERC20_$68(value))) { revert(0, 0) }
        }

        function validator_revert_t_uint256(value) {
            if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
        }

    }
    object "RaceCondition_144_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xa035b1fe
                {
                    // price()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_price_72()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa2b40d19
                {
                    // changePrice(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_changePrice_143(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd96a094a
                {
                    // buy(uint256)

                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_buy_126(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)

            function abi_decode_t_bool_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple_t_bool_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_address_payable_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_address_payable_to_t_address(value))
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_address_payable_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_payable_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

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

            function cleanup_from_storage_split_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_t_contract$_ERC20_$68(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
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

            function convert_t_contract$_ERC20_$68_to_t_address(value) -> converted {
                converted := convert_t_contract$_ERC20_$68_to_t_uint160(value)
            }

            function convert_t_contract$_ERC20_$68_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
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

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_contract$_ERC20_$68(slot_value) -> value {
                value := cleanup_from_storage_t_contract$_ERC20_$68(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_buy_126(vloc_new_price_97) {

                let expr_102 := callvalue()
                let _1 := read_from_storage_offset_0_t_uint256(0x01)
                let expr_103 := _1
                let expr_104 := iszero(lt(cleanup_t_uint256(expr_102), cleanup_t_uint256(expr_103)))
                require_helper(expr_104)
                let _2_address := read_from_storage_offset_0_t_contract$_ERC20_$68(0x02)
                let expr_107_address := _2_address
                let expr_109_address := convert_t_contract$_ERC20_$68_to_t_address(expr_107_address)
                let expr_109_functionSelector := 0x23b872dd
                let expr_111 := caller()
                let _3 := read_from_storage_offset_0_t_address(0x00)
                let expr_112 := _3
                let _4 := read_from_storage_offset_0_t_uint256(0x01)
                let expr_113 := _4

                if iszero(extcodesize(expr_109_address)) { revert(0, 0) }

                // storage for arguments and returned data
                let _5 := mload(64)
                mstore(_5, shift_left_224(expr_109_functionSelector))
                let _6 := abi_encode_tuple_t_address_payable_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_5, 4) , expr_111, expr_112, expr_113)

                let _7 := call(gas(), expr_109_address,  0,  _5, sub(_6, _5), _5, 32)

                if iszero(_7) { revert_forward_1() }

                let expr_114
                if _7 {

                    // update freeMemoryPointer according to dynamic return size
                    mstore(64, add(_5, round_up_to_mul_of_32(returndatasize())))

                    // decode return parameters from external try-call into retVars
                    expr_114 :=  abi_decode_tuple_t_bool_fromMemory(_5, add(_5, returndatasize()))
                }
                let _8 := vloc_new_price_97
                let expr_117 := _8
                update_storage_value_offset_0t_uint256(0x01, expr_117)
                let expr_118 := expr_117
                let expr_122 := caller()
                let _9 := convert_t_address_payable_to_t_address(expr_122)
                update_storage_value_offset_0t_address(0x00, _9)
                let expr_123 := _9

            }

            function fun_changePrice_143(vloc_new_price_128) {

                let expr_133 := caller()
                let _10 := read_from_storage_offset_0_t_address(0x00)
                let expr_134 := _10
                let expr_135 := eq(convert_t_address_payable_to_t_address(expr_133), cleanup_t_address(expr_134))
                require_helper(expr_135)
                let _11 := vloc_new_price_128
                let expr_139 := _11
                update_storage_value_offset_0t_uint256(0x01, expr_139)
                let expr_140 := expr_139

            }

            function getter_fun_price_72() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_storage_dynamicsplit__t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_uint256(sload(slot), offset)
            }

            function read_from_storage_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))
            }

            function read_from_storage_offset_0_t_contract$_ERC20_$68(slot) -> value {
                value := extract_from_storage_value_offset_0t_contract$_ERC20_$68(sload(slot))
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

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

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

            function update_storage_value_offset_0t_address(slot, value) {
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(value)))
            }

            function update_storage_value_offset_0t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

        }

    }

}


