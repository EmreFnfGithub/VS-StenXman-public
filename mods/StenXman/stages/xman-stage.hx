var stage:Stage = null;
function create() {
	stage = loadStage('xman-stage');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}