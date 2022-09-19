local ls = require('luasnip')
local s = ls.snippet
local f = ls.function_node
local t = ls.text_node
local i = ls.insert_node
local ps = require('luasnip.extras.postfix').postfix

local function surround(trig, pre, post)
	return ps(trig, {
		f(function(_, parent)
			return pre .. parent.snippet.env.POSTFIX_MATCH .. post
		end, {})
	})
end

local function prefix(trig, pre)
	return ps(trig, {
		f(function(_, parent)
			return pre .. parent.snippet.env.POSTFIX_MATCH
		end, {})
	})
end

local function postfix(trig, post)
	return ps(trig, {
		f(function(_, parent)
			return  parent.snippet.env.POSTFIX_MATCH .. post
		end, {})
	})
end

-- pointer
local reference = prefix('.&', '&')
local dereference = prefix(".*", '*')

-- slice
local aapend = ps(".aappend", {
	f(function(_, parent)
		return parent.snippet.env.POSTFIX_MATCH .. ' = append(' .. parent.snippet.env.POSTFIX_MATCH .. ', '
	end, {}),
	i(0),
	t(')'),
})


-- error
local is = ps(".is", {
	f(function(_, parent)
		return 'errors.Is(' .. parent.snippet.env.POSTFIX_MATCH .. ', '
	end,{}),
	i(0),
	t(')'),
})

-- channel
local close = surround('.close', 'close(', ')')

-- if
local if_ = ps(".if", {
	f(function(_, parent)
		return 'if ' .. parent.snippet.env.POSTFIX_MATCH
	end, {}),
	i(1), t({' {', ''}),
	i(0),
	t({'', '}'})
})

local until_ = ps(".until", {
	f(function(_, parent)
		return 'if !' .. parent.snippet.env.POSTFIX_MATCH
	end, {}),
	i(1), t({' {', ''}),
	i(0),
	t({'', '}'})
})

local is_nil     = postfix('.nil', ' == nil')
local is_not_nil = postfix('.nnil', ' != nil')



-- other
local exclamation = prefix('.!', '!')
local len = surround('.len', 'len(', ')')
local panic = surround('.panic', 'panic(', ')')
local return_ = prefix('.return', 'return ')


ls.add_snippets('go', {
	exclamation,
	len,
	panic,
	return_,

	reference,
	dereference,

	aapend,

	is,

	close,

	if_,
	until_,
	is_nil,
	is_not_nil,
})

