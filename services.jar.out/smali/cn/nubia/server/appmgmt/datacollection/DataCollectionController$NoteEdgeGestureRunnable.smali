.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;
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
    name = "NoteEdgeGestureRunnable"
.end annotation


# instance fields
.field private mGesture:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;)V
    .locals 0
    .param p2, "gesture"    # Ljava/lang/String;

    .line 1079
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    iput-object p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;->mGesture:Ljava/lang/String;

    .line 1081
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1085
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1086
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;->mGesture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1090
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEdgeGestureRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string v2, "cn.nubia.edge"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    goto :goto_0

    .line 1091
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1095
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
