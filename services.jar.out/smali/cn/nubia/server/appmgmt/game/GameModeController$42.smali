.class Lcn/nubia/server/appmgmt/game/GameModeController$42;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 2585
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$42;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2588
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$42;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6400(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v0

    .line 2589
    .local v0, "gameKeyState":Z
    const-string v1, "cn.nubia.gamelauncher"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$42;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6700(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v1, "cn.nubia.launcher"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$42;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 2590
    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6700(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2591
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$42;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6800(Lcn/nubia/server/appmgmt/game/GameModeController;Z)V

    .line 2593
    :cond_2
    return-void
.end method
