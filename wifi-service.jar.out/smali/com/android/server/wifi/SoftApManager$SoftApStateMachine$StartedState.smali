.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

.field private mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mTimeoutDelay:I

.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/SoftApManager$1;

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method

.method private cancelTimeoutMessage()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 567
    const-string v0, "SoftApManager"

    const-string v1, "Timeout message canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method

.method private getConfigSoftApTimeoutDelay()I
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 549
    .local v0, "delay":I
    const v1, 0x927c0

    if-ge v0, v1, :cond_0

    .line 550
    const v0, 0x927c0

    .line 551
    const-string v1, "SoftApManager"

    const-string v2, "Overriding timeout delay with minimum limit value"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    const-string v1, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v0
.end method

.method public static synthetic lambda$gfCssnBJI7TKfXb_Jmv7raVYNkY(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private onUpChanged(Z)V
    .locals 4
    .param p1, "isUp"    # Z

    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1200(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->access$1202(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 628
    if-eqz p1, :cond_1

    .line 629
    const-string v0, "SoftApManager"

    const-string v1, "SoftAp is ready for use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 632
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 633
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onNumClientsChanged(I)V

    .line 635
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaConnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    .line 641
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZI)V

    .line 642
    return-void
.end method

.method private scheduleTimeoutMessage()V
    .locals 5

    .line 558
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mTimeoutDelay:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 562
    const-string v0, "SoftApManager"

    const-string v1, "Timeout message scheduled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method private setConnectedStations(Ljava/lang/String;)V
    .locals 2
    .param p1, "Macaddr"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2208(Lcom/android/server/wifi/SoftApManager;)I

    .line 597
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaConnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 600
    :cond_0
    const-string v0, "SoftApManager"

    const-string v1, "SoftApCallback is null. Dropping onStaConnected event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-lez v0, :cond_1

    .line 603
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 604
    :cond_1
    return-void
.end method

.method private setDisConnectedStations(Ljava/lang/String;)V
    .locals 2
    .param p1, "Macaddr"    # Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2210(Lcom/android/server/wifi/SoftApManager;)I

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaDisconnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 617
    :cond_1
    const-string v0, "SoftApManager"

    const-string v1, "SoftApCallback is null. Dropping onStaDisconnected event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-nez v0, :cond_2

    .line 620
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    .line 621
    :cond_2
    return-void
.end method

.method private setNumAssociatedStations(I)V
    .locals 3
    .param p1, "numStations"    # I

    .line 575
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 576
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->access$1902(Lcom/android/server/wifi/SoftApManager;I)I

    .line 579
    const-string v0, "SoftApManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of associated stations changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onNumClientsChanged(I)V

    goto :goto_0

    .line 584
    :cond_1
    const-string v0, "SoftApManager"

    const-string v1, "SoftApCallback is null. Dropping NumClientsChanged event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 587
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    .line 586
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(II)V

    .line 588
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .line 646
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1202(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 647
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    .line 649
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->getConfigSoftApTimeoutDelay()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mTimeoutDelay:I

    .line 650
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 651
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/WakeupMessage;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "SoftApManager Soft AP Send Message Timeout"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 654
    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    .line 656
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->register()V

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 662
    const-string v2, "SoftApManager"

    const-string v3, "Resetting num stations on start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2, v1}, Lcom/android/server/wifi/SoftApManager;->access$1902(Lcom/android/server/wifi/SoftApManager;I)I

    .line 664
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2, v1}, Lcom/android/server/wifi/SoftApManager;->access$2202(Lcom/android/server/wifi/SoftApManager;I)I

    .line 665
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    .line 666
    return-void
.end method

.method public exit()V
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->unregister()V

    .line 676
    :cond_1
    const-string v0, "SoftApManager"

    const-string v1, "Resetting num stations on stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1902(Lcom/android/server/wifi/SoftApManager;I)I

    .line 678
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$2202(Lcom/android/server/wifi/SoftApManager;I)I

    .line 679
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 682
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZI)V

    .line 683
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 687
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$702(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1202(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 690
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->quitNow()V

    .line 691
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 695
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 803
    return v4

    .line 744
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 745
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Macaddr of disconnected station: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    goto/16 :goto_1

    .line 748
    :cond_0
    const-string v0, "SoftApManager"

    const-string v2, "Setting Macaddr of stations on CMD_DISCONNECTED_STATIONS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setDisConnectedStations(Ljava/lang/String;)V

    .line 750
    goto/16 :goto_1

    .line 736
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 737
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Macaddr of connected station: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    goto/16 :goto_1

    .line 740
    :cond_1
    const-string v0, "SoftApManager"

    const-string v2, "Setting Macaddr of stations on CMD_CONNECTED_STATIONS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setConnectedStations(Ljava/lang/String;)V

    .line 742
    goto/16 :goto_1

    .line 705
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$2402(Lcom/android/server/wifi/SoftApManager;I)I

    .line 706
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$2502(Lcom/android/server/wifi/SoftApManager;I)I

    .line 707
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel switched. Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Bandwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 708
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 710
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v5

    .line 709
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/wifi/WifiMetrics;->addSoftApChannelSwitchedEvent(III)V

    .line 711
    new-array v0, v4, [I

    .line 712
    .local v0, "allowedChannels":[I
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2600(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v2, :cond_2

    .line 713
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 714
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2600(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v3, 0x2

    if-ne v2, v1, :cond_3

    .line 716
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 717
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2600(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 719
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 720
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .line 721
    .local v2, "allowed2GChannels":[I
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 722
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v3

    .line 723
    .local v3, "allowed5GChannels":[I
    nop

    .line 724
    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v4

    .line 725
    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    .line 723
    invoke-static {v4, v5}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;->INSTANCE:Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;

    .line 726
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    .line 727
    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 729
    .end local v2    # "allowed2GChannels":[I
    .end local v3    # "allowed5GChannels":[I
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_d

    .line 730
    const-string v2, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel does not satisfy user band preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 731
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSoftApUserBandPreferenceUnsatisfied()V

    goto/16 :goto_1

    .line 794
    .end local v0    # "allowedChannels":[I
    :pswitch_3
    const-string v0, "SoftApManager"

    const-string v5, "interface error, stop and report failure"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v5, 0xe

    invoke-static {v0, v5, v3, v4}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 798
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2, v5, v4}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 800
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2700(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 801
    goto/16 :goto_1

    .line 787
    :pswitch_4
    const-string v0, "SoftApManager"

    const-string v5, "Interface was cleanly destroyed."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 790
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$702(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2700(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 792
    goto/16 :goto_1

    .line 752
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_5

    move v4, v1

    nop

    :cond_5
    move v0, v4

    .line 753
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-ne v2, v0, :cond_6

    .line 754
    goto/16 :goto_1

    .line 756
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2, v0}, Lcom/android/server/wifi/SoftApManager;->access$1802(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 757
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 758
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 760
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    if-nez v2, :cond_d

    .line 761
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    goto/16 :goto_1

    .line 772
    .end local v0    # "isEnabled":Z
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 773
    const-string v0, "SoftApManager"

    const-string v2, "Timeout message received while timeout is disabled. Dropping."

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    goto :goto_1

    .line 777
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 778
    const-string v0, "SoftApManager"

    const-string v2, "Timeout message received but has clients. Dropping."

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    goto :goto_1

    .line 781
    :cond_9
    const-string v0, "SoftApManager"

    const-string v5, "Timeout message received. Stopping soft AP."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 784
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2700(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 785
    goto :goto_1

    .line 697
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_a

    .line 698
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of associated stations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    goto :goto_1

    .line 701
    :cond_a
    const-string v0, "SoftApManager"

    const-string v2, "Setting num stations on CMD_NUM_ASSOCIATED_STATIONS_CHANGED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setNumAssociatedStations(I)V

    .line 703
    goto :goto_1

    .line 765
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_b

    move v4, v1

    nop

    :cond_b
    move v0, v4

    .line 766
    .local v0, "isUp":Z
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    .line 767
    goto :goto_1

    .line 770
    .end local v0    # "isUp":Z
    :cond_c
    nop

    .line 805
    :cond_d
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
