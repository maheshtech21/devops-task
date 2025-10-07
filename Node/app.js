const http = require('http');
const port = process.env.PORT || 8080;

const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello, World! from AKS!!\n');
});

server.listen(port, '0.0.0.0', () => {
  console.log(`Server running on port ${port}`);
});