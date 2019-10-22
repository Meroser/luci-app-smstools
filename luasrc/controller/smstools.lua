
module("luci.controller.smstools", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/adbyby") then
		return
	end
	
	entry({"admin", "services", "smstools"}, cbi("smstools"), _("smstools"), 10).dependent = true
	entry({"admin","services","smstools","status"},call("act_status")).leaf=true
end

function act_status()
  local e={}
  e.running=luci.sys.call("pgrep adbyby >/dev/null")==0
  luci.http.prepare_content("application/json")
  luci.http.write_json(e)
end
