module Layout

using Genie, Stipple, StippleUI, StippleUI.API
import Genie.Renderer.Html: HTMLString, normal_element

export layout, pageContainer

Genie.Renderer.Html.register_normal_element("q__layout", context = @__MODULE__)
Genie.Renderer.Html.register_normal_element("q__page__container", context = @__MODULE__)

function layout(args...;
                wrap::Function = StippleUI.DEFAULT_WRAPPER,
                kwargs...)

function pageContainer(args...;
                wrap::Function = StippleUI.DEFAULT_WRAPPER,
                kwargs...)

  wrap() do
    q__layout(args...; attributes([kwargs...], StippleUI.API.ATTRIBUTES_MAPPINGS)...)
  end

  wrap() do
    q__page__container(args...; attributes([kwargs...], StippleUI.API.ATTRIBUTES_MAPPINGS)...)
  end



end

end
