.class Lcn/nubia/server/appmgmt/game/GameModeController$27;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapView(Ljava/lang/String;)V
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

    .line 1806
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$27;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doClose()V
    .locals 2

    .line 1809
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$27;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4900(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->dismiss()V

    .line 1810
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$27;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4902(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    .line 1811
    return-void
.end method

.method public doSave()V
    .locals 0

    .line 1813
    return-void
.end method
