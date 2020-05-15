.class Lcn/nubia/server/appmgmt/ApplicationPowerController$2;
.super Ljava/lang/Object;
.source "ApplicationPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 293
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$400(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    .line 298
    return-void
.end method
