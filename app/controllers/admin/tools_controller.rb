class Admin::ToolsController < Admin::BaseController

  def index
    render text: 'xx'
  end

  def memory_leak
    $TTT ||= []
    $TTT << "*" * (1024 * 1024 * 30)

    render plain: ('RAM USAGE: Kbytes/RSS/Dirty: ' + `pmap -x #{Process.pid} | tail -1`[10,40].strip)
  end
  
end
