var stage:Stage = null;
function create() {
	stage = loadStage('dogstage');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}