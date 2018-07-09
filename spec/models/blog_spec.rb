require 'rails_helper'

RSpec.describe Blog, type: :model do
  context 'validation tests' do
    it 'ensures title exists' do
      blog = Blog.new(body: 'Blog Body')
      expect(blog.save).to eq(false)
    end

    it 'ensures body exists' do
      blog = Blog.new(title: 'Blog 1')
      expect(blog.save).to eq(false)
    end

    it 'ensures blog saved successfully' do
      blog = Blog.new(title: 'Blog 1', body: 'Blog Body')
      expect(blog.save).to eq(true)
    end
  
  end
end
