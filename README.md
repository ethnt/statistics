# Statistics

Basic statistical analysis. For my [MATH130](https://github.com/eturk/marist/tree/master/2013/fall/math130) class at Marist.

## Usage

### Summaries

With the `Statistics::Summary` class, you can get the following summaries of quantitative data:

#### Five-Number Summary

```ruby
Statistics::Summary.five_number_summary([42, 23, 4, 23, 12, 42, 23, 12, 32, 12, 32, 43, 34]) # => {:minimum => 4, :q1 => 12, :median => 23, :q3 => 34, :maximum => 43}
```

#### Extended Summary

```ruby
Statistics::Summary.extended_summary([42, 23, 4, 23, 12, 42, 23, 12, 32, 12, 32, 43, 34]) # => {:minimum => 4, :q1 => 12, :median => 23, :q3 => 34, :maximum => 43, :range => 4..43, :mean => 25.0, :iqr => 22, :fences => -21.0..67.0, :outliers => [], :variance => 170.08333333333334, :std_dev => 13.041600106326422, :sum => 334, :count => 13}
```
