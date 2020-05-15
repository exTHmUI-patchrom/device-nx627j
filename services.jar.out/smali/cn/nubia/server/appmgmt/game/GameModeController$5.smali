.class Lcn/nubia/server/appmgmt/game/GameModeController$5;
.super Landroid/database/ContentObserver;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 287
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$5;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 290
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$5;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1600(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 291
    return-void
.end method
