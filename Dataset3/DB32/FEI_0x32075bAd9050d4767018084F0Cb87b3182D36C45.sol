// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.8.4
///
/// @notice           This contract was decompiled using the heimdall-rs decompiler.
///                     It was generated directly by tracing the EVM opcodes from this contract.
///                     As a result, it may not compile or even be valid solidity code.
///                     Despite this, it should be obvious what each function does. Overall
///                     logic should have been preserved throughout decompiling.
///
/// @custom:github    You can find the open-source decompiler here:
///                       https://heimdall.rs

contract DecompiledContract {
    address public unresolved_5fe3b567;
    address public unresolved_cc14d688;
    address store_b;
    address public unresolved_741bef1a;
    uint256 public unresolved_2986c0e5;
    
    event Event_ed372f12();
    
    /// @custom:selector    0x1e83409a
    /// @custom:signature   Unresolved_1e83409a(address arg0) public
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_1e83409a(address arg0) public {
        require(arg0 == (address(arg0)));
        require(0x6162759edad730152f0df8115c698a42e666157f == msg.sender);
        require(!0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == (address(arg0)));
        var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        address var_b = address(this);
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).staticcall{ gas: gasleft() }(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        uint256 var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        var_d = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
        uint256 var_e = var_c.length;
        require(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).code.length);
        (bool success, bytes memory ret0) = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call{ gas: gasleft(), value: 0 }(abi.encode(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: 0x08fc * !address(this).balance, value: address(this).balance }(abi.encode());
        var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        var_b = address(this);
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).staticcall{ gas: gasleft() }(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!(((var_c + ret0.length) - var_c) < 0x20), "Address: insufficient balance for call");
        address var_f = address(msg.sender);
        uint256 var_g = var_c.length;
        uint256 var_d = ((0x40 + (0x24 + var_c)) - var_c) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
        var_c = 0x40 + (0x24 + var_c);
        uint224 var_h = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_i));
        var_c = 0x40 + var_c;
        var_j = 0x20;
        var_k = 0x5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c6564;
        require(!(address(this).balance < 0), "Address: insufficient balance for call");
        var_l = 0x08c379a000000000000000000000000000000000000000000000000000000000;
        var_m = 0x20;
        var_n = 0x26;
        var_o = 0x416464726573733a20696e73756666696369656e742062616c616e636520666f;
        var_p = 0x722063616c6c0000000000000000000000000000000000000000000000000000;
        require(!(!address(arg0).code.length), "Address: call to non-contract");
        var_l = 0x08c379a000000000000000000000000000000000000000000000000000000000;
        var_m = 0x20;
        var_n = 0x1d;
        var_o = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
        require(!0 > var_c.length);
        uint256 var_o = 0;
        (bool success, bytes memory ret0) = address(arg0).call{ gas: gasleft(), value: var_o }(abi.encode(0x08c379a000000000000000000000000000000000000000000000000000000000));
        require(ret0.length == 0);
        require(!var_q);
        var_l = 0x08c379a000000000000000000000000000000000000000000000000000000000;
        var_m = 0x20;
        uint256 var_n = var_c.length;
        require(!(0 > var_c.length), "");
        uint256 var_p = 0;
        var_o = var_r;
        require(!var_q, "SafeERC20: ERC20 operation did not succeed");
        require(!(((0x80 + var_q) - 0x80) < 0x20), "SafeERC20: ERC20 operation did not succeed");
        require(var_a == var_a, "SafeERC20: ERC20 operation did not succeed");
        require(var_a, "SafeERC20: ERC20 operation did not succeed");
        var_l = 0x08c379a000000000000000000000000000000000000000000000000000000000;
        var_m = 0x20;
        var_n = 0x2a;
        var_o = 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e;
        var_p = 0x6f74207375636365656400000000000000000000000000000000000000000000;
        var_c = var_c + (uint248(ret0.length + 0x3f));
        uint256 var_l = ret0.length;
        require(!var_c.length);
        require(!var_c.length);
    }
    
    /// @custom:selector    0x1c1b8772
    /// @custom:signature   Unresolved_1c1b8772(address arg0) public
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_1c1b8772(address arg0) public {
        require(arg0 == (address(arg0)));
        require(0x6162759edad730152f0df8115c698a42e666157f == msg.sender);
        store_b = (address(arg0)) | (uint96(store_b));
        address var_a = address(arg0 | (uint96(store_b)));
        emit Event_ed372f12(address(arg0 | (uint96(store_b))));
    }
    
    /// @custom:selector    0xbe6002c2
    /// @custom:signature   Unresolved_be6002c2(address arg0, uint256 arg1) public returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_be6002c2(address arg0, uint256 arg1) public returns (bool) {
        require(arg0 == (address(arg0)));
        require(!arg1 > 0xffffffffffffffff);
        require(!(arg1) > 0xffffffffffffffff);
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        var_b = 0x41;
        require(!((var_c + (uint248((0x20 + (arg1 + 0x1f)) + 0x1f))) < var_c) | ((var_c + (uint248((0x20 + (arg1 + 0x1f)) + 0x1f))) > 0xffffffffffffffff));
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        var_b = 0x41;
        uint256 var_c = var_c + (uint248((0x20 + (arg1 + 0x1f)) + 0x1f));
        uint256 var_d = (arg1);
        var_e = msg.data[36:36];
        uint256 var_f = 0;
        require(0x6162759edad730152f0df8115c698a42e666157f == msg.sender);
        require(!0 > var_c.length);
        var_f = 0;
        (bool success, bytes memory ret0) = address(arg0).call{ gas: gasleft(), value: var_f }(abi.encode());
        require(ret0.length == 0);
        var_f = success;
        return success;
        var_c = var_c + (uint248(ret0.length + 0x3f));
        var_f = ret0.length;
        var_g = success;
        return success;
    }
    
    /// @custom:selector    0xf04f2707
    /// @custom:signature   Unresolved_f04f2707(uint256 arg0, address arg1) public pure
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_f04f2707(uint256 arg0, address arg1) public pure {
        require(!arg0 > 0xffffffffffffffff);
        require(!(arg0) > 0xffffffffffffffff);
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        var_b = 0x41;
        require(!((var_c + (uint248(((0x20 * (arg0)) + 0x20) + 0x1f))) < var_c) | ((var_c + (uint248(((0x20 * (arg0)) + 0x20) + 0x1f))) > 0xffffffffffffffff));
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        var_b = 0x41;
        uint256 var_c = var_c + (uint248(((0x20 * (arg0)) + 0x20) + 0x1f));
        uint256 var_d = (arg0);
        require(!0 < (arg0));
        require((0x20 + (arg0)) == (address(0x20 + (arg0))));
        require(!arg1 > 0xffffffffffffffff);
    }
    
    /// @custom:selector    0x349b4736
    /// @custom:signature   Unresolved_349b4736(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_349b4736(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x34930754
    /// @custom:signature   Unresolved_34930754(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_34930754(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
}