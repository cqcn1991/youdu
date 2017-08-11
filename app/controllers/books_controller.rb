class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    # @books=BOOKS::ALL
    @books = [
        { title:'寻欢作乐',
          url: 'https://book.douban.com/subject/10768068/',
          cover: 'https://img3.doubanio.com/lpic/s26031482.jpg',
          sample_url: 'https://read.douban.com/reader/ebook/1071097/',
          rating: 8.4,
          ratings_num: 4189,
          category: '小说 / 英国文学 / 毛姆',
          reviews: [
              {user: '看不见的城市', user_url: 'https://www.douban.com/people/fayolee/', likes: 28, content:
                  '不腹黑会死星人的吐槽集大成之作。'
              },
              {user: '蜜三刀', user_url: 'https://www.douban.com/people/1032498/', likes: 29, content:
                  '冷峭的文笔下掩盖着一颗热忱的心。熙来攘往的名利场上的一位红尘佳人。当小说家的好处是，可以让旧日时光重现，让曾经爱过的、已经死去的人在故事里复活，让她从他的隐秘情人变成受读者供奉的女神。'
              },
              {user: '轱辘', user_url:'https://www.douban.com/people/gu_lu/', likes: 18, content:
                  '＂对于永恒的心灵而言，一个人一生的痛苦和奋斗只不过是个笑话而已。＂'
              },
          ],
          borrow_info: {avaiable: true,
                        borrower: {user_name: 'Ginsa', user_url: 'https://www.douban.com/people/4581134/', record_num: 4, distance: 1500, avatar:
                            'https://img3.doubanio.com/icon/ul4581134-5.jpg'
                        }
          },
          marker_id: 'marker1',
        },
        { title:'硅谷钢铁侠',
          marker_id: 'marker6',
          url: 'https://book.douban.com/subject/26759508/',
          cover: 'https://img3.doubanio.com/lpic/s28571694.jpg',
          sample_url: 'https://read.douban.com/reader/ebook/20908325/',
          rating: 8.1,
          ratings_num: 2137,
          category: '传记 / 科技 / 商业',
          reviews: [
              {user: 'Moon', user_url:'', likes: 10, content:
                  '读下来挺过瘾的，很有趣的一本传记，或许只有把生活搞得极端混乱的人才能有极致的成就。'
              },
              {user: '飞林沙', user_url:'', likes: 13, content:
                  '我不知道Musk在中国能否复制，这种给员工的高压管理模式在如今浮躁的互联网行业是否有员工能忍受得了，不过也许只有这样每周九十个小时甚至更久的工作，这样的信仰才能把事情做到极致。如果能有机会去这样拼搏一次，也许会是非常美妙的生命体验。'
              },
              {user: 'XDash', user_url:'', likes: 7, content:
                  '牛逼的Leader都是天才，但是不是每个天才都能成为好的Leader，选择的都是冷门行业，做的都是别人认为不可能成功的事儿… 几经波折成功只是比失败多出一个转身的距离！'
              },
          ],
          borrow_info: {avaiable: true,
                        borrower: {user_name: '阳志平', user_url: 'https://www.douban.com/people/ouyangzhiping/', record_num: 3, distance: 2500, avatar:
                            'https://img1.doubanio.com/icon/ul2352991-7.jpg'
                        }
          }
        },
        { title:'鞋狗',
          marker_id: 'marker2',
          url: 'https://book.douban.com/subject/26860776/',
          cover: 'https://img3.doubanio.com/lpic/s29067926.jpg',
          sample_url: 'https://read.douban.com/reader/ebook/35010810/',
          rating: 8.4,
          ratings_num: 1020,
          category: '传记 / 商业 / 耐克',
          reviews: [
              {user: '借物の阿莉埃蒂', user_url:'', likes: 5, content:
                  '“跑步是一种独特的体验，它融合了人类的两种原始冲动：恐惧与快感。无论是害怕了还是快活了，我们都会去跑步。既是奔跑着逃开不幸，也是奔跑着追寻幸福。” “我们正在创立一个品牌，更是要打造一种文化，我们正在与随波逐流，无聊乏味，和苦不堪言做斗争。我们卖的不仅仅是一种财富，更是一种理念，一种精神。”，充满斗志，包含乐观与幽默，好几个段落，都把我逗乐了，喜欢这种轻松自在的行文。'
              },
              {user: 'dodo', user_url:'', likes: 19, content:
                  '这本书就一个缺点，没用一整篇单独说与乔丹的合作，而那次合作缔造了世界级的耐克，使耐克实现了飞越。文字描述细腻柔和，对人物的刻画到了生动的地步，不动声色道出成功秘诀。没想到自传可以这么好看。'
              },
          ],
          borrow_info: {avaiable: true,
                        borrower: {user_name: '翻滚吧_HanG', user_url: 'https://www.douban.com/people/forhang/', record_num: 13, distance: 3600, avatar:
                            'https://img3.doubanio.com/icon/ul36416071-16.jpg'
                        }
          }
        },
        { title:'世界的凛冬',
          marker_id: 'marker3',
          url: 'https://book.douban.com/subject/26957760/',
          cover: 'https://img1.doubanio.com/lpic/s29331058.jpg',
          sample_url: 'https://read.douban.com/reader/ebook/31842175/',
          rating: 9.3,
          ratings_num: 3541,
          category: '世纪三部曲 / 历史 /小说 ',
          reviews: [
              {user: 'harmenyinn', user_url:'', likes: 130, content:
                  '我亲眼目睹，每一个迈向死亡的生命都在热烈地生长。'
              },
              {user: '蜗牛有个家', user_url:'', likes: 71, content:
                  '世纪三部曲的第二部，故事紧接着《巨人的陨落》。这次阅读像冲浪，在情节和人物的跌宕起伏里无声尖叫，啪！被肯叔的最后一行字拍在沙滩上。仰天，动弹不了，只能等着下一波更大的浪头。一直等。没有文字可以形容我的痴迷。'
              },
              {user: '340', user_url:'', likes: 46, content:
                  '最严谨的故事，最好读的历史'
              },
          ],
          borrow_info: {avaiable: false,
                        wishers: [
                            {user_name: '蜗牛有个家', user_url: 'https://www.douban.com/people/41503811/', distance: 500, avatar:
                                'https://img3.doubanio.com/icon/ul41503811-2.jpg'
                            },
                            {user_name: '巴伐利亚酒神', user_url: 'https://www.douban.com/people/darkwood/', avatar:
                                'https://img3.doubanio.com/icon/ul1218430-392.jpg'
                            },
                            {user_name: 'harmenyinn', user_url: 'https://www.douban.com/people/wendys/', avatar:
                                'https://img3.doubanio.com/icon/ul44455962-62.jpg'
                            },
                        ],
          }
        },
        { title:'怎样鉴别黄色歌曲',
          marker_id: 'marker4',
          url: 'https://book.douban.com/subject/1963786/',
          cover: 'https://img3.doubanio.com/lpic/s4413863.jpg',
          sample_url: 'https://read.douban.com/reader/ebook/1071097/',
          rating: 8.5,
          ratings_num: 3119,
          category: '音乐 / 中国 / 历史',
          reviews: [
              {user: '九姨太鄭爽醬', likes: 48, user_url: 'https://www.douban.com/people/zhengshuang/', content:
                  '全靠这本书 我戒除了手淫 感谢'
              },
              {user: '她还没有死', likes: 72, user_url: 'https://www.douban.com/people/deathnroll/', content:
                  '想当年我们乐队就是被这本书弄垮的 讨厌哦'
              },
              {user: 'Lebenswelt', likes: 24, user_url: 'https://www.douban.com/people/mujun_soc/', content:
                  '“许多表现妇女失恋或被遗弃时哀怨悲苦情调的黄色歌曲，它们并不是出于对这些被凌辱的妇女的同情，也不是为了表现她们的不幸，而是为了她们要博取廉价的怜爱的需要。”'
              },
          ],
          borrow_info: {avaiable: false,
                        wishers: [
                            {user_name: '陈忘风', user_url: 'https://www.douban.com/people/135468115/', distance: 1500, avatar:
                                'https://img3.doubanio.com/icon/ul135468115-1.jpg'
                            },
                            {user_name: '', user_url: '', avatar:
                                'https://img3.doubanio.com/icon/ul137628428-1.jpg'
                            },
                        ],
          }
        },
        { title:'人民的名义',
          marker_id: 'marker5',
          cover: 'https://img3.doubanio.com/lpic/s29420424.jpg',
          url: 'https://book.douban.com/subject/26952485/',
          sample_url: 'https://read.douban.com/reader/ebook/1071097/',
          rating: 7.4,
          ratings_num: 5820,
          category: '官场小说 / 反腐 / 政治小说',
          reviews: [
              {user: '木讷乡下人', likes: 18, user_url: 'https://www.douban.com/people/liuxiangyu92812/', content:
                  '如果在扳倒前任省委书记之后戛然而止，这部小说顶多三星半，毕竟类似作品见得太多了。但作者偏偏“狗尾续貂”了几章，写了一下人民也是有他的局限性的，我反而觉得这是一部值得鼓励的作品了。很真实，很痛心——所有的人似乎都有他不足的那一面，只是好在大多数人都还有可取的地方'
              },
              {user: 'sleepy Mia', likes: 22, user_url: 'https://www.douban.com/people/sleepymia/', content:
                  '奇怪，电视剧分数那么高，书反而一般。明明书比电视剧好吧，干净利落，不像电视剧那么拖沓啰嗦还加了一大堆莫名其妙的家长里短，人物塑造也算得上精准合理，比起电视剧里面脑残林华华爱哭的毛毛虫之流正常多了好嘛……'
              },
              {user: '欧阳杼', likes: 779, user_url: 'https://www.douban.com/people/ouyangzhu/', content:
                  '如果制度从根子上就有问题，那么所有反腐不都是在治标吗？偏偏想让大家以为这有治本的效果。'
              },
              {user: '形无阻', likes: 158, user_url: 'https://www.douban.com/people/ranranaway/', content:
                  '很久没看过国内的电视剧了，前两天看了两集人民的名义，觉得还蛮写实的（尤其是上下级相处汇报问题的微妙之处），性子急，等不到电视剧结尾，就把书先看了。中规中矩的反腐小说了。说实话这个故事在文学作品里属于一般，但在影视剧里这两年难见了，还是要推荐一下的。希望国内多出这些能反映现实社会有警示意义的电视剧。'
              },
          ],
          borrow_info: {avaiable: true,
                        borrower: {user_name: '鑫鑫鑫❤', user_url: 'https://book.douban.com/subject/offer/2843572/', record_num: 13, distance: 2000, avatar:
                            'https://img3.doubanio.com/icon/ul36667983-5.jpg'
                        }
          }
        }
    ]
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
    # @selected = Item.where(:category_id => params[:cat_id])
    book_id = params[:book_id] || 'https://book.douban.com/subject/10768068'
    @book = BOOKS::ALL.select {|book| book[:url].include? book_id  }.first
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :url, :rating, :ratings_num, :image_url)
    end
end
