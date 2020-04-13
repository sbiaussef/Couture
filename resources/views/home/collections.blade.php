<section id="collections" class="content-section" >
    <div class="section-heading">
        <h1>Our<br><em>Collections</em></h1>
        <p>Praesent pellentesque efficitur magna, 
        <br>sed pellentesque neque malesuada vitae.</p>
    </div>
    <div class="section-content">
        <div class="owl-carousel owl-theme">
            @if ($collections)
               @foreach ($collections as $collection)
               <div class="item" data-aos="fade-down"
               data-aos-easing="linear"
               data-aos-duration="1500"data-aos="fade-up"
               data-aos-duration="3000">
                <div class="image">
                <img src="/storage/{{$collection->picture}}" alt="">
                    <div class="featured-button button">
                    <a href="{{url('collection/'.$collection->slug)}}" target="_blank">Show More</a>
                    </div>
                </div>
                <div class="text-content" id="collect">
                <h4>{{$collection->name}}</h4>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus, tempore dolor quia magni assumenda iste saepe voluptatibus mollitia quis.
                    </p>
                </div>
            </div>
               @endforeach 
            @endif

        </div>
    </div>
</section>