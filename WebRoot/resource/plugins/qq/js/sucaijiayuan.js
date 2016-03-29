/* =================================================
//
// jQuery Fixed Plugins 1.3.1
// author : �زļ�԰
// Url: www.sucaijiayuan.com
// Data : 2012-03-30
//
// ���� : float --> ����[left or right]
//		  minStatue --> ��С״̬��ֻ��show_btn
//		  skin      --> Ƥ������
//		  durationTime --> ���ʱ��
//����  :	
  $("#scrollsidebar2").fix({
	float : 'right',	//default.left or right 
	minStatue : true,	//default.false or true 
	skin : 'green',		//default.gray or yellow ��blue ��green ��orange ��white 
	durationTime : 1000 //
  });
//
// =================================================*/

(function($){
    $.fn.fix = function(options){
        var defaults = {
            float : 'right',
			minStatue : false,
			skin : 'blue',
			durationTime : 1000	
        }
        var options = $.extend(defaults, options);		

        this.each(function(){			
            //��ȡ����
			var thisBox = $(this),
				closeBtn = thisBox.find('.close_btn' ),
				show_btn = thisBox.find('.show_btn' ),
				sideContent = thisBox.find('.side_content'),
				sideList = thisBox.find('.side_list')
				;	
			var defaultTop = thisBox.offset().top;	//�����Ĭ��top	
			
			thisBox.css(options.float, 0);			
			if(options.minStatue){
				$(".show_btn").css("float", options.float);
				sideContent.css('width', 0);
				show_btn.css('width', 25);
				
			}
			//Ƥ������
			if(options.skin) thisBox.addClass('side_'+options.skin);
				
						
			//����scroll�¼�			
			$(window).bind("scroll",function(){
				var offsetTop = defaultTop + $(window).scrollTop() + "px";
	            thisBox.animate({
	                top: offsetTop
	            },
	            {
	                duration: options.durationTime,	
	                queue: false    //�˶����������붯������
	            });
			});	
			//close�¼�
			closeBtn.bind("click",function(){
				sideContent.animate({width: '0px'},"fast");
            	show_btn.stop(true, true).delay(300).animate({ width: '25px'},"fast");
			});
			//show�¼�
			 show_btn.click(function() {
	            $(this).animate({width: '0px'},"fast");
	            sideContent.stop(true, true).delay(200).animate({ width: '154px'},"fast");
	        });
				
        });	//end this.each

    };
})(jQuery);