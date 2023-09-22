<?php
$arrs = ['PHP', 'HTML', 'CSS', 'JS'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>

<body>
    <table>
        <tr>
            <th>Tên khóa học</th>
        </tr>
        <?php foreach ($arrs as $item) { ?>
            <tr>
                <td><?php echo "$item" ?></td>
            </tr>
        <?php } ?>
    </table>

    <style>
        table,
        td,
        th {
            border: 2px solid black;
        }

        table {
            border-collapse: collapse;
        }

    </style>
</body>

</html>