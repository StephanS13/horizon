// Taken from here:
// https://stackoverflow.com/a/42543908/4789597

const getScrollParent = (element, includeHidden) => {
  var style = getComputedStyle(element);
  var initialElementPositionedAbsolute = style.position === "absolute";

  var overflowRegex = includeHidden ? /(auto|scroll|hidden)/ : /(auto|scroll)/;

  if (style.position === "fixed") return document.body;

  for (var parent = element; (parent = parent.parentElement);) {
    style = getComputedStyle(parent);

    let excludeStaticParent = initialElementPositionedAbsolute && style.position === "static"

    if (excludeStaticParent) {
        continue;
    }
    if (overflowRegex.test(style.overflow + style.overflowY + style.overflowX)) return parent;
  }

  return document.body;
}

export { getScrollParent }
