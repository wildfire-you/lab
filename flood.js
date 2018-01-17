var reporting = require('v2p-reporting');
 
function createAlarm(status, nameIndex, alarmIndex) {
    var alarm = {
        name: 'e' + nameIndex,
        displayName: 'Disk Failure',
        displaySource: 'Raid 0, Disk 1',
        severity: 'major',
        type: 'hardward',
        subtype: 'disk',
        time: 8888800000 + alarmIndex,
        details:{
            desc: 'disk write failure'
        },
        location:{
            host: 'node-1',
            source: '/dev/sda'
        },
        app:{
            type: 'cisco-cos',
            instance: 'cos-0',
            role: 'cos'
        },
        vendors:{
            key1: 'value1',
            key2: 'value2'
        }
    };
 
    reporting.alarm[status](alarm, function(err) {
        if (err) {
            console.log(err);
        }
    });
}
 
var alarmIndex = 1;
var nameIndex = 1;
setInterval(function() {
    if ( alarmIndex % 50 == 0 ) {
	console.log("######## alarmIdex : %d", alarmIndex);
    }
    if (alarmIndex > 100000000) {
          process.exit(0);
    }
    if (nameIndex > 2000) {
        nameIndex = 1;
    }
//    var status = (alarmIndex <= 8000) ? 'raise' : 'clear';
//    var status = ((alarmIndex%20)%2) ? 'raise' : 'clear';
    var status = 'raise';
    createAlarm(status, nameIndex++, alarmIndex++);
}, 10);
 

