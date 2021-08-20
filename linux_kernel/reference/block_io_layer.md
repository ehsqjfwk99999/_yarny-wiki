Linux Kernel : Block I/O Layer
==============================

Terminology
-----------
|Term|Definition|
|:--:|:--------:|
| sector | Smallest addressable unit on block device. |
| block | Smallest addressable unit on software. |
| buffer | Object that represents a disk block in memory. |
| segment | Chunk of buffer that is contiguous in memory. |

Flags
-----
- [bh_state_bits](https://elixir.bootlin.com/linux/latest/A/ident/bh_state_bits)

Structures
----------
- [struct bio](https://elixir.bootlin.com/linux/latest/A/ident/bio)
    ```c
    /*
     * struct bio
     * Location : linux/include/linux/blk_types.h
     */
    ```
- [struct buffer_head](https://elixir.bootlin.com/linux/latest/A/ident/buffer_head)
    ```c
    /*
     * struct buffer_head
     * Location : linux/include/linux/buffer_head.h
     */
    ```
- [struct bio_vec](https://elixir.bootlin.com/linux/latest/A/ident/bio_vec)
    ```c
    /*
     * struct bio_vec
     * Location : linux/include/linux/bvec.h
     */
    ```
- [struct request_queue](https://elixir.bootlin.com/linux/latest/A/ident/request_queue)
    ```c
    /*
     * struct request_queue
     * Location : linux/include/linux/blkdev.h
     */
    ```
- [struct request](https://elixir.bootlin.com/linux/latest/A/ident/request)
    ```c
    /*
     * struct request
     * Location : linux/include/linux/blkdev.h
     */
    ```

Functions
---------
- [get_bh](https://elixir.bootlin.com/linux/latest/A/ident/get_bh)
    ```c
    /*
     * get_bh
     * Location : linux/include/linux/buffer_head.h
     */
    ```
- [put_bh](https://elixir.bootlin.com/linux/latest/A/ident/put_bh)
    ```c
    /*
     * put_bh
     * Location : linux/include/linux/buffer_head.h
     */
    ```
- [bio_get](https://elixir.bootlin.com/linux/latest/A/ident/bio_get)
    ```c
    /*
     * bio_get
     * Location : linux/include/linux/bio.h
     */
    ```
- [bio_put](https://elixir.bootlin.com/linux/latest/A/ident/bio_put)
    ```c
    /*
     * bio_put
     * Location : linux/include/linux/bio.h
     */
    ```

I/O Scehduler
-------------
- [Linus Elevator](https://elixir.bootlin.com/linux/latest/source/block/elevator.c)
    ```c
    /*
     * Linus Elevator
     * Location : linux/block/elevator.c
     */
    ```