# Crossing Guard

> A gem for simple, periodic, management of crons and shell calls.

Crossing Guard is simple way to wait unix commands, usually while other resource-heavy 
processes are running.  Crossing Guard will de-dupe the waiting processes before running the queue.

**Crossing Guard does not daemonize itself**.  If you do not have a regular process 
that will call Crossing Guard (e.g. to try new jobs), then you must run it 'blank' via cron 
or other daemon(ization).

Examples will come in time; for now, see the *tiny* source.

# Roadmap

* clearing of queue(s) after a fixed interval. hour, or date.
* regex-based wait queues.

## Related Projects

* [rufus-scheduler](https://github.com/jmettraux/rufus-scheduler): Cron Inside Ruby
* [whenever](https://github.com/javan/whenever): Ruby makes unix crons
* [launchd](http://nb.nathanamy.org/2012/07/schedule-jobs-using-launchd/): Record and replay launchd-crons even when in sleep mode
* [daemons](http://daemons.rubyforge.org/): Daemonize any processes
