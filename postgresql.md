# Install PostgreSQL Client (psql)

## Distribution URL
- **Official Website**: [https://www.postgresql.org/](https://www.postgresql.org/)

## MacOS (Homebrew)
```bash
brew install postgresql@17
```
> [!NOTE]
> After installation, you may need to add the binary path to your shell profile.

## Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install postgresql-client
```

## Verification
```bash
psql --version
```
