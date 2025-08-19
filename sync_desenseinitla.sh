#!/bin/bash
# Define the repository URL and the target directory
REPO_URL="https://github.com/106094/macOS_initial.git"  # Replace with your repository URL
TARGET_DIR="$HOME/Desktop/desenseini"
# --- Step 1: Install Homebrew if it's not already installed ---
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# --- Step 2: Install Git using Homebrew ---
if ! command -v git &> /dev/null
then
    echo "Git not found. Installing Git..."
    brew install git
fi

# --- Step 3: Clone the repository to the Desktop ---
echo "Cloning repository to Desktop..."
git clone "$REPO_URL" "$TARGET_DIR"

# --- Step 4: Navigate into the cloned repository directory ---
cd "$TARGET_DIR"
echo "Successfully cloned the repository and moved into the directory."
echo "Current directory: $(pwd)"
