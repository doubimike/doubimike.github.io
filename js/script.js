requirejs.config({
    paths: {
        jquery: 'jquery-1.12.2.min',
        fullPage: 'jquery.fullPage.min',
        velocity: 'velocity.min',
        velocityui: 'velocity.ui',
        circleProgress: 'circle-progress',
    }
});

requirejs(['jquery', 'fullPage', 'velocity', 'velocityui', 'circleProgress'], function($, fullpage, velocity, velocityui, circleProgress) {
    $('#fullpage').fullpage({
        sectionsColor: ['#3ABC99', '#5CBEC4', '#81A9BF', '#52C6DA', '#6799B8'],
        navigation: true,
        navigationTooltips: ['关于我', '提供主要技能', '技能证明', '工作经历', '转行原因'],
        anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
        menu: '#fullpageMenu',
        // fixedElements:'#fullpageMenu',
        paddingTop: '50px',
    });

    $('#circle-html').circleProgress({
        value: 0.6
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(parseInt(100 * progress) + '<i>%</i>');
    });

    $('#circle-css').circleProgress({
        value: 0.75,
        size: 80,
        fill: {
            gradient: ["red", "orange"]
        }
    });

    $('#circle-js').circleProgress({
        value: 0.75,
        size: 80,
        fill: {
            gradient: ["red", "orange"]
        }
    });

    $('#circle-jquery').circleProgress({
        value: 0.75,
        size: 80,
        fill: {
            gradient: ["red", "orange"]
        }
    });


});
