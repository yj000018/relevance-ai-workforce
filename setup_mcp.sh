#!/bin/bash

echo "🔗 Activation de l'intégration MCP..."

# 1. Créer le répertoire de config MCP
mkdir -p ~/.mcp

# 2. Créer une configuration de base
cat > ~/.mcp/config.json << 'MCP_CONF'
{
  "mcpServers": {
    "notion": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-notion"]
    },
    "slack": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-slack"]
    },
    "gmail": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-gmail"]
    }
  }
}
MCP_CONF

echo "✅ Serveurs MCP configurés (Notion, Slack, Gmail)"
echo "🚀 Intégration MCP activée !"
