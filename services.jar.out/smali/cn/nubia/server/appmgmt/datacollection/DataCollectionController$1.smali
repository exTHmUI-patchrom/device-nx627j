.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$1;
.super Ljava/lang/Object;
.source "DataCollectionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 144
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {p2}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$002(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    .line 154
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 148
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$1;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$002(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    .line 149
    return-void
.end method
