require_relative "../lib/path.rb" # Code your solution here.

# Code some tests for path.rb.

describe Path do 
  describe "normalize_path" do

    it "should return an absolute path even when a relative path is sent to it" do
      path = Path.new('README.md')
      expect(path.normalize_path).to eq('/Users/liaskalkos/Desktop/FlatIron/School/ruby-oo-assessment-web-0615/README.md')
    end

    it "should return the original path if it is an absolute path" do
      path = Path.new('/Users/liaskalkos/Desktop/FlatIron/School/ruby-oo-assessment-web-0615/README.md')
      expect(path.normalize_path).to eq('/Users/liaskalkos/Desktop/FlatIron/School/ruby-oo-assessment-web-0615/README.md')
    end
  end

  describe "relative_path" do

    it "should return true if a relative path is sent to it" do
      path = Path.new('README.md')
      expect(path.relative_path?).to eq(true)
    end

    it "should return false if an absolute path is sent to it" do
      path = Path.new('/Users/liaskalkos/Desktop/FlatIron/School/ruby-oo-assessment-web-0615/README.md')
      expect(path.relative_path?).to eq(false)
    end
  end

  describe "absolute_path" do

    it "should return true if an absolute path is sent to it" do
      path = Path.new('README.md')
      expect(path.absolute_path?).to eq(false)
    end

    it "should return false if a relative path is sent to it" do
      path = Path.new('/Users/liaskalkos/Desktop/FlatIron/School/ruby-oo-assessment-web-0615/README.md')
      expect(path.absolute_path?).to eq(true)
    end
  end

end

# There are three methods on the Path class.

# The normalize_path method will return an absolute
# path to the file no matter what kind of path sent
# to it.

# The absolute_path? method will return true if the
# path passed to it is absolute.

# The relative_path? method will return true if the 
# path passed to it is relative.

# Write some tests that spec it out.

# Use the other tests in this suite as guides.

# You should should write at least three describe blocks, 
# one for each method.

# Test the negative and positive results, for example,
# when describing absolute_path? make sure to test
# the results when sent a relative and absolute path.