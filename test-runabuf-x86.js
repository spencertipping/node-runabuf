// A test that loops forever.
var exec = new Buffer(2);
var data = new Buffer(0);

exec[0] = 0xeb;         // x86 JMP with 8-bit relative address
exec[1] = 0xfe;         // signed byte -2

console.log('starting infinite loop...');
require('./runabuf').run(exec, data);
console.log('something went horribly wrong.');
