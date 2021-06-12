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

# Activate ftrace.
echo 1 > /sys/kernel/debug/tracing/tracing_on
# Deactivate ftrace.
echo 0 > /sys/kernel/debug/tracing/tracing_on
```

### - Tracer
```sh
# Select ftrace tracer.
# Path : /sys/kernel/debug/tracing/current_tracer
# Avaliable tracers are listed at /sys/kernel/debug/tracing/available_tracers.
# Default is nop.

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
```

### - Filter
```sh
# Select funtions to trace.
# Path : /sys/kernel/debug/tracing/set_ftrace_filter.
# Available functions are listed at /sys/kernel/debug/tracing/available_filter_functions.
# Activated with function and function_graph tracer.

# Trace $FUNCTION_1 $FUNCTION_2 functions. 
echo $FUNCTION_1 $FUNCTION_2 ... > /sys/kernel/debug/tracing/set_ftrace_filter
```

### - Options
```sh
# Ftrace options.
# Path : /sys/kernel/debug/tracing/options

# Enable $OPTION.
echo 1 > /sys/kernel/debug/tracing/options/$OPTION
```

Log
---

### trace file
```sh
# Where ftrace log is saved.
# Path : /sys/kernel/debug/tracing/trace
```