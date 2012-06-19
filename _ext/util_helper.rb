module UtilHelper
  def trim(str, length)
    if str.length > length
      return str.slice(0,(length-3)) + '...'
    else
      return str
    end
  end
end