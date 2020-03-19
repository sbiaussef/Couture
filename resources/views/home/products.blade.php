        <section id="products" class="content-section" >
                <div class="section-heading">
                    <h1>Our<br><em>Products</em></h1>
                    <p>Curabitur hendrerit mauris mollis ipsum vulputate rutrum. 
                    <br>Phasellus luctus odio eget dui imperdiet.</p>
                </div>
                <div class="section-content" data-aos="flip-left"
                data-aos-easing="ease-out-cubic"
                data-aos-duration="2000">
                    <div class="tabs-content">
                        <div class="wrapper">
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                              <li><a href="#tab1" class="active">Caftans</a></li>
                              <li><a href="#tab2">Djellabas </a></li>
                              <li><a href="#tab3">Gandouras</a></li>
                              <li><a href="#tab4">Combinaisons</a></li>
                              <li><a href="#tab5">Robes</a></li>
                              <li><a href="#tab6">Accessoires</a></li>
                            </ul>
                            <section id="first-tab-group" class="tabgroup">
                                @if ($productsCategoy->isNotEmpty())
                                <div id="tab1">
                                    <ul>
                                            @foreach ($productsCategoy as $product)                                                
                                            @if ($product->category->categoryName == 'Caftans')
                                            <li>
                                                <div class="item">
                                                    
                                                <img src="storage/{{collect((json_decode($product->pictures)))->first()}}" alt="">
                                                    <div class="text-content">
                                                        <h4>{{ $product->productName }}</h4>
                                                        <span>{{($product->created_at)->toFormattedDateString()}}</span>
                                                        <p>{{ str_limit($product->productDescription,'50','...') }}</p>
                                                        
                                                        <div class="accent-button button">
                                                            <a href="{{url('product/'.$product->slug)}}" target="_blank">Show more</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            @endif
                                            @endforeach
                                        
                                    </ul>
                                </div>
                                <div id="tab2">
                                    <ul>
                                        @foreach ($productsCategoy as $product)                                                
                                        @if ($product->category->categoryName == 'Djellabas')
                                        <li>
                                            <div class="item">
                                            <img src="storage/{{collect((json_decode($product->pictures)))->first()}}" alt="">
                                                <div class="text-content">
                                                    <h4>{{ $product->productName }}</h4>
                                                    <span>{{($product->created_at)->toFormattedDateString()}}</span>
                                                    <p>{{ $product->productDescription }}</p>
                                                    
                                                    <div class="accent-button button">
                                                        <a href="{{url('product/'.$product->slug)}}" target="_blank">Show more</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </div>
                                <div id="tab3">
                                    <ul>
                                        @foreach ($productsCategoy as $product)                                                
                                        @if ($product->category->categoryName == 'Gandouras')
                                        <li>
                                            <div class="item">
                                            <img src="storage/{{collect((json_decode($product->pictures)))->first()}}" alt="">
                                                <div class="text-content">
                                                    <h4>{{ $product->productName }}</h4>
                                                    <span>{{($product->created_at)->toFormattedDateString()}}</span>
                                                    <p>{{ $product->productDescription }}</p>
                                                    
                                                    <div class="accent-button button">
                                                        <a href="{{url('product/'.$product->slug)}}" target="_blank">Show more</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </div>
                                <div id="tab4">
                                    <ul>
                                        @foreach ($productsCategoy as $product)                                                
                                        @if ($product->category->categoryName == 'Combinaisons')
                                        <li>
                                            <div class="item">
                                            <img src="storage/{{collect((json_decode($product->pictures)))->first()}}" alt="">
                                                <div class="text-content">
                                                    <h4>{{ $product->productName }}</h4>
                                                    <span>{{($product->created_at)->toFormattedDateString()}}</span>
                                                    <p>{{ $product->productDescription }}</p>
                                                    
                                                    <div class="accent-button button">
                                                        <a href="{{url('product/'.$product->slug)}}" target="_blank">Show more</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </div>
                                <div id="tab5">
                                    <ul>
                                        @foreach ($productsCategoy as $product)                                                
                                        @if ($product->category->categoryName == 'Robes')
                                        <li>
                                            <div class="item">
                                            <img src="storage/{{collect((json_decode($product->pictures)))->first()}}" alt="">
                                                <div class="text-content">
                                                    <h4>{{ $product->productName }}</h4>
                                                    <span>{{($product->created_at)->toFormattedDateString()}}</span>
                                                    <p>{{ $product->productDescription }}</p>
                                                    
                                                    <div class="accent-button button">
                                                        <a href="{{url('product/'.$product->slug)}}" target="_blank">Show more</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </div>
                                <div id="tab6">
                                    <ul>
                                        @foreach ($productsCategoy as $product)                                                
                                        @if ($product->category->categoryName == 'Accessoires')
                                        <li>
                                            <div class="item">
                                            <img src="storage/{{collect((json_decode($product->pictures)))->first()}}" alt="">
                                                <div class="text-content">
                                                    <h4>{{ $product->productName }}</h4>
                                                    <span>{{($product->created_at)->toFormattedDateString()}}</span>
                                                    <p>{{ $product->productDescription }}</p>
                                                    
                                                    <div class="accent-button button">
                                                        <a href="{{url('product/'.$product->slug)}}" target="_blank">Show more</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </div>
                                @endif
                            </section> 
                        </div>
                    </div>
                </div>
            </section>