# Morpheus

> A gem for simple, periodic, management of crons and CLI jobs.

Morpheus is simple way to sleep unix commands (things run via shell), and 
replay everything when wake-up time arrives. 

**Morphus does not daemonize itself**.  If you do not have a regular process 
that will call Morpheus to try jobs, then you  must run it 'blank' via cron 
or other daemon(ization).

Examples will come in-time; for now, see the *tiny* source.

## Related Projects

* [rufus-scheduler](https://github.com/jmettraux/rufus-scheduler): Cron Inside Ruby
* [whenever](https://github.com/javan/whenever): Ruby makes unix crons
* [launchd](http://nb.nathanamy.org/2012/07/schedule-jobs-using-launchd/): Record and replay launchd-crons even when in sleep mode
* [daemons](http://daemons.rubyforge.org/): Daemonize processes
