.class Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoLevelPreLaunchAfterBootRunnable"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUid:I

.field mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uid"    # I

    .line 383
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput p3, p0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->mUid:I

    .line 385
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->mContext:Landroid/content/Context;

    .line 386
    iget-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 387
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 391
    move-object/from16 v1, p0

    iget-object v0, v1, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$1300(Lcn/nubia/server/appmgmt/PreLaunchController;)V

    .line 393
    invoke-static {}, Lnubia/twolevel/TwoLevelUtils;->is2LevelPreStartEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 397
    .local v2, "now":J
    const-wide/32 v4, 0x5265c00

    sub-long v4, v2, v4

    .line 398
    .local v4, "beginTime":J
    iget-object v0, v1, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v6

    .line 400
    .local v6, "appsForRecentOneDay":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 401
    .local v7, "allUsage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable$1;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable$1;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 413
    const/4 v0, 0x0

    .line 415
    .local v0, "topAppCounter":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    .end local v0    # "topAppCounter":I
    .local v9, "topAppCounter":I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 417
    .local v10, "entry":Landroid/app/usage/UsageStats;
    const/16 v0, 0xa

    if-ne v9, v0, :cond_1

    .end local v10    # "entry":Landroid/app/usage/UsageStats;
    goto :goto_2

    .line 419
    .restart local v10    # "entry":Landroid/app/usage/UsageStats;
    :cond_1
    if-ge v9, v0, :cond_3

    .line 420
    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v0, v11, v13

    if-lez v0, :cond_3

    .line 422
    :try_start_0
    iget-object v0, v1, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 423
    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 422
    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 424
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lnubia/twolevel/TwoLevelUtils;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$600(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 425
    iget-object v12, v1, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual/range {v12 .. v17}, Lcn/nubia/server/appmgmt/PreLaunchController;->noteProcessNeedPreLaunch(Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    add-int/lit8 v9, v9, 0x1

    .line 429
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_1

    .line 428
    :catch_0
    move-exception v0

    .line 432
    .end local v10    # "entry":Landroid/app/usage/UsageStats;
    :cond_3
    :goto_1
    goto :goto_0

    .line 433
    :cond_4
    :goto_2
    return-void
.end method
