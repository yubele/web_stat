RSpec.describe WebStat::Fetch do
  [{ fixture: WebStatTestHelper.htmls, class: WebStat::FetchAsHtml},
  { fixture: WebStatTestHelper.scheme_and_files, class: WebStat::FetchAsWeb}].each do |fetch|
      
    it "Get title by #{fetch[:class].to_s}" do
      fetch[:fixture].each do |fixture|
        web_stat = fetch[:class].new(fixture)
        expect(web_stat.title).to eq "gem作成でついまずいたところ"
      end
    end
    
    it "Get site name by #{fetch[:class].to_s}" do
      fetch[:fixture].each do |fixture|
        web_stat = fetch[:class].new(fixture)
        expect(web_stat.site_name).to eq "newsdict.blog"
      end
    end
    
    it "Get title by #{fetch[:class].to_s}" do
      fetch[:fixture].each do |fixture|
        web_stat = fetch[:class].new(fixture)
        expect(web_stat.title).to eq "gem作成でついまずいたところ"
      end
    end
    
    it "Get Document's content by #{fetch[:class].to_s}" do
      fetch[:fixture].each do |fixture|
        web_stat = fetch[:class].new(fixture)
        expect(web_stat.content).not_to eq nil
      end
    end
    
    it "Get eyecatch image path by #{fetch[:class].to_s}" do
      fetch[:fixture].each do |fixture|
        web_stat = fetch[:class].new(fixture)
        expect(web_stat.eyecatch_image_path).to be_string_or_nil
      end
    end
  end
end