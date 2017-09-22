# Karma-docker-chrome-java-sonar or Kdcjs for short

The name implies what will run on it.

extension of atlassian/default-image to include chromium and libgconf

enjoy being able to run karma with a headless chrome though I recommend using puppeteer.

```
browsers: ['Chromium_no_sandbox'],
        customLaunchers: {
            Chromium_no_sandbox: {
                base: 'ChromeHeadless',
                flags: ['--no-sandbox']
            }
        },
```
