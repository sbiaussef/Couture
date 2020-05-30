<section id="collections" class="content-section">
    <div class="section-heading">
        <h1>Recent<br><em>Works</em></h1>
        <p>Praesent pellentesque efficitur magna, 
        <br>sed pellentesque neque malesuada vitae.</p>
    </div>
    <div class="row">
        @if ($lastProducts) 
            @foreach ($lastProducts as $lastProduct)                           
                <div class="item" data-aos="fade-up"
                data-aos-duration="3000">
                
                    <div class="col-xs-12 col-sm-6 col-md-4">
                    <a href="/storage/{{collect((json_decode($lastProduct->pictures)))->first()}}" data-lightbox="image"><img src="/storage/{{collect((json_decode($lastProduct->pictures)))->first()}}" class="img-responsive project-img" alt="image 1"></a>
                    </div>
                </div>
            @endforeach                  
        @endif
    </div>            
</section>