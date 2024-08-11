module Jekyll
    class TestPlugin < Generator
      priority :low
  
      def generate(site)
        puts "TestPlugin is running..."
      end
    end
  end