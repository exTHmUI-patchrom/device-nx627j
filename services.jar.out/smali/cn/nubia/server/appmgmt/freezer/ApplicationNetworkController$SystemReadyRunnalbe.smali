.class Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$SystemReadyRunnalbe;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemReadyRunnalbe"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;

    .line 151
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)V

    .line 155
    return-void
.end method
