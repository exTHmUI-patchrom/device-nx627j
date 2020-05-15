.class Lcn/nubia/server/appmgmt/game/GameModeController$29;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapViewNX629V1s(Ljava/lang/String;)V
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

    .line 1840
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$29;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doClose()V
    .locals 2

    .line 1843
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$29;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->dismiss()V

    .line 1844
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$29;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5102(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 1845
    return-void
.end method

.method public doSave()V
    .locals 0

    .line 1847
    return-void
.end method
