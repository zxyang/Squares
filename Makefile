Grid.min.js: util.js Grid.ts Core.ts Tile.ts Map.ts
	tsc --out . Grid.ts Core.ts Tile.ts Map.ts
	browserify -o Grid.bro.js --exports require Grid.js
	cat util.js Grid.bro.js | jsmin >$@
