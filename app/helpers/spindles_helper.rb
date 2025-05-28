module SpindlesHelper
	
  def bandPassFilter(data,fs,lowCutoff, highCutoff)
    index = ((0..data.size).to_a).map{|i| (i.to_f/fs).to_f}
    x, y = [index,data].collect {|v| v.kind_of?(Array) ? GSL::Vector.alloc(v) : v}
    fft = y.fft 
    n = y.size
    (0...n).each {|i| 
      freq = i*(0.5/(n*(x[1]-x[0])))
      fft[i] = 0 if (freq < lowCutoff or freq > highCutoff)
    }
    data_new = fft.inverse.to_a
    return data_new
  end

end
