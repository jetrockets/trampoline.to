const path = require('path');

const esbuild = require('esbuild');
const { stimulusPlugin } = require('esbuild-plugin-stimulus');

const OUT_DIR = 'app/assets/builds';
const SRC_DIR = 'app/javascript/';
const APPLICATION_SCRIPT = path.join(SRC_DIR, 'application.js');

const IS_PROD = process.argv.includes('--prod');
const IS_DEV = !IS_PROD;

const config = {
  entryPoints: [APPLICATION_SCRIPT],
  outdir: OUT_DIR,
  bundle: true,
  minify: IS_PROD,
  sourcemap: IS_DEV,
  watch: IS_DEV && {
    onRebuild: (error, result) => {
      if (error) { console.error('watch build failed:', error); }
      console.log('watch build succeeded' /* result */);
    }
  },
  plugins: [stimulusPlugin()]
};

esbuild.build(config).then(() => console.log('Build successful ✅')).catch(() => process.exit(1));
