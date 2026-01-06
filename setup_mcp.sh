#!/bin/bash

echo "🚀 Activation de l'intégration MCP complète + Pont ChatGPT-Manus..."

# 1. Créer le répertoire de config MCP
mkdir -p ~/.mcp

# 2. Créer une configuration étendue avec le pont Manus
cat > ~/.mcp/config.json << 'MCP_CONF'
{
  "mcpServers": {
    "manus-bridge": {
      "command": "npx",
      "args": ["-y", "@manus/mcp-bridge-server"],
      "env": {
        "MANUS_API_KEY": "votre_cle_manus_ici"
      }
    },
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
    },
    "google-drive": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-google-drive"]
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"]
    },
    "brave-search": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-brave-search"]
    }
  }
}
MCP_CONF

echo "✅ Pont ChatGPT-Manus configuré via 'manus-bridge'"
echo "✅ Autres serveurs MCP configurés"
echo ""
echo "🚀 Intégration MCP complète activée !"
