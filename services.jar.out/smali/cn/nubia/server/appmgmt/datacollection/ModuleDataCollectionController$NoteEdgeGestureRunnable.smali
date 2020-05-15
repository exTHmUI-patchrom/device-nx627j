.class Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;
.super Ljava/lang/Object;
.source "ModuleDataCollectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteEdgeGestureRunnable"
.end annotation


# instance fields
.field private mGesture:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Ljava/lang/String;)V
    .locals 0
    .param p2, "gesture"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;->mGesture:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    const-string v2, "cn.nubia.edge"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "event"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;->mGesture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 73
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 75
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$100(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$100(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
