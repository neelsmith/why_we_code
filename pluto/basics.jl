### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ a2cb957f-c8eb-4e0f-a1e5-3e37f2b7bd27
begin
	using PlutoUI
	using PlutoTeachingTools
end

# ╔═╡ 3c2dbe8c-363c-4ad8-a862-6a74c45808e0
md"""
> Workshop session 1 of [*Why we code*](https://neelsmith.github.io/why_we_code/)
"""

# ╔═╡ 777185cc-b116-11ec-218d-453c13034275
md"""# Basics for humanities research


In our first session, we'll introduce some essential ideas for computational study in the humanities.  Working in the Julia REPL (Julia's interactive Read-Evaluate-Print Loop), we'll organize different types of information in collections that we can query and transform.

One of the best ways to get familiar with Julia is to use the interactive REPL. We'll do that in our workshop, but you can use this  Pluto notebook to review or experiment with some examples.

"""

# ╔═╡ 7f8af184-9753-47de-8660-f07990f247d9
md"""
## Objects, values, types, and variables

Consider the followoing cell.  Its body, composed of the characters `"Why code?"`, is  a valid *expression* in Julia. Immediately above the cell body, the Pluto notebook server displays the *value* of that expression.
"""


# ╔═╡ efe0e3ed-0c14-48d3-a0fd-d65dba74ee2f
"Why code?"

# ╔═╡ 45f22493-7e17-4bab-bd4c-8dca46a15c01
md"""
So the expression `"Why code?"` has the value  `"Why code?"`? So what?  Look at the next cell.
"""

# ╔═╡ 729b6e3a-8305-4de4-bd46-7a7e951eb718
typeof("Why code?")

# ╔═╡ ca929bdf-dff1-4211-8415-80f69e50b4ef
md"""
The body of this cell is also a valid Julia expression.  We'll look at the pieces of that expression a little later, but for now, let's notice that this expression tells that the *type*  of the expression `"Why code?"` is `String` -- that is, a "string" of characters.

This illustrates an important general point, namely:
"""

# ╔═╡ 04f46f9a-e261-4529-a5a2-91991fdb85d3
md"""
!!! alert "Important"
    ☞ Objects in Julia belong to a specific *type*, and have a specific *value*.
"""

# ╔═╡ 45d123c3-d4e1-4559-8d89-9e3eea0b23ef
md"""Let's look at some further examples. Compare the following two cells.
"""

# ╔═╡ 73390200-8116-42e2-884f-f456ced5aac7
12

# ╔═╡ c77c0518-75f4-418e-ae5c-209d4485f39e
typeof(12)

# ╔═╡ a3836cbc-4027-4e2a-ac1c-b10cc8de8af4
md"""Here, the expression `12` has a value of a different type.  `Int64` is an *integer* value.
"""

# ╔═╡ 01320907-7796-4d47-b89b-65a57ec560b1
"12"

# ╔═╡ 7585bac1-7b0d-475a-9e78-29550279fc89
typeof("12")

# ╔═╡ c083fd97-eea8-404a-a18f-8632cefae08c
md"""

!!! warning "？ Question"
    Strings and integers are different types of objects.  How does Julia visually make that clean when it displays their values?
"""

# ╔═╡ df5eea04-46ec-4ea7-89f4-7c01b21b55d4
md"The next cell has a String value."

# ╔═╡ 61d7d055-afd4-418a-8c0d-220e63461705
"true"

# ╔═╡ 4b088983-26bb-4528-a270-800253b5d4c7
md"but the following cell does not."

# ╔═╡ a7dd7c9b-a6a1-4e09-8570-01150af6b3e9
true

# ╔═╡ 5c9012e1-8503-4926-a2b5-9f19991c10fb
md"In the celll below this one, replace the term `missing` with a julia expression to find out the type of the expression `true`."

# ╔═╡ 61f6a990-31ab-4e38-bb91-372a60dbe5e4
truthy = missing

# ╔═╡ f3eea46c-75ce-4b43-a183-4a564abf8e77
md">Quarry"

# ╔═╡ 5d5476d6-11a4-43f7-a527-a321e2212648


# ╔═╡ 914bbfb6-0eab-4418-a9f9-0e419df73abe
md"""Stringy


Types are in a hierarchy

For strings, you're interested in `AbstractString`.  More a little later...



### String interpolation

Longquotes: 

books = 24
title = Iliad
"There are (books) books in the (title)"

markdown!  `md`

"""

# ╔═╡ d3db4a48-c117-4cf8-bde6-c82dfd3fac10
md"""FUNCTOINS


## REPL 1: Functions

A machine that takes something(s) and produces another object.  Saw example with `typeof`




```julia
length(s)
```

Thing in parens is a *parameter*


ALTERNATE FUNCTION NOTATION when 1 parameter: `|>`


```julia
length(s) |> typeof
typeof(length(s))
```
So: String -> int

uppercase(s)
String -> String


string("There are ", books, " books in the ", title)

#### Write your own

short form:

exclaim = s -> string(s, "!!")


longer form: more normal for writing functions (more normally more than one line) but important to recognize the short form

function exam(s)
    string(s, "!!")
end

ASSIGNMENT:
write a function `shout` that takes one string parameter, and creates a new string all upper case and with exclamation marks afterwards.

"""

# ╔═╡ 9224bcb5-a184-4106-8307-78a6c2db9716
md"""READS


#### Files: download and read

URL = "https://juliabyexample.helpmanual.io"
Julia mode: `using Downloads`
Downloads.download(URL)

Returns a string with path to a file!

Downloads.download(URL) |> read

Vector of bytese...????

Downloads.download(URL) |> read |> String

Downloads.download(URL) |> readlines

"""

# ╔═╡ f042f25f-fd8f-4911-a466-7fe62fc7b99a
md""" FUNCTING

#### Collections: Vectors and Matrices


split text content of gburg

### More on types and hierarchy

s```
julia> "Four score" |> split
2-element Vector{SubString{String}}:
 "Four"
 "score"

julia> s1 = "score"
"score"

julia> s2 = split("four score")[2]
"score"

julia> s1 == s2
true

julia> typeof(s1) == typeof(s2)
false
```

To see why: functions


`split`



**for** looping
**conditions**


function longest(wordlist)
    maxlength = 0
    longestword  = ""
    for word in wordlist
        if length(word) > maxlength
            maxlength = length(word)
            longestword = word
        end
    end
    longestword
end


(LATER: HOW TO REPLACE CHARACTERS MATCHING REG EXP)


LOGIC PROBLEM: what if more than 1 longest word?

"Find words in wordlist longer than length `n`."
function longerthan(wordlist, n)
    longwords  = []
    for word in wordlist
        if length(word) > n
            push!(longwords, word)
        end
    end
    longwords
end



"Find words in wordlist longer than length `n`."
function longerthan(wordlist, n)
    longwords  = []
    for word in wordlist
        if length(word) > n
            push!(longwords, word)
        end
    end
    longwords
end


Now what if we want longest `n` words?
"""

# ╔═╡ 9e5793e4-d22f-4229-be58-cddf94b57c98
md"""



## The two functions that do most of your scholarship

map(w -> length(w), wds) 

Expanded form:

counts = map(wds) do w
       (w, length(w))
       end

maximum(counts)       
using Statistics
mean(counts)


wordcounts = map(wds) do w
       (w, length(w)))
end

function longestn(wordlist, n)
    wordcounts = map(wds) do w
       (w, length(w))
    end
    sorted = sort(wordcounts, by = pair -> pair[2]) |> reverse
    sorted[1:n]
end


filter(wordcounts) do (w, c)
    startswith(w, "consecr")
end
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoTeachingTools = "661c6b06-c737-4d37-b85c-46df65de6f69"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoTeachingTools = "~0.1.4"
PlutoUI = "~0.7.38"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "621f4f3b4977325b9128d5fae7a8b4829a0c2222"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.4"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoTeachingTools]]
deps = ["LaTeXStrings", "Markdown", "PlutoUI", "Random"]
git-tree-sha1 = "e2b63ee022e0b20f43fcd15cda3a9047f449e3b4"
uuid = "661c6b06-c737-4d37-b85c-46df65de6f69"
version = "0.1.4"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "670e559e5c8e191ded66fa9ea89c97f10376bb4c"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.38"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─a2cb957f-c8eb-4e0f-a1e5-3e37f2b7bd27
# ╟─3c2dbe8c-363c-4ad8-a862-6a74c45808e0
# ╟─777185cc-b116-11ec-218d-453c13034275
# ╟─7f8af184-9753-47de-8660-f07990f247d9
# ╠═efe0e3ed-0c14-48d3-a0fd-d65dba74ee2f
# ╟─45f22493-7e17-4bab-bd4c-8dca46a15c01
# ╠═729b6e3a-8305-4de4-bd46-7a7e951eb718
# ╟─ca929bdf-dff1-4211-8415-80f69e50b4ef
# ╟─04f46f9a-e261-4529-a5a2-91991fdb85d3
# ╠═45d123c3-d4e1-4559-8d89-9e3eea0b23ef
# ╠═73390200-8116-42e2-884f-f456ced5aac7
# ╠═c77c0518-75f4-418e-ae5c-209d4485f39e
# ╟─a3836cbc-4027-4e2a-ac1c-b10cc8de8af4
# ╠═01320907-7796-4d47-b89b-65a57ec560b1
# ╠═7585bac1-7b0d-475a-9e78-29550279fc89
# ╟─c083fd97-eea8-404a-a18f-8632cefae08c
# ╟─df5eea04-46ec-4ea7-89f4-7c01b21b55d4
# ╠═61d7d055-afd4-418a-8c0d-220e63461705
# ╟─4b088983-26bb-4528-a270-800253b5d4c7
# ╠═a7dd7c9b-a6a1-4e09-8570-01150af6b3e9
# ╟─5c9012e1-8503-4926-a2b5-9f19991c10fb
# ╠═61f6a990-31ab-4e38-bb91-372a60dbe5e4
# ╟─f3eea46c-75ce-4b43-a183-4a564abf8e77
# ╠═5d5476d6-11a4-43f7-a527-a321e2212648
# ╟─914bbfb6-0eab-4418-a9f9-0e419df73abe
# ╟─d3db4a48-c117-4cf8-bde6-c82dfd3fac10
# ╠═9224bcb5-a184-4106-8307-78a6c2db9716
# ╠═f042f25f-fd8f-4911-a466-7fe62fc7b99a
# ╠═9e5793e4-d22f-4229-be58-cddf94b57c98
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
