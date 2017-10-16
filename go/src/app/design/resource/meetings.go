package resource

import (
	. "app/design/constant"
	"app/design/media"

	. "github.com/goadesign/goa/design"
	. "github.com/goadesign/goa/design/apidsl"
)

var _ = Resource("meetings", func() {
	DefaultMedia(media.MeetingType)
	BasePath("/meetings")
	Action("meetings", func() {
		Description("meetings")
		Routing(
			GET(""),
		)
		Response(OK, CollectionOf(media.MeetingType))
		UseTrait(GeneralUserTrait)
	})
})
