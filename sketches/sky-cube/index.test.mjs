import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

const html = await readFile(new URL("./index.html", import.meta.url), "utf8");

test("mirrored texture joins overlap and feather instead of forming a hard crease", () => {
  assert.match(html, /\.texture-tile\s*{[^}]*width:\s*27%/s);
  assert.match(html, /mask-image:\s*linear-gradient\(to right, transparent, #000 7\.407%, #000\)/);
  assert.match(html, /index < 5/);
});
