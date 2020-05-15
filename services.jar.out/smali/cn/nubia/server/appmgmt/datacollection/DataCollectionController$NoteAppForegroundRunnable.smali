.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;
.super Ljava/lang/Object;
.source "DataCollectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteAppForegroundRunnable"
.end annotation


# static fields
.field private static final APP_CLONE_UID_START:I = 0xf4240

.field private static final MULTI_WINDOW_STATE:Ljava/lang/String; = "ss_multi_window_enabled"


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mIsColdLaunch:Z

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mProcessName:Ljava/lang/String;

.field private mTimestamp:J

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "caller"    # Ljava/lang/String;
    .param p7, "timestamp"    # J
    .param p9, "isColdLaunch"    # Z

    .line 685
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mUid:I

    .line 687
    iput p4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPid:I

    .line 688
    iput-object p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    .line 689
    iput-object p5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mProcessName:Ljava/lang/String;

    .line 690
    iput-object p6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mCaller:Ljava/lang/String;

    .line 691
    iput-wide p7, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mTimestamp:J

    .line 692
    iput-boolean p9, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mIsColdLaunch:Z

    .line 693
    return-void
.end method

.method private trackAppCloneLaunchEvent()V
    .locals 3

    .line 772
    iget v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mUid:I

    const v1, 0xf4240

    if-ge v0, v1, :cond_0

    .line 773
    return-void

    .line 775
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 776
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 779
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string v2, "app_clone_launch"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 784
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private trackScreenSplitLaunchAppEvent()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ss_multi_window_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string/jumbo v2, "screensplit_launch_app"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 769
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private trackTransferLaunchEvent()V
    .locals 4

    .line 734
    const-string v0, "cn.nubia.flycow"

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    return-void

    .line 737
    :cond_0
    const-string v0, "cn.nubia.contacts"

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    const-string/jumbo v0, "\u8054\u7cfb\u4eba"

    .line 738
    .local v0, "caller":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 739
    .end local v0    # "caller":Ljava/lang/String;
    :cond_1
    const-string v0, "cn.nubia.launcher"

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    const-string/jumbo v0, "\u684c\u9762"

    goto :goto_0

    .line 741
    :cond_2
    const-string v0, "cn.nubia.setupwizard"

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 742
    const-string/jumbo v0, "\u5f00\u673a\u5411\u5bfc"

    goto :goto_0

    .line 744
    .restart local v0    # "caller":Ljava/lang/String;
    :goto_1
    nop

    .line 746
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 747
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "caller"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 750
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    const-string/jumbo v3, "transfer_launch"

    invoke-interface {v2, v3, v1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    goto :goto_2

    .line 751
    :catch_0
    move-exception v2

    .line 752
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 755
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void

    .line 744
    .end local v0    # "caller":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 697
    const-string v0, "cn.nubia.launcher"

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1100(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getBatteryLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 707
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "app_package"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "app_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v1, "app_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v1, "app_signature"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v1, "app_processname"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v1, "app_pid"

    iget v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    const-string v1, "app_userid"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mUid:I

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 714
    const-string v1, "app_mobiletraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppMobileTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 715
    const-string v1, "app_wifitraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppWifiTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 716
    const-string v1, "app_is_system_flag"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    const-string v1, "cold_launch"

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->mIsColdLaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 719
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 721
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string v2, "app_foreground"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    goto :goto_0

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 727
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->trackTransferLaunchEvent()V

    .line 728
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->trackScreenSplitLaunchAppEvent()V

    .line 729
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppForegroundRunnable;->trackAppCloneLaunchEvent()V

    .line 730
    return-void
.end method
