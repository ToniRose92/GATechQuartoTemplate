-- Log for debugging; remove if not needed
quarto.log.output("choose_bar.lua loaded")

function Meta(meta)
  quarto.log.output("Running Meta in choose_bar.lua")

  -- Default to "gold" if not set
  local bar_style = "gold"

  -- If params.bar_style is defined, use it
  local bar = meta.params and meta.params.bar_style
  if bar then
    bar_style = pandoc.utils.stringify(bar)
  end

  quarto.log.output("bar_style = " .. bar_style)

  -- Construct the path to the corresponding bar file
  local snippet_file = "_extensions/ToniRose92/gatech/bar_" .. bar_style .. ".tex"
  local f = io.open(snippet_file, "r")
  if not f then
    quarto.log.output("Could not find file: " .. snippet_file)
    return meta
  end

  local content = f:read("*all")
  f:close()

  -- Ensure header-includes exists as a MetaList
  if not meta["header-includes"] then
    meta["header-includes"] = pandoc.MetaList({})
  end

  -- Insert the file content as raw LaTeX into the header
  table.insert(meta["header-includes"], pandoc.MetaBlocks({ pandoc.RawBlock("latex", content) }))

  return meta
end

return {{Meta = Meta}}
