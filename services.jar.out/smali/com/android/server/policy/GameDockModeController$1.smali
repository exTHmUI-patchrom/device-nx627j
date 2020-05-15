.class Lcom/android/server/policy/GameDockModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "GameDockModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GameDockModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameDockModeController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GameDockModeController;

    .line 69
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeController$1;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cn.nubia.intent.action.lock_screen_hang_up_option"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController$1;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v1}, Lcom/android/server/policy/GameDockModeController;->access$000(Lcom/android/server/policy/GameDockModeController;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cn.nubia.systemui.NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController$1;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v1}, Lcom/android/server/policy/GameDockModeController;->access$100(Lcom/android/server/policy/GameDockModeController;)V

    .line 78
    :cond_1
    :goto_0
    return-void
.end method
