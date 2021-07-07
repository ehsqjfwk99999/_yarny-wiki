File System Fragments
=====================

Functions
---------

- inode_lock() / inode_unlock()
```c
/**
 * inode_lock() / inode_unlock()
 * Location : linux/include/linux/fs.h
 */

static inline void inode_lock(struct inode *inode)
{
    down_write(&inode->i_rwsem);
}

static inline void inode_unlock(struct inode *inode)
{
    up_write(&inode->i_rwsem);
}
```
