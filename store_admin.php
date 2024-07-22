<?php
require __DIR__ . '/parts/admin-required.php';
$title = "門市資訊";
$pageName = "ab_add";

$perPage = 30; #一頁最多30筆資料
$page = isset($_GET['page']) ? intval($_GET['page']) :1;
if($page<1){
  header('Location: ?page=1'); #跳轉頁面
  exit;
}

require __DIR__ . '/db-connect.php';
$t_sql = "SELECT COUNT(1) FROM storetable1";

$totalRows = $pdo->query($t_sql)->fetch(PDO::FETCH_NUM)[0];
$totalPages=0;
$rows=[];
if($totalRows){
  $totalPage = ceil($totalRows/$perPage);
  if($page>$totalPage){
    header('Location: ?page=' .$totalPages);
    exit;
  }

 $sql=sprintf("  SELECT 
storetable1.s_id,
storetable1.s_name,
storetable1.s_pic,
storetable1.s_address,
storetable1.open_time,
storetable1.close_time,
storetable1.s_phone,
storetable1.s_city,
storetable1.s_area,
storetable1.s_table,
storetable1.s_people,
GROUP_CONCAT(service1.service_type SEPARATOR '， ') AS service
FROM
  storetable1
LEFT JOIN tablemerge ON storetable1.s_id = tablemerge.s_id
LEFT JOIN service1 ON service1.service_id = tablemerge.service_id
GROUP BY s_id
ORDER BY s_id;

   LIMIT %s, %s",
  ($page - 1) * $perPage,
  $perPage
 );
}

$rows = $pdo->query($sql)->fetchAll();

?>
<?php include __DIR__ ."/parts/html-head.php"; ?>
<?php include __DIR__ ."/parts/navbar.php"; ?>
<div class="container">
 <div class="row">
  <div class="col">
  <table class="table table-bordered table-striped" style="background-color: aliceblue;">
  <thead>
    <tr>
      <th>門市ID</th>
      <th>門市名稱</th>
      <th>圖片</th>
      <th>門市店址</th>
      <th>營業時間</th>
      <th>結束時間</th>
      <th>門市電話</th>
      <th>城市</th>
      <th>區域</th>
      <th>座位</th>
      <th>可預約數</th>
      <th>門市服務</th>
      <th>編輯</th>
      <th>刪除</th>
      <th>
        <a href="add.php" scope="col" class="btn btn-primary">新增店家</a>
      </th>
    </tr>
  </thead>
  <tbody>
    <?php foreach($rows as $r) : ?>
      <tr>
        <td><?= $r['s_id'] ?></td>
        <td><?= $r['s_name'] ?></td>
        <td><img style="width: 180px;" src="pic/<?= $r['s_pic'] ?>" alt=""></td>
        <td><?= $r['s_address'] ?></td>
        <td><?= $r['open_time'] ?></td>
        <td><?= $r['close_time'] ?></td>
        <td><?= $r['s_phone'] ?></td>
        <td><?= $r['s_city'] ?></td>
        <td><?= $r['s_area'] ?></td>
        <td><?= $r['s_table'] ?></td>
        <td><?= $r['s_people'] ?></td>
        <td><?= $r['service'] ?></td>
        <td><a href="store_edit.php?s_id=<?= $r['s_id'] ?>"><i class="fa-solid fa-pen-to-square"></i></a></td>
        <td>
          <a href="./store.del.php?s_id=<?= $r['s_id'] ?>"onclick="return confirm(`是否要刪除這筆資料?`)"><i class="fa-solid fa-trash"></i></a>
        </td>
      </tr>
    <?php endforeach; ?>
  </tbody>
</table>
  </div>
 </div>


<?php include __DIR__ ."/parts/scripts.php"; ?>
<script>
  const data=<?= json_encode($rows) ?>;
</script>

<?php include __DIR__ ."/parts/html-footer.php"; ?>