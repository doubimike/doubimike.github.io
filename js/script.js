requirejs.config({
    paths: {
        jquery: 'jquery-1.12.2.min',
        fullPage: 'jquery.fullPage.min',
        velocity: 'velocity.min',
        velocityui: 'velocity.ui',
        circleProgress: 'circle-progress',
        backtop: 'backtop',
        bootstrap: 'bootstrap.min',
        jpreLoader: 'jpreloader.min'
    },
    shim: {
        velocity: {
            deps: ['jquery'],
            exports: 'velocity'
        },
        circleProgress: {
            deps: ['jquery'],
            exports: 'circleProgress'
        },
        bootstrap: {
            deps: ['jquery'],
            exports: 'bootstrap'
        },
        jpreLoader: {
            deps: ['jquery'],
            exports: 'jpreLoader'
        },

    }
});

requirejs(['jquery', 'fullPage', 'velocity', 'velocityui', 'circleProgress', 'backtop', 'bootstrap', 'jpreLoader'], function($, fullpage, velocity, velocityui, circleProgress, backtop, bootstrap, jpreLoader) {
    $(function() {
        $('body').jpreLoader({}, init);
        $('#fullpage').fullpage({
            sectionsColor: ['#3ABC99', '#5CBEC4', '#81A9BF', '#52C6DA', '#6799B8'],
            navigation: true,
            navigationTooltips: ['关于我', '作品', '工作履历'],
            anchors: ['page1', 'page2', 'page3'],
            menu: '#fullpageMenu',
            // fixedElements:'#fullpageMenu',
            // paddingTop: '50px',
            onLeave: function(index, nextIndex, direction) {
                var leavingSection = $(this);

                //after leaving section 2
                if(index==3){
                    // $('.foot--left').removeClass('step--left');
                    // $('.foot--right').removeClass('step--right');
                    
                }

                if (index==3 || index==2) {
                    setCircle();

                }

                if(index==1){
                    $('#fullpageMenu li').css('float', 'initial');
                }


            },
            afterLoad: function(anchorLink, index) {
                var loadedSection = $(this);

                //using index
                if (index == 3) {
                    setTimeout(function(){
                        $('.foot--left').addClass('step--left');
                    $('.foot--right').addClass('step--right');
                }, 1000);
                    $('.walk').width("100vw");
                    $('.walk-pic').css('left', '100vw');
                    setTimeout(function(){
                        $('.come-on-to-meet-me').css('opacity', '1');
                    },21000)
                };

                //using anchorLink
                if (anchorLink == 'secondSlide') {
                    // alert("Section 2 ended loading");
                }

                // if (index==1) {
                //     $('#fullpageMenu li').css('float', 'left');
                // }




            }
        });

        function init() {
            $('#about-me').velocity({
                opacity: '1',
            }, {
                duration: 1000
            });

            $('#skills').velocity({
                opacity: '1',
            }, {
                duration: 1000,
                delay: 100
            });

            setCircle();

            // $.Velocity
        };

        function setCircle() {
            $('#circle-html').circleProgress({
                value: .8
            }).on('circle-animation-progress', function(event, progress, stepValue) {
                $(this).find('strong').html((stepValue * 100).toFixed(0) + '<i>%</i>');
            });

            $('#circle-css').circleProgress({
                value: 0.7,
                fill: {
                    gradient: [
                        '#0681c4', ['#4ac5f8', .5]
                    ],
                    gradientAngle: Math.PI / 4
                }
            }).on('circle-animation-progress', function(event, progress, stepValue) {
                $(this).find('strong').html((stepValue * 100).toFixed(0) + '<i>%</i>');
            });

            $('#circle-js').circleProgress({
                value: 0.6,
                fill: {
                    gradient: [
                        '#3CA1CF', ['#A46A9B', .7]
                    ],
                    gradientAngle: Math.PI / 4
                }
            }).on('circle-animation-progress', function(event, progress, stepValue) {
                $(this).find('strong').html((stepValue * 100).toFixed(0) + '<i>%</i>');
            });

            $('#circle-jquery').circleProgress({
                value: 0.5,
                fill: {
                    gradient: [
                        ['#C6605C', .5],
                        '#A5BEC3',
                    ],
                    gradientAngle: Math.PI / 4
                }
            }).on('circle-animation-progress', function(event, progress, stepValue) {
                $(this).find('strong').html((stepValue * 100).toFixed(0) + '<i>%</i>');
            });

            $('#circle-python').circleProgress({
                value: 0.4,
                fill: { gradient: ['#47f', ['#bc4', 0.7]], gradientAngle: Math.PI / 4 }
            }).on('circle-animation-progress', function(event, progress, stepValue) {
                $(this).find('strong').html((stepValue * 100).toFixed(0) + '<i>%</i>');
            });
        }

        $('.weapon--taobao').on('mouseover', function(event) {
            event.preventDefault();
            $('.taobao').addClass('scale');
        });
        $('.weapon--taobao').on('mouseout', function(event) {
            event.preventDefault();
            $('.taobao').removeClass('scale');
        });

        $('.weapon--awwwards').on('mouseover', function(event) {
            event.preventDefault();
            $('.awwwards').addClass('scale');
        });
        $('.weapon--awwwards').on('mouseout', function(event) {
            event.preventDefault();
            $('.awwwards').removeClass('scale');
        });

    });


});
