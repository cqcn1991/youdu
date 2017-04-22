class MiscController < ApplicationController
  
  def tjhot
    @page_title = 'TJ Hot'
    params[:sort] ||= 'hot'
    articles = YAML.load_file('articles2.yaml').sort_by { |x| x[:time] }.reverse
                   .select{ |x| x[:time]> 7.days.ago}
    @last_update_time =articles.first[:time]
        if params[:sort] == 'new'
      @articles = articles.sort_by { |x| x[:time] }.reverse
    else
      @articles = articles.select{ |x| x[:read_number].presence && x[:read_number] > 200 }.sort_by { |x| x[:read_number] }.reverse
    end
    @articles=@articles.first(75)
  end

  def zhihu
    @page_title = '知乎·原点'
    @reaches =
        [{title:'怎么实现你的idea？',
          description:'非计算机专业的学生，自学了iOS和Ruby on Rails写程序，按照自己的idea做了网站和App',
          participate_num:'1/2', location:'上海', user_name:'知乎用户',
          user_avatar:'https://qph.is.quoracdn.net/main-thumb-9413274-50-mbenbnoyrodohvkkaxhwzjizjymgryyo.jpeg'},
         {title:'跑步&健身',
          description:'如果请不起私教的话，有问题可以问我',
          participate_num:'3/3', location:'深圳', user_name:'知乎用户',
          user_avatar:'http://img3.douban.com/icon/u53284064-54.jpg'},
         {title:'学渣其实也可以考GRE',
          description:'普通985，211学生，花了钱上了不少新东方的课，发现无论是背单词、还是阅读，都有非常非常好的方法，学英语没有那么难',
          participate_num:'2/3', location:'线上', user_name:'知乎用户',
          user_avatar:'http://img3.douban.com/icon/u5409823-52.jpg'},
         {title:'高数狂飙奋进突击队',
          description:'好吧，其实我也不会太多，大家一起互相学习啦',
          participate_num:'0/3', location:'附近100米', user_name:'知乎用户',
          user_avatar:'http://img3.douban.com/icon/u1529759-5.jpg'},
         {title:'即便是女汉子也要学化妆啊！',
          description:'以前都是听爸爸妈妈的，安心读书上学，可说快要步入社会了，才发现完全不会打扮穿衣服。希望可以帮助曾经的我',
          participate_num:'2/3', location:'杭州', user_name:'匿名用户',
          user_avatar:'http://img3.doubanio.com/icon/user_normal.jpg'},
         {title:'怎么拍出好看的相片',
          pro: true,
          description:'专业摄影师。镜头、测光，还有后期PS调色，都可以问我',
          participate_num:'1/5', location:'附近5公里', user_name:'知乎用户',
          user_avatar:'http://img3.doubanio.com/icon/u41038088-6.jpg'}

        ]
  end

end