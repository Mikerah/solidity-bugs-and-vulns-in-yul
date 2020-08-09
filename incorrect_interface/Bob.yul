object "Bob_37" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_Bob_37()

        codecopy(0, dataoffset("Bob_37_deployed"), datasize("Bob_37_deployed"))

        return(0, datasize("Bob_37_deployed"))

        function constructor_Bob_37() {

        }

    }
    object "Bob_37_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x2801617e
                {
                    // set(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_contract$_Alice_$12(4, calldatasize())
                    fun_set_24(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90b2290e
                {
                    // set_fixed(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_contract$_Alice_$12(4, calldatasize())
                    fun_set_fixed_36(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)

            function abi_decode_t_contract$_Alice_$12(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_contract$_Alice_$12(value)
            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple_t_contract$_Alice_$12(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_contract$_Alice_$12(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_rational_42_by_1_to_t_int256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_42_by_1_to_t_int256(value))
            }

            function abi_encode_t_rational_42_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_42_by_1_to_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_rational_42_by_1__to_t_int256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_42_by_1_to_t_int256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_rational_42_by_1__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_42_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

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

            function cleanup_t_contract$_Alice_$12(value) -> cleaned {
                cleaned := cleanup_t_address(value)
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_contract$_Alice_$12_to_t_address(value) -> converted {
                converted := convert_t_contract$_Alice_$12_to_t_uint160(value)
            }

            function convert_t_contract$_Alice_$12_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_42_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(value)
            }

            function convert_t_rational_42_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function fun_set_24(vloc_c_14_address) {

                let _1_address := vloc_c_14_address
                let expr_17_address := _1_address
                let expr_19_address := convert_t_contract$_Alice_$12_to_t_address(expr_17_address)
                let expr_19_functionSelector := 0x60fe47b1
                let expr_20 := 0x2a

                if iszero(extcodesize(expr_19_address)) { revert(0, 0) }

                // storage for arguments and returned data
                let _2 := mload(64)
                mstore(_2, shift_left_224(expr_19_functionSelector))
                let _3 := abi_encode_tuple_t_rational_42_by_1__to_t_uint256__fromStack(add(_2, 4) , expr_20)

                let _4 := call(gas(), expr_19_address,  0,  _2, sub(_3, _2), _2, 0)

                if iszero(_4) { revert_forward_1() }

                if _4 {

                    // update freeMemoryPointer according to dynamic return size
                    mstore(64, add(_2, round_up_to_mul_of_32(returndatasize())))

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_2, add(_2, returndatasize()))
                }

            }

            function fun_set_fixed_36(vloc_c_26_address) {

                let _5_address := vloc_c_26_address
                let expr_29_address := _5_address
                let expr_31_address := convert_t_contract$_Alice_$12_to_t_address(expr_29_address)
                let expr_31_functionSelector := 0xa5d5e465
                let expr_32 := 0x2a

                if iszero(extcodesize(expr_31_address)) { revert(0, 0) }

                // storage for arguments and returned data
                let _6 := mload(64)
                mstore(_6, shift_left_224(expr_31_functionSelector))
                let _7 := abi_encode_tuple_t_rational_42_by_1__to_t_int256__fromStack(add(_6, 4) , expr_32)

                let _8 := call(gas(), expr_31_address,  0,  _6, sub(_7, _6), _6, 0)

                if iszero(_8) { revert_forward_1() }

                if _8 {

                    // update freeMemoryPointer according to dynamic return size
                    mstore(64, add(_6, round_up_to_mul_of_32(returndatasize())))

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_6, add(_6, returndatasize()))
                }

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

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function validator_revert_t_contract$_Alice_$12(value) {
                if iszero(eq(value, cleanup_t_contract$_Alice_$12(value))) { revert(0, 0) }
            }

        }

    }

}


