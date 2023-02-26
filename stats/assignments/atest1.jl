### A Pluto.jl notebook ###
# v0.19.22

#> [frontmatter]
#> author_url = "https://github.com/JuliaPluto"
#> image = "https://user-images.githubusercontent.com/6933510/174066314-d338f28b-36cf-48e0-981f-dd0f140ad66c.png"
#> order = "1"
#> tags = ["basic", "classic"]
#> author_name = "Pluto.jl"
#> description = "Welcome to Pluto!"
#> license = "Unlicense"

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ b129ba7c-953a-11ea-3379-17adae34924c
md"""

# **Assignment 1**
_**Statistical Methods for Earth Sciences**_
"""

# ╔═╡ 4237e22e-2ff3-4901-a273-600383dcdff8
html"""<p>To edit any code, just click on the code that is contained within each 'cell'. When you're done programming, press the <img src="https://cdn.jsdelivr.net/gh/ionic-team/ionicons@5.5.1/src/svg/caret-forward-circle-outline.svg" style="width: 1em; height: 1em; margin-bottom: -.2em;"> in the lower-right corner of a cell to run the code. Alternatively, you can also use 'Shift+Enter' to run the code.</p>"""

# ╔═╡ a1583d1f-aceb-49b6-bc05-ab1775a39c96
a=2

# ╔═╡ 42db969b-7666-4dfc-84fb-dd7a5e143d8f
b=3

# ╔═╡ 4d88b926-9543-11ea-293a-1379b1b5ae64
md"## Mathematics in Julia
This is an introduction to programming in Julia.  Let's get started!

First let's do some simple math with setting **a = $a**, **b = $b** and **c = a * b**.  What will **c** equal?"

# ╔═╡ 2ecbed8b-e151-46c1-bfa1-99a91c1431d0
md"Fix the value of `c` below to make it `c = a * b`"

# ╔═╡ cdfb5f53-80a9-413c-8260-cf2f016af833
c=18

# ╔═╡ 11794cad-c79c-4d86-8fcc-6ecbff167761
if c == a * b
	println(md"""Great! The value of c = $c.  So you now have a simple computer!
	
	Now go back above and change the value of a = $a to a = $(a + 3) and press `Shift-Enter`.
	What is the new value of c?  Notice how all the values get updated in this notebook!
	""")
else
	println("That's not right, keep working on it!")
end

# ╔═╡ f112b662-9543-11ea-3dcb-2906a99b2188
html"""<p>Notice that a cell is a container for code & output. To add one, click on the plus icon, <img src="https://cdn.jsdelivr.net/gh/ionic-team/ionicons@5.5.1/src/svg/add-outline.svg" style="width: 1em; height: 1em; margin-bottom: -.2em;">, above or below another cell. You can do it wherever you like. After you're done writing code in your cell, remember to run it!</p>"""

# ╔═╡ bed15a4e-f681-466e-a1d7-b24dddaa1835
html"""<p>As we saw above with the simple math example, anytime that you modify a variable in one location it will be changed anywhere you have it elsewhere in your code.</p>"""

# ╔═╡ e5f4482f-efd9-4ad3-94ff-ba734eebb75f
html"""<p>It is also possible to delete a cell by hovering over and clicking on the three dots on the right hand side of a cell. This brings up a dialogue menu and you can choose to delete the cell from this menu.</p>"""

# ╔═╡ 9da8a362-1588-4647-b7d8-13118505ec5f
md"## Getting Help"

# ╔═╡ 270ac49e-9549-11ea-3ffd-71ddaee9f134
md"But what does `confusing_function` do? If you ever need help, click on 📚 **Live docs** in the lower right, and then place your cursor on the code you need help with. 

If you don't see it, then your screen is too small! Maybe you need to zoom out?"

# ╔═╡ 745a4584-954a-11ea-028e-59011f268ec6
cans_in_stock = "🥫🥫🥫🥫"

# ╔═╡ 55ad7422-954e-11ea-0a33-a3b03febb56e
if @isdefined cans_in_stock
	md"Actually, I have a hunch there will be another cat coming. Uncomment the code below (remove the #) to add one more can. Remember to run it after making the change!"
else
	md"**Whoopsie!** Because Pluto figures out execution order for you, it doesn't really make sense to assign to the same variable twice. A smarter way to plan ahead is to write `cans_in_stock = consumption` — Pluto will take care of updating everything."
end

# ╔═╡ eac62fea-954e-11ea-2768-39ce6f4059ab
# cans_in_stock = "🥫🥫🥫🥫🥫"

# ╔═╡ 6c8e2108-9550-11ea-014d-235770ed4771
md"## Saving cats and notebooks
Alright, we have a neighborhood full of well-fed cats. But oh no, here comes..."

# ╔═╡ 9e89fc9a-9550-11ea-14b4-7f0e96225ec0
scary_dog = "Piesio"

# ╔═╡ bdd5d268-9550-11ea-1046-31efedc36872
if @isdefined scary_dog
	md" $scary_dog is terrorizing the neighborhood! We must do something about it!"
else
	md"You saved the neighborhood! Referencing `scary_dog` leads to an `UndefVarError`, as if it never even existed."
end

# ╔═╡ 36cd006a-9551-11ea-3c0c-df8b7f2843c1
HTML("""<p>To delete a cell like the one defining $scary_dog, click on the <img src="https://cdn.jsdelivr.net/gh/ionic-team/ionicons@5.5.1/src/svg/close-circle-outline.svg" style="width: 1em; height: 1em; margin-bottom: -.2em;"> on the right of its code.</p>""")

# ╔═╡ fb4e471c-9551-11ea-1ab5-41bbd5de76b8
md"""
Speaking of saving, this notebook is autosaved whenever you change something. The default location for new notebooks is $(joinpath(first(DEPOT_PATH), "pluto_notebooks")), you can find it using your file explorer. To change the name or the directory of a notebook, scroll to the top - you enter the notebook's path next to the Pluto logo.
"""

# ╔═╡ 9d3af596-9554-11ea-21bd-bf427c91c424
md"## ⚡ Pluto power ⚡
Oof, that dog situation was intense. Let's give our cats superpowers to make sure it never happens again!"

# ╔═╡ 3150bf1a-9555-11ea-306f-0fd4d9229a51
md"Remember learning HTML in junior high? Now you can use it for something! Pluto lets you `@bind` variables to HTML elements. As always, every time you change something, Pluto knows what to update!"

# ╔═╡ f2c79746-9554-11ea-39ca-298fd09248ad
@bind power_level html"<input type='range'>"

# ╔═╡ 0b094cea-9556-11ea-268e-0d270fd04d56
md"The power level is $power_level, but we should do more than just say it - let's equip our cats with $power_level emoji!"

# ╔═╡ 1908f9f2-9557-11ea-2abd-dd52f8d776f4
power_emoji = "⚡"
power = repeat(power_emoji, power_level)

# ╔═╡ 784b1774-9557-11ea-315e-d1ea277ce0fd
if !@isdefined power
	md"Uh oh! Pluto doesn't support multiple expressions per cell. This is a conscious choice - this restriction helps you write less buggy code once you get used to it. To fix the code, you can either split the above cell, or wrap it in a `begin ... end` block. Both work."
else
	md"**Well done!** Your cats have powers now."
end

# ╔═╡ 5edadcd2-9554-11ea-1714-b5b7692c4797
html"""<p>We're almost done! It's time to share your amazing story. Scroll to the top of the notebook, and click on <img src="https://cdn.jsdelivr.net/gh/ionic-team/ionicons@5.5.1/src/svg/shapes-outline.svg" style="width: 1em; height: 1em; margin-bottom: -.2em;"> to see the export options - or you can always share this notebook's save file. (The file is pure Julia, by the way, and it's runnable! You'll learn more about this in the advanced introduction.)</p>"""

# ╔═╡ 4634c856-9553-11ea-008d-3539195970ea
md"## Final notes"

# ╔═╡ 4d0ebb46-9553-11ea-3431-2d203f594815
md"If anything about this introduction left you confused, something doesn't work, or you have a cool new idea - don't hesitate to contact us! You can do it right from this screen, using the `Instant feedback` form in the bottom right."

# ╔═╡ d736e096-9553-11ea-3ba5-277afde1afe7
md"Also, if you were wondering where `confusing_function` came from, here you go! Remember that you, too, can place code wherever you like."

# ╔═╡ 7366f1b6-954c-11ea-3f68-b12444c902c3
"""
confusing_function(text::String, array::Array)

Repeats the `text` as many times as there are elements in `array`.
"""
confusing_function(text::String, array::Array) = repeat(text, length(array))

# ╔═╡ a4a60262-9547-11ea-3a81-5bf7f9ee5d16
consumption = confusing_function("🥫", neighbors)

# ╔═╡ e11e1660-9549-11ea-22f6-8bb53dc045fe
md"Now we know to prepare $(length(consumption)) cans. Let's stock up!"

# ╔═╡ f27f90c2-954f-11ea-3f93-17acb2ce4280
md"We have $(length(cans_in_stock)) cans of cat food, and our cats need $(length(consumption)). Try adding another cat to the neighborhood to see what changes!"

# ╔═╡ 1deaaf36-9554-11ea-3dae-85851f73dbc6
md"**Have fun using Pluto!**

_~ Fons van der Plas & Nicholas Bochenski_"

# ╔═╡ Cell order:
# ╟─b129ba7c-953a-11ea-3379-17adae34924c
# ╟─4d88b926-9543-11ea-293a-1379b1b5ae64
# ╟─4237e22e-2ff3-4901-a273-600383dcdff8
# ╠═a1583d1f-aceb-49b6-bc05-ab1775a39c96
# ╠═42db969b-7666-4dfc-84fb-dd7a5e143d8f
# ╟─2ecbed8b-e151-46c1-bfa1-99a91c1431d0
# ╠═cdfb5f53-80a9-413c-8260-cf2f016af833
# ╟─11794cad-c79c-4d86-8fcc-6ecbff167761
# ╟─f112b662-9543-11ea-3dcb-2906a99b2188
# ╟─bed15a4e-f681-466e-a1d7-b24dddaa1835
# ╟─e5f4482f-efd9-4ad3-94ff-ba734eebb75f
# ╠═9da8a362-1588-4647-b7d8-13118505ec5f
# ╠═a4a60262-9547-11ea-3a81-5bf7f9ee5d16
# ╟─270ac49e-9549-11ea-3ffd-71ddaee9f134
# ╟─e11e1660-9549-11ea-22f6-8bb53dc045fe
# ╠═745a4584-954a-11ea-028e-59011f268ec6
# ╟─55ad7422-954e-11ea-0a33-a3b03febb56e
# ╠═eac62fea-954e-11ea-2768-39ce6f4059ab
# ╟─f27f90c2-954f-11ea-3f93-17acb2ce4280
# ╟─6c8e2108-9550-11ea-014d-235770ed4771
# ╠═9e89fc9a-9550-11ea-14b4-7f0e96225ec0
# ╟─bdd5d268-9550-11ea-1046-31efedc36872
# ╟─36cd006a-9551-11ea-3c0c-df8b7f2843c1
# ╟─fb4e471c-9551-11ea-1ab5-41bbd5de76b8
# ╟─9d3af596-9554-11ea-21bd-bf427c91c424
# ╟─3150bf1a-9555-11ea-306f-0fd4d9229a51
# ╠═f2c79746-9554-11ea-39ca-298fd09248ad
# ╟─0b094cea-9556-11ea-268e-0d270fd04d56
# ╠═1908f9f2-9557-11ea-2abd-dd52f8d776f4
# ╟─784b1774-9557-11ea-315e-d1ea277ce0fd
# ╟─5edadcd2-9554-11ea-1714-b5b7692c4797
# ╟─4634c856-9553-11ea-008d-3539195970ea
# ╟─4d0ebb46-9553-11ea-3431-2d203f594815
# ╟─d736e096-9553-11ea-3ba5-277afde1afe7
# ╟─7366f1b6-954c-11ea-3f68-b12444c902c3
# ╟─1deaaf36-9554-11ea-3dae-85851f73dbc6
