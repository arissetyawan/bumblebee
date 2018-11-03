
        <%@include file="/layouts/header.jsp" %>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
        <style media="screen">
            /* Rating Star Widgets Style */
            .rating-stars ul {
              list-style-type:none;
              padding:0;

              -moz-user-select:none;
              -webkit-user-select:none;
            }
            .rating-stars ul > li.star {
              display:inline-block;
            }

            /* Idle State of the stars */
            .rating-stars ul > li.star > i.fa {
              font-size:2.5em; /* Change the size of the stars */
              color:#ccc; /* Color on idle state */
            }

            /* Hover state of the stars */
            .rating-stars ul > li.star.hover > i.fa {
              color:#FFCC36;
            }

            /* Selected state of the stars */
            .rating-stars ul > li.star.selected > i.fa {
              color:#FF912C;
            }
        </style>
        <div class="jumbotron">
            <div class="container text-center">
              <h1>Seller PT. Timbul Tenggelam</h1>      
              <p>Address: Jalan Medan Merdeka Jakarta</p>
              <p>Canceled: 10</p>
              <p>Ordered: 99</p>
            </div>
        </div>
        
        <div class="container">
            <form action="/kamumau/feedbacks?action=create" method="post"> 
                <div class="form-group">
                  <label>Order No:</label>
                  <input type="text" readonly value="454456" class="form-control" name="order_no" id="order_no">
                </div>
                <div class="form-group">
                  <label for="content">Comment:</label>
                  <textarea class="form-control" name="content"></textarea>
                </div>
                <div class="form-group">
                    <label for="sel1" >Rate : </label>
                    <input type="hidden" id="rating" name="rating" value="" />
                    <div class="rating-stars">
                    <section class='rating-widget'>
                        <!-- Rating Stars Box -->
                        <div class='rating-stars'>
                          <ul id='stars'>
                            <li class='star' title='Poor' data-value='1'>
                              <i class='fa fa-star fa-fw'></i>
                            </li>
                            <li class='star' title='Fair' data-value='2'>
                              <i class='fa fa-star fa-fw'></i>
                            </li>
                            <li class='star' title='Good' data-value='3'>
                              <i class='fa fa-star fa-fw'></i>
                            </li>
                            <li class='star' title='Excellent' data-value='4'>
                              <i class='fa fa-star fa-fw'></i>
                            </li>
                            <li class='star' title='WOW!!!' data-value='5'>
                              <i class='fa fa-star fa-fw'></i>
                            </li>
                          </ul>
                        </div>
                    </section>
                    <script>
                     $(document).ready(function(){
                       /* 1. Visualizing things on Hover - See next part for action on click */
                       $('#stars li').on('mouseover', function(){
                         var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on
                         // Now highlight all the stars that's not after the current hovered star
                         $(this).parent().children('li.star').each(function(e){
                           if (e < onStar) {
                             $(this).addClass('hover');
                           }
                           else {
                             $(this).removeClass('hover');
                           }
                         });
                       }).on('mouseout', function(){
                         $(this).parent().children('li.star').each(function(e){
                           $(this).removeClass('hover');
                         });
                       });
                       /* 2. Action to perform on click */
                       $('#stars li').on('click', function(){
                         var onStar = parseInt($(this).data('value'), 10); // The star currently selected
                         var stars = $(this).parent().children('li.star');
                         for (i = 0; i < stars.length; i++) {
                           $(stars[i]).removeClass('selected');
                         }
                         for (i = 0; i < onStar; i++) {
                           $(stars[i]).addClass('selected');
                         }
                         // JUST RESPONSE (Not needed)
                         var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
                         document.getElementById('rating').value = ratingValue;
                       });
                     });
                    </script>
                </div>
                </div>
                <input type="submit" class="btn btn-default" name="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
