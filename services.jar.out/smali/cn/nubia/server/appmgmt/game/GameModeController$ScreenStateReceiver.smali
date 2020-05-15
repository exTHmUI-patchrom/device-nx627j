.class Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field private mBootCompleted:Z

.field private mWaitingBootCompleted:Z

.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 2

    .line 2790
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->mBootCompleted:Z

    .line 2789
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->mWaitingBootCompleted:Z

    .line 2791
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2792
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2793
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2794
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2795
    invoke-static {p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2796
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2800
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2801
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    if-eqz v1, :cond_1

    .line 2802
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 2803
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1, v3, v4}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6900(Lcn/nubia/server/appmgmt/game/GameModeController;J)Z

    goto :goto_0

    .line 2805
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->mWaitingBootCompleted:Z

    goto :goto_0

    .line 2807
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2808
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->mBootCompleted:Z

    .line 2809
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->mWaitingBootCompleted:Z

    if-eqz v1, :cond_2

    .line 2810
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1, v3, v4}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6900(Lcn/nubia/server/appmgmt/game/GameModeController;J)Z

    .line 2811
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;->mWaitingBootCompleted:Z

    .line 2814
    :cond_2
    :goto_0
    return-void
.end method
