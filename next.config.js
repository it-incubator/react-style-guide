const withNextra = require('nextra')({
  theme: 'nextra-theme-docs',
  themeConfig: './theme.config.jsx',
  defaultShowCopyCode: true,
})

module.exports = withNextra({
  swcMinify: true,
  basePath: process.env.NODE_ENV === 'development' ? '' : '/react',
})
