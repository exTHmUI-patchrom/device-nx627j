.class Lcn/nubia/server/appmgmt/ApplicationPushController$1;
.super Ljava/lang/Object;
.source "ApplicationPushController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPushController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPushController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 120
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->access$000(Lcn/nubia/server/appmgmt/ApplicationPushController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->access$100(Lcn/nubia/server/appmgmt/ApplicationPushController;)V

    .line 125
    return-void
.end method
