#! /bin/bash

echo "Initializing ftrace ..."
echo 0 >/sys/kernel/debug/tracing/tracing_on
echo "tracing off"
echo function >/sys/kernel/debug/tracing/current_tracer
echo "tracer init"
echo >/sys/kernel/debug/tracing/set_ftrace_filter
echo "filter init"
echo 0 >/sys/kernel/debug/tracing/events/enable
echo "events init"
sleep 1
echo -e "Done\n"

echo "Settings ftrace ..."
# echo  > /sys/kernel/debug/tracing/current_tracer
echo "tracer set"
# Set filter
echo "filter set"
# Set events
echo "events set"
# Set options
echo "options set"
sleep 1
echo -e "Done\n"

echo "Start tracing ..."
echo 1 >/sys/kernel/debug/tracing/tracing_on
# Things to trace
echo 0 >/sys/kernel/debug/tracing/tracing_on
sleep 2
echo -e "Done\n"

echo "Extracting trace log ..."
cp /sys/kernel/debug/tracing/trace .
mv trace trace.log
sleep 1
echo -e "Done\n"

echo -e "Tracing kernel finished\n"
