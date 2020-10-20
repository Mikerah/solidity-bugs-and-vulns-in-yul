
object "HashForEther_35" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_HashForEther_35()

        codecopy(0, dataoffset("HashForEther_35_deployed"), datasize("HashForEther_35_deployed"))

        return(0, datasize("HashForEther_35_deployed"))

        function constructor_HashForEther_35() {

        }

    }
    object "HashForEther_35_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xcc42e83a
                {
                    // withdrawWinnings()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_withdrawWinnings_18()
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
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_address_payable_to_t_uint32(value) -> converted {
                converted := convert_t_uint160_to_t_uint32(value)
            }

            function convert_t_contract$_HashForEther_$35_to_t_address(value) -> converted {
                converted := convert_t_contract$_HashForEther_$35_to_t_uint160(value)
            }

            function convert_t_contract$_HashForEther_$35_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(value)
            }

            function fun__sendWinnings_34() {

                let expr_24 := caller()
                let expr_25_address := convert_t_address_payable_to_t_address(expr_24)
                let expr_28_address := address()
                let expr_29 := convert_t_contract$_HashForEther_$35_to_t_address(expr_28_address)
                let expr_30 := balance(expr_29)

                let _1 := 0
                if iszero(expr_30) { _1 := 2300 }
                let _2 := call(_1, expr_25_address, expr_30, 0, 0, 0, 0)

                if iszero(_2) { revert_forward_1() }

            }

            function fun_withdrawWinnings_18() {

                let expr_8 := caller()
                let expr_9 := convert_t_address_payable_to_t_uint32(expr_8)
                let expr_10 := 0x00
                let expr_11 := eq(cleanup_t_uint32(expr_9), convert_t_rational_0_by_1_to_t_uint32(expr_10))
                require_helper(expr_11)
                let expr_14_functionIdentifier := 34
                fun__sendWinnings_34()

            }

            function panic_error() {
                invalid()
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function revert_forward_1() {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

        }

    }

}


