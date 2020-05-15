.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApTimeoutEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 517
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    .line 518
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 519
    return-void
.end method

.method private getValue()Z
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "soft_ap_timeout_enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 542
    .local v0, "enabled":Z
    return v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 534
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    .line 536
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getValue()Z

    move-result v1

    .line 535
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(II)V

    .line 537
    return-void
.end method

.method public register()V
    .locals 4

    .line 522
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "soft_ap_timeout_enabled"

    .line 523
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 522
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1802(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 526
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/FrameworkFacade;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 530
    return-void
.end method
