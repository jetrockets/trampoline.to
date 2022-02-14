const colors = require('tailwindcss/colors');

module.exports = {
  mode: 'jit',
  content: [
    './app/views/**/*.erb',
    './app/components/**/*.erb',
    './app/components/**/*.rb',
    './app/javascripts/**/*.js'
  ],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    colors: {
      primary: colors.teal,
      secondary: colors.purple,
      transparent: 'transparent',
      current: 'currentColor',
      black: colors.black,
      indigo: colors.indigo,
      white: colors.white,
      gray: colors.gray,
      purple: colors.purple,
      pink: colors.pink,
      red: colors.red,
      yellow: colors.amber,
      green: colors.green,
      blue: colors.blue,
      rose: colors.rose,
      sky: colors.sky,
      teal: colors.teal
    },

    extend: {}
  },
  variants: { extend: {} },
  plugins: [
    require('@tailwindcss/forms')()
  ]
};
