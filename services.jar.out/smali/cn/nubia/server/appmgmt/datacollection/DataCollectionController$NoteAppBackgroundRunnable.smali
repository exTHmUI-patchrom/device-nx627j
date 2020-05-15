.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;
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
    name = "NoteAppBackgroundRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mProcessName:Ljava/lang/String;

.field private mTimestamp:J

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "timestamp"    # J

    .line 795
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mUid:I

    .line 797
    iput p4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPid:I

    .line 798
    iput-object p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    .line 799
    iput-object p5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mProcessName:Ljava/lang/String;

    .line 800
    iput-wide p6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mTimestamp:J

    .line 801
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 805
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    return-void

    .line 809
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "app_package"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v1, "app_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v1, "app_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v1, "app_signature"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v1, "app_processname"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v1, "app_pid"

    iget v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    const-string v1, "app_userid"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mUid:I

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 817
    const-string v1, "app_start_battery_level"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1100(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 818
    const-string v1, "app_end_battery_level"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getBatteryLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    const-string v1, "app_mobiletraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppMobileTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 820
    const-string v1, "app_wifitraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppWifiTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 821
    const-string v1, "app_start_timestamp"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 822
    const-string v1, "app_end_timestamp"

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 823
    const-string v1, "app_is_system_flag"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 824
    const-string/jumbo v1, "network"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getSubAccessType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 829
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppBackgroundRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string v2, "app_background"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    goto :goto_0

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 834
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
