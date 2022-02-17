module.exports = {
  mode: 'jit',
  content: [
    './app/views/**/*.erb',
    './app/components/**/*.erb',
    './app/components/**/*.rb',
    './app/javascripts/**/*.js',
  ],
  darkMode: 'media', // or 'media' or 'class'
  plugins: [
    require('@tailwindcss/forms')(),
  ],
  // theme: {
  //   minHeight: {
  //     'half-screen': '50vh',
  //   },
  // },
};
