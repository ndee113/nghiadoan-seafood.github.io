<h2 style="text-align:center">Liệt kê sản phẩm</h2>
<?php
    if(!empty($_GET['msg'])){
        $msg = unserialize(urldecode($_GET['msg']));
        foreach($msg as $key => $value){
            echo '<span style="color:red; font-weight:bold">'.$value.'</span>';
        }
    }
?>
<div class="container">        
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Tên sản phẩm</th>
        <th>Danh mục</th>
        <th>Hình ảnh</th>
        <th>Giá sản phẩm</th>
        <th>Số lượng</th>
        <th>Mô tả</th>
        <th>Sản phẩm hot</th>
        <th>Quản lý</th>
      </tr>
    </thead>
    <tbody>
    <?php
    $i = 0;
        foreach($product as $key => $pro){
            $i ++;
    ?>
      <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $pro['title_product'] ?></td>
        <td><?php echo $pro['title_category_product']?></td>
        <td><img src="<?php echo BASE_URL ?>/public/uploads/product/<?php echo $pro['image_product']?>" height="100" width="100"></td>
        <td><?php echo number_format($pro['price_product'],0,',','.').'đ'?></td>
        <td><?php echo $pro['quantity_product']?></td>
        <td><?php echo $pro['desc_product']?></td>
        <td><?php if ($pro['product_hot']==0){
          echo "Không có";
        }else{
          echo "Có";
        }
        ?></td>
        <td><a href="<?php echo BASE_URL?>Product/delete_product?id=<?php echo $pro['id_product']?>">Xóa</a> || <a href="<?php echo BASE_URL?>product/edit_product?id=<?php echo $pro['id_product']?>">Cập nhật</a> </td>
      </tr>
    <?php
        }
    ?>
    </tbody>
  </table>
</div>
