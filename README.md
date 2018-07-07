# quantum-break-autosplitter
a (mostly) loadless autosplitter for quantum break speedrunning.

eventually I'll add this to the livesplit autosplitter XML, but for now you can download it here.

HOW TO USE:
1. open quantum break. **&ast;**
2. download the .asl file.
3. open livesplit.
4. add "scriptable auto splitter" to your layout.
5. double-click it in the layout window.
6. click browse.
7. select the .asl file.
8. close the layout windows and you're done! happy running!

(steps 2 and 4 can be skipped by instead downloading my premade quantum break layout here:
[PREMADE QUANTUM BREAK LAYOUT COMING SOON.])

KNOWN ISSUES:
- occasionally the timer does not pause during a skipped cutscene load!
  - this is less of a big deal than it seems! as far as I can tell, those loads are consistent regardless of computer/settings.
- in semi-rare cases, the timer pauses during gameplay!
  - near as I can tell, the address that I'm accessing for loads is actually indicating the results of a *check* for whether a certain area/state is loaded. this means it occasionally picks up dynamic loads from time to time, but thankfully only for about a second. it's too complex a situation to write an if statement for it, especially with the variables I have and the limitations of ASL. if I can find an address just for loss-of-control loads, and *only* loss-of-control loads, I'll change it, but for now this is good enough for v0.1.
- the timer doesn't stop on last input!
  - yeah. I'm legit sorry, I'm still looking for that address. will be fixed in the next version. for now that's a manual split.
  
  
  **&ast;** *in general, you should open the game before you initialize the autosplitter. livesplit claims it'll automatically hook onto the process but I've never had any luck with that.*
