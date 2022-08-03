// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Mapping{
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
}

    contract NestedMapping {
        mapping(address => mapping(uint => bool)) public nested;

        function get(address _addr, uint _i) public view returns (bool) {
            return nested[_addr][_i];
        }

        function set (
            address _addr1,
            uint _i,
            bool _boo
            ) public {
                nested[_addr1][_i] = _boo;
            }

            function remone(address _addr1, uint _i) public {
                delete nested[_addr1][_i];
            }
        
    }
