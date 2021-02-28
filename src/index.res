@val external document: {..} = "document"
@val external window: {..} = "window"

let updatePreview = (e) => {
  window["textView"]["innerText"] = e["target"]["value"]
}

let setFontSmall = () => {
  window["textView"]["classList"]["add"]("text-sm")->ignore
  window["textView"]["classList"]["remove"]("text-2xl", "text-6xl")
}

let setFontRegular = () => {
  window["textView"]["classList"]["add"]("text-2xl")->ignore
  window["textView"]["classList"]["remove"]("text-sm", "text-6xl")
}

let setFontLarge = () => {
  window["textView"]["classList"]["add"]("text-6xl")->ignore
  window["textView"]["classList"]["remove"]("text-2xl", "text-sm")
}

window["textEditor"]["addEventListener"]("input", updatePreview)
window["selectSmall"]["addEventListener"]("input", setFontSmall)
window["selectRegular"]["addEventListener"]("input", setFontRegular)
window["selectLarge"]["addEventListener"]("input", setFontLarge)
