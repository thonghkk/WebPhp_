</div>

<footer class="footer">
  	 <div class="container_footer">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>company</h4>
  	 			<ul>
  	 				<li><a href="http://localhost:7882/webphp/gioi-thieu.php">about us</a></li>
  	 				<li><a href="#">our services</a></li>
  	 				<li><a href="#">privacy policy</a></li>
  	 				<li><a href="#">affiliate program</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>get help</h4>
  	 			<ul>
  	 				<li><a href="#">FAQ</a></li>
  	 				<li><a href="#">shipping</a></li>
  	 				<li><a href="#">returns</a></li>
  	 				<li><a href="#">order status</a></li>
  	 				<li><a href="#">payment options</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>online shop</h4>
                   <ul>
                     <?php foreach ($category as $item) :?>
                    <li> <a href="danh-muc-san-pham.php?id=<?php echo $item['id']  ?>"> <?php echo $item['name'] ?> </a></li>
                    <?php endforeach; ?>
                    </ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>follow us</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 </div>
  </footer>





</div>
</div>
</div>  
</div>
<script src="/webphp/public/frontend/js/slick.min.js"></script>
</body>

</html>
<script type="text/javascript">
$(function() {
    $hidenitem = $(".hidenitem");
    $itemproduct = $(".item-product");
    $itemproduct.hover(function() {
        $(this).children(".hidenitem").show(100);
    }, function() {
        $hidenitem.hide(500);
    })
})
$(function() {
    $updatecart = $(".updatecart");
    $updatecart.click(function(e) {
        e.preventDefault();
        $qty = $(this).parents("tr").find("#qty").val();
        console.log($qty);
        $key = $(this).attr("data-key");
        $.ajax({
            url: 'cap-nhat-gio-hang.php',
            type: 'GET',
            data: {
                'qty': $qty,
                'key': $key
            },
            success: function(data) {
                if (data == 1) {
                    alert("Cập nhật thành công");
                    location.href = 'gio-hang.php';
                }
            }
        });
    })
})
</script>