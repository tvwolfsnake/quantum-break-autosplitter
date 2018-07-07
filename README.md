# quantum-break-autosplitter
a (mostly) loadless autosplitter for quantum break speedrunning.

eventually I'll add this to the livesplit autosplitter XML, but for now you can download it here.

KNOWN ISSUES:
- occasionally the timer does not pause during a skipped cutscene load!
  - this is less of a big deal than it seems! as far as I can tell, those loads are consistent regardless of computer/settings.
- occasionally the timer pauses during gameplay!
  - near as I can tell, the address that I'm accessing for loads is actually indicating the results of a *check* for whether a certain area/state is loaded. this means it occasionally picks up dynamic loads from time to time, but thankfully only for about a second. if I can find an address just for loss-of-control loads, and *only* loss-of-control loads, I'll change it, but for now this is good enough for v1.0.
- the timer doesn't stop on last input!
  - yeah. I'm legit sorry, I'm still looking for that address. will be fixed in the next version.
