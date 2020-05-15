.class Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;
.super Ljava/lang/Object;
.source "ModuleDataCollectionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    .line 34
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$002(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Z)Z

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$102(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 39
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$102(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$002(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Z)Z

    .line 45
    return-void
.end method
