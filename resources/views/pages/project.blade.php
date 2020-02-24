<section id="projects" class="content-section">
    <div class="section-heading">
        <h1>Recent<br><em>Works</em></h1>
        <p>Praesent pellentesque efficitur magna, 
        <br>sed pellentesque neque malesuada vitae.</p>
    </div>
    <div class="section-content">
        <div class="masonry">
            <div class="row">
                @if ($lastProducts) 
                    @foreach ($lastProducts as $lastProduct)                           
                        <div class="item">
                            <div class="col-md-4">
                            <a href="/storage/{{$lastProduct->picture}}" data-lightbox="image"><img src="/storage/{{$lastProduct->picture}}" alt="image 1"></a>
                            </div>
                        </div>
                    @endforeach                  
                @endif
            </div>
        </div>
    </div>            
</section>