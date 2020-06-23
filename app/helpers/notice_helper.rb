module NoticeHelper
  def switch_key(key)
    keys = {
      'alert' => 'negative',
      'notice' => 'olive',
      'success' => 'info'
    }
    keys[key]
  end
end
