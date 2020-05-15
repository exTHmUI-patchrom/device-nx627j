.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;
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
    name = "NoteAppAnrCrashRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mTimestamp:J

.field private mType:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 1195
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    iput-object p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mPackageName:Ljava/lang/String;

    .line 1197
    iput p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mType:I

    .line 1198
    iput-object p4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mReason:Ljava/lang/String;

    .line 1199
    iput-wide p5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mTimestamp:J

    .line 1200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1205
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string/jumbo v1, "type"

    iget v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1207
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1210
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1212
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteAppAnrCrashRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string v2, "app_anr_crash"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    goto :goto_0

    .line 1213
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1217
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
