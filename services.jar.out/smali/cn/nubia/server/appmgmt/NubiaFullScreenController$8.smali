.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$8;
.super Landroid/database/ContentObserver;
.source "NubiaFullScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 600
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$8;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 603
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$8;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    .line 604
    return-void
.end method
