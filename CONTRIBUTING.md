# Contributing to Rhinocorp Ecosystem Projects

This document outlines the workflow and best practices for contributing to Rhinocorp Ecosystem projects, especially when collaborating with AI agents like Claude (Architect) and Gemini (Operator).

---

## 🚀 The AI Collaboration Workflow (Gemini-Claude Handshake)

We operate under a structured **Plan-Execute-Verify-Analyze** loop, leveraging the unique strengths of each participant:

### 👤 You (Florent - The Visionary & Reviewer)
*   **Role:** Defines high-level goals, makes final decisions, and reviews Pull Requests.
*   **Input:** Project vision, feature requests, bug reports.
*   **Output:** Approved Pull Requests, strategic direction.

### 🧠 Claude (The Architect & Strategist)
*   **Role:** Designs solutions, generates code (IaC, Backend, Frontend), analyzes complex issues, and maintains project documentation (e.g., `MASTER-PLAN.md`, `memory/decisions.md`).
*   **Input:** High-level requirements from Florent, execution results from Gemini.
*   **Output:** Detailed plans, code snippets, PR descriptions, updated documentation.

### 💻 Gemini (The Operator & Executor)
*   **Role:** Executes shell commands, deploys infrastructure, verifies changes, manages Git operations, and performs file system tasks.
*   **Input:** Specific instructions/code from Claude, feedback from Florent.
*   **Output:** Execution logs, verification reports, pushed code changes.

---

## 🤝 Collaboration Protocol

1.  **Shared Blackboard:** All critical context, status updates, and decisions are synchronized via designated files:
    *   `PROJECT-STATUS.md`: Overall project progress.
    *   `memory/inventory.md`: Live resource list.
    *   `memory/decisions.md`: Architectural Decision Records.
    *   `COLLABORATION.md`: This very protocol.

2.  **Handoffs:** Use clear, explicit instructions when handing off tasks. Reference specific files or outcomes.

    *   **Claude -> Gemini:** "Gemini, please execute the deployment of the new service. Ensure `HCLOUD_TOKEN` is loaded using `lib/credentials.sh`. Report success or failure."
    *   **Gemini -> Claude:** "Claude, the deployment failed due to error X. Logs are in `logs/deployment.log`. Please analyze and provide next steps."

3.  **Git Workflow:**
    *   **`main` Branch:** Represents the production-ready state.
    *   **`develop` Branch:** Integration branch for new features.
    *   **Feature Branches:** All new work (code changes, new skills, documentation updates) should happen on a dedicated feature branch.
    *   **Pull Requests (PRs):** All changes must go through a PR, reviewed by Florent, before merging into `develop` or `main`.

---

## 💾 Ensuring Data Persistence

*   **`projects/collaboration` Repository:** This acts as our shared "brain dump" and history.
    *   **`skills/sync_up.sh`:** Use this script to commit and push local changes to the `rhinocorp-collaboration` GitHub repo.
    *   **`skills/sync_down.sh`:** Use this script to pull the latest changes from the `rhinocorp-collaboration` GitHub repo.
*   **Frequent Commits:** Commit frequently with clear, descriptive messages using conventional commit style (e.g., `feat: Add new skill`, `fix: Resolve deployment error`).

---

## ✅ Best Practices for AI Interaction

*   **Be Specific:** Provide clear, atomic instructions.
*   **Verify:** Always ask for verification steps.
*   **Context:** Refer to relevant documentation (`MASTER-PLAN.md`, `PROJECT-STATUS.md`, `COLLABORATION.md`).
*   **Safety First:** Double-check destructive commands.

---

*Let's build something great together!*
