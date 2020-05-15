.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;
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
    name = "NoteAppUsingCameraRunnable"
.end annotation


# instance fields
.field private mIsLaunch:Z

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mProcessName:Ljava/lang/String;

.field private mTimestamp:J

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "isLaunch"    # Z

    .line 1139
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mUid:I

    .line 1141
    iput-object p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    .line 1142
    iput p4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPid:I

    .line 1143
    iput-object p5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mProcessName:Ljava/lang/String;

    .line 1144
    iput-wide p6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mTimestamp:J

    .line 1145
    iput-boolean p8, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mIsLaunch:Z

    .line 1146
    return-void
.end method

.method private trackAppUsingCameraEvent()V
    .locals 7

    .line 1159
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    return-void

    .line 1163
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1164
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1165
    .local v1, "startTime":J
    const-string/jumbo v3, "package_name"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v3, "app_name"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v3, "app_version"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v3, "app_signature"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v3, "app_processname"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v3, "app_pid"

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPid:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1171
    const-string v3, "app_userid"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v4

    iget v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mUid:I

    invoke-virtual {v4, v5}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1172
    const-string v3, "app_start_timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1173
    const-string v3, "app_end_timestamp"

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mTimestamp:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1174
    iget-wide v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mTimestamp:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 1175
    const-string v3, "duration"

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mTimestamp:J

    sub-long/2addr v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1177
    :cond_1
    const-string v3, "app_is_system_flag"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$700(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1181
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v3

    const-string v4, "app_use_camera"

    invoke-interface {v3, v4, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    goto :goto_0

    .line 1182
    :catch_0
    move-exception v3

    .line 1183
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1186
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1150
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mIsLaunch:Z

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1154
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppUsingCameraRunnable;->trackAppUsingCameraEvent()V

    .line 1156
    :goto_0
    return-void
.end method
