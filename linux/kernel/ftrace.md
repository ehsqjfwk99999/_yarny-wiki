Ftrace
======

Ftrace Directory
----------------

```sh
/sys/kernel/debug/tracing
```

Configuration
-------------

### - (De)Activate

```sh
# (De)Activate ftrace.
# Path : /sys/kernel/debug/tracing/tracing_on
# Default is 0(deactivated).

# Deactivate ftrace.
echo 0 > /sys/kernel/debug/tracing/tracing_on
# Activate ftrace.
echo 1 > /sys/kernel/debug/tracing/tracing_on
```

### - Tracer
```sh
# Select ftrace tracer.
# Path : /sys/kernel/debug/tracing/current_tracer
# Avaliable tracers are listed at /sys/kernel/debug/tracing/available_tracers.
# Default is nop.

# Remove all tracers.
echo nop > /sys/kernel/debug/tracing/current_tracer
# Set tracer to $TRACER.
echo $TRACER > /sys/kernel/debug/tracing/current_tracer
```

### - Events
```sh
# Select kernel subsystem action to print.
# Path : /sys/kernel/debug/tracing/events
# Available events are listed at /sys/kernel/debug/tracing/available_events.
# Funtion that print ftrace event is named "trace_"+$EVENT_NAME.

# Disable all events.
echo 0 > /sys/kernel/debug/tracing/events/enable
# Enable all events.
echo 1 > /sys/kernel/debug/tracing/events/enable
```

### - Filter
```sh
# Select funtions to trace.
# Path : /sys/kernel/debug/tracing/set_ftrace_filter.
# Available functions are listed at /sys/kernel/debug/tracing/available_filter_functions.
# Activated with function and function_graph tracer.

# Remove all filters
echo > /sys/kernel/debug/tracing/set_ftrace_filter
# Trace $FUNCTION_1 $FUNCTION_2 functions. 
echo $FUNCTION_1 $FUNCTION_2 ... > /sys/kernel/debug/tracing/set_ftrace_filter
```
```sh
# Select funtions not to be traced.
# Path : /sys/kernel/debug/tracing/set_ftrace_notrace.

echo $FUNCTION_1 $FUNCTION_2 ... > /sys/kernel/debug/tracing/set_ftrace_notrace
```

### - Options
```sh
# Ftrace options.
# Path : /sys/kernel/debug/tracing/options
# See current option at /sys/kernel/debug/tracing/trace_options.

# Enable $OPTION.
echo 1 > /sys/kernel/debug/tracing/options/$OPTION
```

Result
------

### - Trace File
```sh
# Where ftrace log is saved.
# Path : /sys/kernel/debug/tracing/trace
```

### - Per CPU
```sh
# 'per_cpu' directory contains trace per-cpu information.

# per_cpu/cpu0/trace
# Similar to 'trace', but only displays data specific for the cpu.

# per_cpu/cpu0/trace_pipe
# Similar to 'trace_pipe', but only displays data specific for the cpu.
```

Initialization Script
---------------------

```sh
#! /bin/bash

echo 0 > /sys/kernel/debug/tracing/tracing_on
echo nop > /sys/kernel/debug/tracing/current_tracer
echo 0 > /sys/kernel/debug/tracing/events/enable
echo > /sys/kernel/debug/tracing/set_ftrace_filter
```