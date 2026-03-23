<?php
// setcookie("site[layout]", "boxed", time() + 2 * 30 * 24 * 60 * 60 + 5 * 24 * 60 * 60);
// setcookie("site[font]", "boxed", time() + 2 * 30 * 24 * 60 * 60 + 5 * 24 * 60 * 60);
// setcookie("site[blue]", "boxed", time() + 2 * 30 * 24 * 60 * 60 + 5 * 24 * 60 * 60);

setcookie("site[layout]", "boxed", strtotime("+1 year"), "/");
setcookie("site[font]", "boxed", strtotime("+1 year"), "/");
setcookie("site[blue]", "boxed", strtotime("+1 year"), "/");

?>