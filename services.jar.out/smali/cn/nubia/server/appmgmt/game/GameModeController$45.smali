.class Lcn/nubia/server/appmgmt/game/GameModeController$45;
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

    .line 2998
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$45;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3003
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$45;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$7100(Lcn/nubia/server/appmgmt/game/GameModeController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3006
    goto :goto_0

    .line 3004
    :catch_0
    move-exception v0

    .line 3005
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3007
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
