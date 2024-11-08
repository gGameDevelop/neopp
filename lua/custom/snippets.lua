local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
    s("class", {
        t("class "), i(1, "ClassName"), t(" {"),
        t({"", "public:"}),
        t({"", "    "}), i(2, "int variable;"),  -- Member variable
        t({"", "", "public:"}),
        t({"", "    "}), i(3, "void constructor() {}"),  -- Constructor
        t({"", "", "    "}), i(4, "void function() {}"),  -- Member function
        t({"", "};"}),
        i(0),  -- Final cursor position
    }),
})
