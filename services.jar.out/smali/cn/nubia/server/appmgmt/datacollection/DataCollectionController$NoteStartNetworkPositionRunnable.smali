.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;
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
    name = "NoteStartNetworkPositionRunnable"
.end annotation


# instance fields
.field private mInterval:J

.field private mKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mTimestamp:J

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "interval"    # J
    .param p8, "timestamp"    # J

    .line 979
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPid:I

    .line 981
    iput p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mUid:I

    .line 982
    iput-object p4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPackageName:Ljava/lang/String;

    .line 983
    iput-object p5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mKey:Ljava/lang/String;

    .line 984
    iput-wide p6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mInterval:J

    .line 985
    iput-wide p8, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mTimestamp:J

    .line 986
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 990
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1300(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1300(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 996
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "app_package"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v1, "app_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v1, "app_version"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v1, "app_signature"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v1, "app_processname"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPid:I

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getProcessName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v1, "app_pid"

    iget v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    const-string v1, "app_userid"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mUid:I

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1003
    const-string v1, "app_mobiletraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppMobileTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1004
    const-string v1, "app_wifitraffic"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppWifiTraffic(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1005
    const-string v1, "app_locate_interval"

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1006
    const-string v1, "app_locate_key"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v1, "app_is_system_flag"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1009
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1011
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteStartNetworkPositionRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string v2, "app_start_network_positioning"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v1

    .line 1013
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1016
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
