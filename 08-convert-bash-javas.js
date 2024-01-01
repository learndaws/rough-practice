const { execSync } = require('child_process');

const rootAccessCheck = parseInt(execSync('id -u').toString().trim());

function exitCheck(code, failureMessage, successMessage) {
    if (code !== 0) {
        console.log(`FAILURE-2: ${failureMessage}`);
        process.exit(1);
    } else {
        console.log(`SUCCESS-2: ${successMessage}`);
    }
}

exitCheck(rootAccessCheck, "you don't have root access", "you have root access");

try {
    execSync('yum install mysql -y');
    exitCheck(0, "Mysql installation is failed", "Mysql installation is success");
} catch (error) {
    exitCheck(1, "Mysql installation is failed", "Mysql installation is success");
}

try {
    execSync('yum install git -y');
    exitCheck(0, "git installation is failed", "git installation is success");
} catch (error) {
    exitCheck(1, "git installation is failed", "git installation is success");
}
