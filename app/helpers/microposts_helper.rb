module MicropostsHelper
  HASHTAG_REGEX = /(?<=\s|　|^)#.+?(?=(　|\s|$))/.freeze    #正規表現でハッシュタグを抽出
    #(?<=\s|　|^)…半角・全角スペースか行頭である。ハッシュが挟まり、.+?…一文字以上、(?=(\u3000|\s|$))…全・半角スペースがあるか、文末である

  def link_to_hashtag(content) #ハッシュタグのリンク化
    content.gsub(HASHTAG_REGEX) { |hashtag| link_to(hashtag, search_microposts_path(q: hashtag)) }
    #gsubにより、ハッシュタグを<a href="/microposts/search?q=%23文字列">#文字列　のように変換
  end

    def html_with_link_to_hashtag(content)
        # 下の処理でaタグのhref属性を表示できるようにするので、ハッシュタグのaタグ以外が有効にならないように、エスケープしておく。
        html_escaped_content = h(content)
        content_with_hashtags = link_to_hashtag(html_escaped_content)
        # aタグのhref属性以外はサニタイズします。
        # aタグのhref属性はエスケープされずに表示されるようになります。
        sanitize content_with_hashtags, tags: ['a'], attributes: ['href']
    end
end
