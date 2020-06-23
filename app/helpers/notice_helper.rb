module NoticeHelper
  def switch_key(key)
    keys = {
      'alert' => 'negative',
      'notice' => 'green',
      'success' => 'info'
    }

    keys[key]
  end
end
