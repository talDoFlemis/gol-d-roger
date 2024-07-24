const shadcnConfig = require("./shadcn.tailwind.js");
const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  ...shadcnConfig,
  theme: {
    extend: {
      colors: {
        ...shadcnConfig.theme.extend.colors,
        pink: "hsl(var(--pink))",
        success: {
          DEFAULT: "hsl(var(--success))",
          foreground: "hsl(var(--success-foreground))",
        },
        info: {
          DEFAULT: "hsl(var(--info))",
          foreground: "hsl(var(--info-foreground))",
        },
        attention: {
          DEFAULT: "hsl(var(--attention))",
          foreground: "hsl(var(--attention-foreground))",
        },
      },
      fontFamily: {
        sans: ["var(--font-sans)", ...defaultTheme.fontFamily.sans],
        body: ["var(--font-body)", ...defaultTheme.fontFamily.sans],
        heading: ["var(--font-heading)", ...defaultTheme.fontFamily.sans],
      },
    },
  },
};
