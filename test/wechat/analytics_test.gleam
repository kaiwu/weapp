import wechat/analytics

pub fn analytics_test() {
  let _ = analytics.report_event
  let _ = analytics.report_monitor
  let _ = analytics.report_analytics
  let _ = analytics.get_expt_info_sync
}
