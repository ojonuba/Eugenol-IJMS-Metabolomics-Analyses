# PID of current job: 3353757
mSet<-InitDataObjects("pktable", "stat", FALSE)
mSet<-Read.TextData(mSet, "Replacing_with_your_file_path", "rowu", "disc");
mSet<-SanityCheckData(mSet)
mSet<-SanityCheckData(mSet)
mSet<-RemoveMissingPercent(mSet, percent=0.5)
mSet<-ImputeMissingVar(mSet, method="min")
mSet<-SanityCheckData(mSet)
mSet<-FilterVariable(mSet, "iqr", "F", 25)
mSet<-PreparePrenormData(mSet)
mSet<-Normalization(mSet, "MedianNorm", "LogNorm", "NULL", ratio=FALSE, ratioNum=20)
mSet<-PlotNormSummary(mSet, "norm_0_", "png", 72, width=NA)
mSet<-PlotSampleNormSummary(mSet, "snorm_0_", "png", 72, width=NA)
mSet<-ANOVA.Anal(mSet, F, 0.05, "fisher", FALSE)
mSet<-PlotANOVA(mSet, "aov_0_", "png", 72, width=NA)
mSet<-UpdateLoadingCmpd(mSet, "N-METHYL-L-GLUTAMATE")
mSet<-PlotCmpdSummary(mSet, "N-METHYL-L-GLUTAMATE","NA", 0, "png", 72, width=NA)
mSet<-PlotCorrHeatMap(mSet, "corr_0_", "png", 72, width=NA, "col", "pearson", "bwm", "overview", F, F, "0")
mSet<-PlotCorrHeatMap(mSet, "corr_1_", "png", 72, width=NA, "row", "pearson", "bwm", "detail", F, T, "0")
mSet<-FeatureCorrelation(mSet, "pearson", "SARMENTOSIN")
mSet<-PlotCorr(mSet, "ptn_1_", "feature", "png", 72, width=NA)
mSet<-PCA.Anal(mSet)
mSet<-PlotPCAPairSummary(mSet, "pca_pair_0_", "png", 72, width=NA, 5)
mSet<-PlotPCAScree(mSet, "pca_scree_0_", "png", 72, width=NA, 5)
mSet<-PlotPCA2DScore(mSet, "pca_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotPCALoading(mSet, "pca_loading_0_", "png", 72, width=NA, 1,2);
mSet<-PlotPCABiplot(mSet, "pca_biplot_0_", "png", 72, width=NA, 1,2)
mSet<-PlotPCA3DLoading(mSet, "pca_loading3d_0_", "json", 1,2,3)
mSet<-PLSR.Anal(mSet, reg=TRUE)
mSet<-PlotPLSPairSummary(mSet, "pls_pair_0_", "png", 72, width=NA, 5)
mSet<-PlotPLS2DScore(mSet, "pls_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotPLS3DScoreImg(mSet, "pls_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PlotPLSLoading(mSet, "pls_loading_0_", "png", 72, width=NA, 1, 2);
mSet<-PlotPLS3DLoading(mSet, "pls_loading3d_0_", "json", 1,2,3)
mSet<-PLSDA.CV(mSet, "L",5, "Q2")
mSet<-PlotPLS.Classification(mSet, "pls_cv_0_", "png", 72, width=NA)
mSet<-PlotPLS.Imp(mSet, "pls_imp_0_", "png", 72, width=NA, "vip", "Comp. 1", 15,FALSE)
mSet<-PlotPLS.Imp(mSet, "pls_imp_1_", "png", 72, width=NA, "vip", "Comp. 1", 25,FALSE)
mSet<-SPLSR.Anal(mSet, 5, 10, "same", "Mfold")
mSet<-PlotSPLSPairSummary(mSet, "spls_pair_0_", "png", 72, width=NA, 5)
mSet<-PlotSPLS2DScore(mSet, "spls_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0)
mSet<-PlotSPLS3DScoreImg(mSet, "spls_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PlotSPLSLoading(mSet, "spls_loading_0_", "png", 72, width=NA, 1,"overview");
mSet<-PlotSPLSDA.Classification(mSet, "spls_cv_0_", "png", 72, width=NA)
mSet<-PlotSPLS3DLoading(mSet, "spls_loading3d_0_", "json", 1,2,3)
mSet<-SPLSR.Anal(mSet, 5, 25, "same", "Mfold")
mSet<-PlotSPLSPairSummary(mSet, "spls_pair_1_", "png", 72, width=NA, 5)
mSet<-PlotSPLS2DScore(mSet, "spls_score2d_1_", "png", 72, width=NA, 1,2,0.95,1,0)
mSet<-PlotSPLS3DScoreImg(mSet, "spls_score3d_1_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PlotSPLSLoading(mSet, "spls_loading_1_", "png", 72, width=NA, 1,"overview");
mSet<-PlotSPLS3DLoading(mSet, "spls_loading3d_0_", "json", 1,2,3)
mSet<-PlotSPLSDA.Classification(mSet, "spls_cv_1_", "png", 72, width=NA)
mSet<-PlotHCTree(mSet, "tree_0_", "png", 72, width=NA, "euclidean", "ward.D")
mSet<-PlotHeatMap(mSet, "heatmap_0_", "png", 72, width=NA, "norm", "row", "euclidean", "ward.D","bwm", 8, "overview", T, T, NULL, T, F, T, T, T)
mSet<-PlotHeatMap(mSet, "heatmap_1_", "png", 72, width=NA, "norm", "row", "euclidean", "ward.D","bwm", 8, "detail", F, T, NULL, T, T, T, T, T)
