.class Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;
.super Ljava/lang/Object;
.source "GameKeyMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyConfigurationChanged"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 99
    const-string v0, "GameKeyMapView"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 101
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    sget-object v2, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_DEFAULT_POS_PORTRAIT:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$102(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    sget-object v2, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_DEFAULT_POS:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$102(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 106
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 107
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$400(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 109
    .local v0, "locations":[I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getLocationOnScreen([I)V

    .line 110
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$500(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Rect;[I)V

    .line 111
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$500(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 112
    .end local v0    # "locations":[I
    goto :goto_1

    .line 113
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$500(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 115
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$002(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;I)I

    .line 117
    :cond_2
    return-void
.end method
