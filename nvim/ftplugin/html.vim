let pandoc_pipeline_markdown = "pandoc --from=html --to=markdown"
let pandoc_pipeline_html = "pandoc --from=markdown --to=html"
let pandoc_pipeline = pandoc_pipeline_markdown . " | " . pandoc_pipeline_html
let &formatprg=pandoc_pipeline
