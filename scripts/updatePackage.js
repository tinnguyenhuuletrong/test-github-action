const { execSync } = require("child_process");

function doseNeedUpdate() {
  try {
    execSync("npm outdated lodash", { stdio: "inherit" });
    return false;
  } catch (error) {
    return true;
  }
}

if (doseNeedUpdate) {
  execSync("npm update lodash --save", { stdio: "inherit" });
}
