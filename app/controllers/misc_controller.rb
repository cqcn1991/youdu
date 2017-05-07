class MiscController < ApplicationController

  def youdu
    @books=BOOKS::ALL

    @reviews =
    [
        {user:'旗帜', likes: 22,
         content:
             '20160609-20160708。本书只是讲了耐克草创时期的人和事。他害羞内向的性格，他无限热爱的事业，他的志同道合的朋友们，他的感情史，他面对竞争对手的害怕和绝地反击。作者一直说他害羞，其实书中不乏笑点，想必也是一个闷骚男。'
        },
        {user:'W', likes: 31,
         content:'耐克创始人回忆录，一群shoe dogs的坚持成就了今日的耐克。耐克前18年是跌宕起伏的18年，与鬼冢虎的恩恩怨怨，与银行的博弈现金流的枯竭，甚至遇到政治阻力，精彩纷呈。1962年，奈特先生去日本Kobe(神户)与鬼冢株式会社谈判代理Tiger牌运动鞋事宜，后来科比和老虎都成为耐克最具影响力的代言人，冥冥之中有天意'
        }]

  end

  def borrow_book

  end

  def qunachi

  end

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

end