echo "🚀 Starting ${PORT}..."
mkdir -p /etc/x-ui
cat > /etc/x-ui/config.json << EOF
{
  "webPort": ${PORT},
  "webBasePath": "/",
  "webListen": "0.0.0.0",
  "logLevel": "info"
}
EOF

cd /usr/local/x-ui
./x-ui
