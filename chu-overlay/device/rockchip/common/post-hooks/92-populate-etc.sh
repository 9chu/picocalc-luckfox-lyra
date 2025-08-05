#!/bin/bash -e

POST_ROOTFS_ONLY=1

source "${RK_POST_HELPER:-$(dirname "$(realpath "$0")")/../post-hooks/post-helper}"

message "Populate /etc/inittab..."
cp "$RK_SDK_DIR/buildroot/board/rockchip/rk3506/picocalc-overlay/etc/inittab" "$TARGET_DIR/etc/inittab"

message "Populate /etc/profile..."
cp "$RK_SDK_DIR/buildroot/board/rockchip/rk3506/picocalc-overlay/etc/profile" "$TARGET_DIR/etc/profile"
