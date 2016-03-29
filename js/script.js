requirejs.config({
    paths: {
        jquery: 'jquery-1.12.2.min',
        fullPage: 'jquery.fullPage.min',
        velocity: 'velocity.min',
        velocityui: 'velocity.ui',
        circleProgress: 'circle-progress',
        backtop: 'backtop',
        bootstrap: 'bootstrap.min'
    }
});

requirejs(['jquery', 'fullPage', 'velocity', 'velocityui', 'circleProgress', 'backtop', 'bootstrap'], function($, fullpage, velocity, velocityui, circleProgress, backtop, bootstrap) {
    $(function() {
        $('#fullpage').fullpage({
            sectionsColor: ['#3ABC99', '#5CBEC4', '#81A9BF', '#52C6DA', '#6799B8'],
            navigation: true,
            navigationTooltips: ['关于我', '提供主要技能', '技能证明', '工作经历', '转行原因'],
            anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
            menu: '#fullpageMenu',
            // fixedElements:'#fullpageMenu',
            paddingTop: '50px',
        });

        $('#about-me').velocity({
            opacity:'1',
        },{
            duration:1000
        });

        $('#skills').velocity({
            opacity:'1',
        },{
            duration:1000,
            delay:100
        });

        $('#circle-html').circleProgress({
            value: .8
        }).on('circle-animation-progress', function(event, progress,stepValue) {
            $(this).find('strong').html((stepValue*100).toFixed(0)+'<i>%</i>');
        });

        $('#circle-css').circleProgress({
            value: 0.7,
            fill: { gradient: [
                    '#0681c4',
                    ['#4ac5f8', .5]
                ], gradientAngle: Math.PI / 4 }
        }).on('circle-animation-progress', function(event, progress, stepValue) {
            $(this).find('strong').html((stepValue*100).toFixed(0)+'<i>%</i>');
        });

        $('#circle-js').circleProgress({
            value: 0.6,
            fill: { gradient: [
                    '#3CA1CF',
                    ['#A46A9B', .7]
                ], gradientAngle: Math.PI / 4 }
        }).on('circle-animation-progress', function(event, progress, stepValue) {
            $(this).find('strong').html((stepValue*100).toFixed(0)+'<i>%</i>');
        });

        $('#circle-jquery').circleProgress({
            value: 0.5,
            fill: { gradient: [
                    ['#C6605C', .5],
                    '#A5BEC3', 
                ], gradientAngle: Math.PI / 4 }
        }).on('circle-animation-progress', function(event, progress, stepValue) {
            $(this).find('strong').html((stepValue*100).toFixed(0)+'<i>%</i>');
        });

        $('#circle-python').circleProgress({
            value: 0.4,
            fill: { gradient: ['#47f', ['#bc4', 0.7]], gradientAngle: Math.PI / 4 }
        }).on('circle-animation-progress', function(event, progress, stepValue) {
            $(this).find('strong').html((stepValue*100).toFixed(0)+'<i>%</i>');
        });

        new backtop($('#backTop'), {
            mode: 'move',
            pos: 500,
            speed: 2000,
            dest: 0
        });
    });


});
