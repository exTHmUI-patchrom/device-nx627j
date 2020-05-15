.class final Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;
.super Landroid/os/Handler;
.source "DataCollectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackBclHandler"
.end annotation


# static fields
.field static final TRACK_BCL_EVENT_MSG:I = 0x1


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1338
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 1339
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1340
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1344
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1374
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1346
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1347
    return-void

    .line 1349
    :cond_1
    invoke-static {}, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->isBCL()Z

    move-result v0

    .line 1350
    .local v0, "isBCL":Z
    if-eqz v0, :cond_3

    .line 1351
    invoke-static {}, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->getBatteryLevel()I

    move-result v2

    .line 1352
    .local v2, "level":I
    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 1354
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1355
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "battery_level"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1358
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v4

    const-string v5, "battery_bcl"

    invoke-interface {v4, v5, v3}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    goto :goto_0

    .line 1359
    :catch_0
    move-exception v4

    .line 1360
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1363
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1364
    iget-object v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v5, 0x1499700

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1369
    .end local v2    # "level":I
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1370
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$TrackBclHandler;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$1500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1376
    .end local v0    # "isBCL":Z
    :cond_4
    :goto_1
    return-void
.end method
