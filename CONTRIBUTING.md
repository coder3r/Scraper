# Contributing to Dev Downloader Scraper

First off, thanks for taking the time to contribute! ❤️

## Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## How Can I Contribute?

### Reporting Bugs 🐛

Before creating a bug report, please check the [issue list](https://github.com/coder3r/Scraper/issues) to ensure the issue hasn't already been reported.

**To submit a bug report:**

1. **Use a clear and descriptive title**
2. **Provide a step-by-step reproduction** if possible
3. **Provide specific examples** to demonstrate the steps
4. **Include screenshots or GIFs** if relevant
5. **Include your environment** (OS, Python/Node version, relevant dependencies)

### Suggesting Enhancements 💡

Enhancement suggestions are tracked as [GitHub issues](https://github.com/coder3r/Scraper/issues). When creating an enhancement suggestion, include:

- **Clear and descriptive title**
- **Detailed description** of the suggested enhancement
- **Why this enhancement would be useful** to most users
- **Possible implementation details** (optional)

### Pull Requests

**Process:**

1. **Fork the repo** and create your branch from `main`
2. **Make your changes** — keep commits atomic and descriptive
3. **Add tests** if you're adding new functionality
4. **Update documentation** as needed
5. **Follow the style guide** (see below)
6. **Submit a PR** with a clear title and description

**PR Title Convention:**

- `fix:` — Bug fixes
- `feat:` — New features
- `docs:` — Documentation updates
- `refactor:` — Code refactoring
- `perf:` — Performance improvements
- `test:` — Adding/updating tests

**Example:** `feat: add proxy support for link scraper`

## Style Guide

### Python

- Use **PEP 8** formatting (`autopep8` or `black`)
- Type hints for function signatures
- Descriptive variable names (no single letters except `i`, `j` in loops)
- Add docstrings to functions and classes
- Max line length: 100 characters

```python
def scrape_movie_link(
    source_url: Optional[str] = None,
    headless: bool = False,
    driver=None,
) -> Tuple[Optional[str], Optional[str], Optional[str], Optional[str], Dict[str, Any]]:
    """Extract movie download link from HDHub4u page.
    
    Args:
        source_url: URL of the movie post page
        headless: Run Chrome in headless mode
        driver: Existing Selenium webdriver instance
    
    Returns:
        Tuple of (hub_url, movie_name, file_size, error_reason, metadata)
    """
```

### JavaScript

- Use **ES6+** syntax (arrow functions, const/let, destructuring)
- Add JSDoc comments for exported functions
- Max line length: 100 characters

```javascript
/**
 * Imports a movie from TMDB to Supabase
 * @param {string} queryTitle - Movie title to search
 * @param {number} targetYear - Optional release year
 * @returns {Promise<Object>} Result object with status and movie details
 */
async function importMovie(queryTitle, targetYear = null) {
  // implementation
}
```

## Testing

- Write tests for new features
- Run existing tests before submitting PR: `python -m pytest` (if applicable)
- Include test coverage for edge cases

## Documentation

- Update `README.md` if you change functionality
- Add docstrings to new functions
- Include examples for new features
- Link to relevant documentation

## Commit Messages

Use clear, descriptive commit messages:

```
feat: add proxy support to selenium driver

- Support HTTP/HTTPS/SOCKS proxies
- Add PROXY_URL environment variable
- Fallback to direct connection if proxy fails
```

## Setting Up Local Development

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/Scraper.git
cd Scraper

# Install dependencies
pip install -r scripts/requirements.txt
npm install

# Create .env with test credentials
cp .env.example .env

# Run tests
python -m pytest scripts/

# Run linter
autopep8 --in-place scripts/*.py
```

## Questions or Need Help?

- Check [existing issues](https://github.com/coder3r/Scraper/issues)
- Read the [README.md](README.md)
- Create a new [discussion](https://github.com/coder3r/Scraper/discussions)

---

**Thank you for contributing! 🚀**
