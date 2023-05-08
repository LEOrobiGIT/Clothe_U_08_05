<?php

unset($_SESSION['user']);
echo '<script>location.href = "'.ROOT_URL.'?page=homepage.php"</script>';
exit;
?>