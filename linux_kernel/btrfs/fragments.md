BtrFS Fragments
===============

Structures
----------

- struct extent_map
```c
/**
 * Location : linux/fs/btrfs/extent_map.h
 */

struct extent_map {
    struct rb_node rb_node;
    u64 start;
    u64 len;
    u64 mod_start;
    u64 mod_len;
    u64 orig_start;
    u64 orig_block_len;
    u64 ram_bytes;
    u64 block_start;
    u64 block_len;
    u64 generation;
    unsigned long flags;
    union {
        struct block_device *bdev;
        struct map_lookup *map_lookup;
    };
    refcount_t refs;
    unsigned int compress_type;
    struct list_head list;
};
```

Functions
---------

- BTRFS_I()
```c
/**
 * Return the pointer(address) of btrfs_inode structure that the inode belongs to.
 * Location : 
 */

static inline struct btrfs_inode *BTRFS_I(const struct inode *inode)
{
    return container_of(inode, struct btrfs_inode, vfs_inode);
}
```

- btrfs_sb()
```c
/**
 * Return struct btrfs_fs_info from superblock.
 * Location : linux/fs/btrfs/ctree.h
 */

static inline struct btrfs_fs_info *btrfs_sb(struct super_block *sb)
{
    return sb->s_fs_info;
}
```