module Select

using Genie, Stipple, StippleUI, StippleUI.API
import Genie.Renderer.Html: HTMLString, normal_element, select, template

Genie.Renderer.Html.register_normal_element("q__select", context = @__MODULE__)

function Genie.Renderer.Html.select(fieldname::Symbol,
                args...;
                options::Symbol,
                wrap::Function = StippleUI.DEFAULT_WRAPPER,
                kwargs...)

  wrap() do
    q__select(args...; attributes(
      [Symbol(":options") => options, :fieldname => fieldname, kwargs...], StippleUI.API.ATTRIBUTES_MAPPINGS)...)
  end
end

end
