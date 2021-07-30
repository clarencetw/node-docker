const util = require('util');
const exec = util.promisify(require('child_process').exec);

async function dockerVersion() {
  const { stdout, stderr } = await exec('docker version');
  console.log('stdout:', stdout);
  console.log('stderr:', stderr);
}
dockerVersion();
