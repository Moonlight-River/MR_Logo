const wrap = document.getElementById("wrap");

function setVars({ anchor, size, opacity, fade }) {
  if (size?.width) document.documentElement.style.setProperty("--w", `${size.width}px`);
  if (size?.height) document.documentElement.style.setProperty("--h", `${size.height}px`);

  if (typeof opacity === "number") {
    document.documentElement.style.setProperty("--opacity", String(opacity));
  }

  if (fade?.enabled === false) {
    document.documentElement.style.setProperty("--fade-ms", "0ms");
  } else if (fade?.ms) {
    document.documentElement.style.setProperty("--fade-ms", `${fade.ms}ms`);
  }

  const top = anchor?.top ?? 24;
  const offset = anchor?.offset ?? 34;
  document.documentElement.style.setProperty("--top", `${top}px`);
  document.documentElement.style.setProperty("--offset", `${offset}px`);

  wrap.classList.remove("left", "right");
  wrap.classList.add(anchor?.side === "left" ? "left" : "right");
}

function setVisible(visible) {
  if (visible) wrap.classList.remove("hidden");
  else wrap.classList.add("hidden");
}

window.addEventListener("message", (e) => {
  const d = e.data;
  if (!d || !d.action) return;

  if (d.action === "setup") setVars(d);
  if (d.action === "setVisible") setVisible(!!d.visible);
});
