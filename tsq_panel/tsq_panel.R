# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Sequential Threshold-Spatial-Quantile Panel Estimation Use tsq_panel (tsqr) With (In) R Software
install.packages("tsqr")
library("tsqr")
# Estimate Sequential Threshold-Spatial-Quantile Panel Estimation Use tsq_panel (tsqr) With (In) R Software
tsq_panel = read.csv("https://raw.githubusercontent.com/timbulwidodostp/tsq_panel/main/tsq_panel/tsq_panel.csv",sep = ";")
units  <- sort(unique(tsq_panel$district))
coords <- data.frame(longitude = stats::runif(length(units), 73, 80), latitude  = stats::runif(length(units), 16, 22))
tsq_panel <- tsq_panel(formula = ln_GDVA ~ ln_HYV + MCDS_days + Irrigation_pct, data = tsq_panel, 
index = c("district", "year"), threshold_var = "MCDS_days", coords = coords, n_boot_ptr = 50, n_boot_qr = 50)
tsq_panel
# Sequential Threshold-Spatial-Quantile Panel Estimation Use tsq_panel (tsqr) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished