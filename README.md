# quantum-break-autosplitter
a loadless autosplitter for quantum break speedrunning.

eventually I'll add this to the livesplit autosplitter XML, but for now you can download it here.

PLEASE NOTE:
- this autosplitter assumes the only splits in your layout are at the end of each part.
- this autosplitter also assumes you have the Steam version of the game. I don't currently own the Microsoft Store version.
  - I'll try to write around this in a future update, but the pointer values may be different, and autosplitter documentation on defining versions is a bit...vague.
- currently, you have to do the end split manually. this may change in a later version.

HOW TO USE:
1. download the .asl file.
2. open quantum break. **&ast;**
3. open livesplit.
4. add "scriptable auto splitter" to your layout.
5. double-click it in the layout window.
6. click browse.
7. select the .asl file.
8. change your Timer, Splits, and whatever else you'd like to use Game Time instead of RTA. (also: consider adding a separate, smaller RTA timer under your loadless timer.)
9. close the layout windows and you're done! happy running!

KNOWN ISSUES:
- occasionally the timer does not pause during a skipped cutscene load
  - this is less of a big deal than it seems! those loads are consistent regardless of computer/settings. imo, in those cases, the game's not actually loading much of anything; the "load" is mostly there as a spacer.
- in semi-rare cases, the timer briefly pauses during gameplay
  - near as I can tell, the address that I'm accessing for loads is actually indicating the results of a *check* for whether a certain area/state is loaded. this means it occasionally picks up dynamic loads from time to time, but thankfully only for about a second. I've managed to minimize the impact of this as best I can, so that it only pauses for a fraction of a second on the majority of these. if I can find an address just for loss-of-control loads, and *only* loss-of-control loads, I'll change it entirely, but for now this is good enough for v0.x.
- exiting to main menu during a run *may* break the level splits
  - you're not wrong, but I don't personally think this is high priority. quitting to menu will not give you a PB. I will curse my lack of foresight if we find a glitch that requires this.
  - the script *does,* however, still work just fine if you reset and start a new game.
- the timer doesn't stop on last input
  - yeah. I apologize, I'm still looking for that address. will be fixed in the next version. for now that's a manual split.
- on your 186737th run in a row without closing the game, the script stops working
  - if you're doing over 100k runs in a row, you have bigger problems than my decision to set the `counter` variable to a 32-bit unsigned integer.
  
  
  **&ast;** *in general, you should open the game before you initialize the autosplitter. livesplit claims it'll automatically hook onto the process but I've never had any luck with that.*
