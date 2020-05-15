.class Lcn/nubia/server/appmgmt/AppLevelController$1;
.super Ljava/lang/Object;
.source "AppLevelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/AppLevelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/AppLevelController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 149
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppLevelController$1;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController$1;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->access$200(Lcn/nubia/server/appmgmt/AppLevelController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController$1;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->access$300(Lcn/nubia/server/appmgmt/AppLevelController;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController$1;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->access$400(Lcn/nubia/server/appmgmt/AppLevelController;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController$1;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->access$500(Lcn/nubia/server/appmgmt/AppLevelController;)V

    .line 156
    return-void
.end method
