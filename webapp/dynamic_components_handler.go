package webapp

import (
	"net/http"
	"strings"
	"text/template"

	"github.com/gobuffalo/packr"
	"github.com/web-platform-tests/wpt.fyi/shared"
)

var componentTemplates *template.Template

func init() {
	componentTemplates = template.New("dynamic-components")
	box := packr.NewBox("./dynamic-components")
	for _, item := range box.List() {
		if strings.HasSuffix(item, ".js") {
			if contents, err := box.FindString(item); err == nil {
				parsed := template.Must(componentTemplates.Parse(contents))
				componentTemplates.AddParseTree(item, parsed.Tree)
			}
		}
	}
}

func flagsComponentHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("content-type", "text/javascript")
	ctx := shared.NewAppEngineContext(r)
	ds := shared.NewAppEngineDatastore(ctx, false)
	flags, err := shared.GetFeatureFlags(ds)
	if err != nil {
		// Errors aren't a big deal; log them and ignore.
		log := shared.GetLogger(ctx)
		log.Errorf("Error loading flags: %s", err.Error())
	}
	data := struct{ Flags []shared.Flag }{flags}
	componentTemplates.ExecuteTemplate(w, "wpt-env-flags.js", data)
}
