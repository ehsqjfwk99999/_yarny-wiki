BtrFS Fragments
===============

Functions
---------

- BTRFS_I()
```c
/**
 * Return the address of btrfs_inode structure that the inode belongs to.
 */

static inline struct btrfs_inode *BTRFS_I(const struct inode *inode)
{
    return container_of(inode, struct btrfs_inode, vfs_inode);
}
```