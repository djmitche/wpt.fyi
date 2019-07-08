package webapp

import (
	"bytes"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/web-platform-tests/wpt.fyi/shared"
)

func TestWPTEnvFlagsTemplate(t *testing.T) {
	data := struct{ Flags []shared.Flag }{
		[]shared.Flag{
			{Name: "my-feature", Enabled: true},
		},
	}
	var sw bytes.Buffer
	componentTemplates.ExecuteTemplate(&sw, "wpt-env-flags.js", data)
	assert.Contains(t, sw.String(), "'my-feature'")
}
