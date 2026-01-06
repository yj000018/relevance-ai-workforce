#!/bin/bash

echo "🔗 Activation de l'intégration MCP complète (LLMs, Web, Tools)..."

# 1. Créer le répertoire de config MCP
mkdir -p ~/.mcp

# 2. Créer une configuration étendue
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
    },
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
    },
    "everything": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-everything"]
    }
  }
}
MCP_CONF

echo "✅ Serveurs MCP configurés :"
echo "   - Productivité : Notion, Slack, Gmail, Google Drive"
echo "   - Développement : GitHub"
echo "   - Recherche : Brave Search, Fetch"
echo "   - Utilitaires : Everything"
echo ""
echo "🚀 Intégration MCP complète activée !"
