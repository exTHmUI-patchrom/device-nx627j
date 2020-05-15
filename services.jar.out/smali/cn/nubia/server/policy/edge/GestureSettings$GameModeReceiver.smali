.class Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/GestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/GestureSettings;


# direct methods
.method private constructor <init>(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/policy/edge/GestureSettings;Lcn/nubia/server/policy/edge/GestureSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p2, "x1"    # Lcn/nubia/server/policy/edge/GestureSettings$1;

    .line 281
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 290
    const-string/jumbo v0, "isRunning"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    .local v0, "isGameRunning":Z
    const-string v2, "GestureSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v4, "enter"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "leave"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " game mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 294
    const-string/jumbo v4, "switchs"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 296
    .local v3, "isSubNoFuns":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 297
    iget-object v4, p0, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v4, v2, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->access$900(Lcn/nubia/server/policy/edge/GestureSettings;II)V

    .line 300
    .end local v3    # "isSubNoFuns":Z
    :cond_2
    goto :goto_2

    .line 301
    :cond_3
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v1, v2, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->access$900(Lcn/nubia/server/policy/edge/GestureSettings;II)V

    .line 304
    :goto_2
    return-void
.end method

.method public register()V
    .locals 2

    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.nubia.action.GAME_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings$GameModeReceiver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->access$400(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    return-void
.end method
