.class Lcn/nubia/server/appmgmt/PreLaunchController$3;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 86
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$3;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$3;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$002(Lcn/nubia/server/appmgmt/PreLaunchController;Z)Z

    .line 90
    return-void
.end method
