require('nvim-autopairs').setup{}
local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.add_rule(Rule("$$","$$","tex"))

-- you can use some built-in conditions

local cond = require('nvim-autopairs.conds')


npairs.add_rules({
  Rule("$$","$$","tex")
    :with_pair(function(opts)
        if opts.line=="aa $$" then
        -- don't add pair on that line
          return false
        end
    end)
   }
)

-- you can use regex
-- press u1234 => u1234number
npairs.add_rules({
    Rule("u%d%d%d%d$", "number", "lua")
      :use_regex(true)
})



-- press x1234 => x12341234
npairs.add_rules({
    Rule("x%d%d%d%d$", "number", "lua")
      :use_regex(true)
      :replace_endpair(function(opts)
          -- print(vim.inspect(opts))
          return opts.prev_char:sub(#opts.prev_char - 3,#opts.prev_char)
      end)
})


-- you can exclude filetypes
npairs.add_rule(
  Rule("$$","$$")
    :with_pair(cond.not_filetypes({"lua"}))
)
