// Generated by ReScript, PLEASE EDIT WITH CARE


function updatePreview(e) {
  window.textView.innerText = e.target.value;
  
}

function setFontSmall(param) {
  window.textView.classList.add("text-sm");
  return window.textView.classList.remove("text-2xl", "text-6xl");
}

function setFontRegular(param) {
  window.textView.classList.add("text-2xl");
  return window.textView.classList.remove("text-sm", "text-6xl");
}

function setFontLarge(param) {
  window.textView.classList.add("text-6xl");
  return window.textView.classList.remove("text-2xl", "text-sm");
}

window.textEditor.addEventListener("input", updatePreview);

window.selectSmall.addEventListener("input", setFontSmall);

window.selectRegular.addEventListener("input", setFontRegular);

window.selectLarge.addEventListener("input", setFontLarge);

export {
  updatePreview ,
  setFontSmall ,
  setFontRegular ,
  setFontLarge ,
  
}
/*  Not a pure module */
