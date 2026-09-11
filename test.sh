#!/bin/bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2026 coccinella-labs
# Repository: https://github.com/coccinella-labs

# Test suite for theme.sh

echo "🧪 Testing theme.sh..."

# Test 1: Status when off
echo "Test 1: Initial status"
./theme.sh status

# Test 2: Apply theme
echo -e "\nTest 2: Apply theme"
./theme.sh apply

# Test 3: Status when on
echo -e "\nTest 3: Status after apply"
./theme.sh status

# Test 4: Double apply (should prevent)
echo -e "\nTest 4: Double apply prevention"
./theme.sh apply

# Test 5: Toggle off
echo -e "\nTest 5: Toggle off"
./theme.sh undo

# Test 6: Toggle behavior
echo -e "\nTest 6: Toggle on"
./theme.sh toggle
./theme.sh status

echo -e "\nTest 7: Toggle off"
./theme.sh toggle
./theme.sh status

# Test 8: Help
echo -e "\nTest 8: Help message"
./theme.sh help

echo -e "\n✅ All tests completed!"
