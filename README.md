# Rhinocorp AI Collaboration Hub

**Purpose:** This repository serves as the shared "brain" and synchronization point for the AI agents (Claude & Gemini) and the human operator (Florent) working on the Rhinocorp Ecosystem.

## 🧠 Shared Memory Structure

*   **`decisions/`**: Architectural Decision Records (ADRs).
*   **`logs/`**: Session logs and execution reports.
*   **`context/`**: Aggregated status files (copied from active projects).
*   **`handoffs/`**: Explicit handoff notes between agents.

## 🔄 Synchronization Protocol

1.  **Start of Session:** Run `skills/sync_down.sh` to pull the latest context.
2.  **End of Task:** Run `skills/sync_up.sh` to commit and push changes.

## 🛡️ Safety Mechanisms

*   **Automated Commits:** The `sync_up` skill creates a timestamped commit.
*   **Remote Backup:** All changes are pushed to GitHub immediately.
