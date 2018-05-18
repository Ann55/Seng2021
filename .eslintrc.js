module.exports = {
    "extends": "react-app",
    "rules": {
        "semi": ["error", "never"],
        "quotes": ["error", "single"],
        "linebreak-style": ["error", "windows"],
        "no-console": "off",
        "no-param-reassign": "off",
        "jsx-a11y/href-no-hash": "off",
        "jsx-a11y/anchor-is-valid": ["warn", { "aspects": ["invalidHref"] }],
    },
    "env": {
        "browser": true
    }
}