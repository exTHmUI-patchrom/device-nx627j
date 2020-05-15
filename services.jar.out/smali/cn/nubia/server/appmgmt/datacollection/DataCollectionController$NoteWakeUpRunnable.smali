.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;
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
    name = "NoteWakeUpRunnable"
.end annotation


# instance fields
.field private mReason:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;I)V
    .locals 0
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1298
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    iput-object p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->mReason:Ljava/lang/String;

    .line 1300
    iput p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->mUid:I

    .line 1301
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1307
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.policy:POWER"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    const-string/jumbo v1, "\u4e3b\u52a8"

    .line 1308
    .local v1, "type":Ljava/lang/String;
    goto :goto_0

    .line 1310
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "\u88ab\u52a8"

    .line 1312
    .restart local v1    # "type":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string/jumbo v2, "uid"

    iget v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->mUid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1314
    const-string/jumbo v2, "reason"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1318
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteWakeUpRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    const-string/jumbo v3, "light_up_type"

    invoke-interface {v2, v3, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    goto :goto_1

    .line 1319
    :catch_0
    move-exception v2

    .line 1320
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1323
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method
