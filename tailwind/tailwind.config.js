module.exports = {
    purge: {
        mode: "all",
        content: ["./Web/View/**/*.hs", "./assets/**/*.css", "./Config/Config.hs"],
    },
    darkMode: false, // or 'media' or 'class'
    theme: {
        extend: {},
    },
    variants: {
        extend: {},
    },
    plugins: [ require('@tailwindcss/forms') ],
};
