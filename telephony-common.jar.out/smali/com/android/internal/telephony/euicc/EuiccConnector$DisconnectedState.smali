.class Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p2, "x1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    .line 591
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessageDelayed(IJ)V

    .line 595
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .line 599
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/euicc/IEuiccService;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1102(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)Landroid/service/euicc/IEuiccService;

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, v2, Lcom/android/internal/telephony/euicc/EuiccConnector;->mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 602
    return v1

    .line 603
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 605
    .local v0, "bestComponent":Landroid/content/pm/ServiceInfo;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 607
    .local v3, "affectedPackage":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 608
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    .local v4, "isSameComponent":Z
    :goto_0
    goto :goto_2

    .line 610
    .end local v4    # "isSameComponent":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 612
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 613
    invoke-static {v5}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 611
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    .line 615
    .restart local v4    # "isSameComponent":Z
    :goto_2
    if-eqz v0, :cond_5

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 616
    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v1

    nop

    .line 617
    .local v2, "forceRebind":Z
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v2, :cond_8

    .line 618
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1200(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 619
    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v5, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$602(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)Landroid/content/pm/ServiceInfo;

    .line 620
    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_7

    .line 621
    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v6, v6, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 623
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v6, v6, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 626
    :cond_8
    :goto_3
    return v1

    .line 627
    .end local v0    # "bestComponent":Landroid/content/pm/ServiceInfo;
    .end local v2    # "forceRebind":Z
    .end local v3    # "affectedPackage":Ljava/lang/String;
    .end local v4    # "isSameComponent":Z
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, v2, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 629
    return v1

    .line 630
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$800(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deferMessage(Landroid/os/Message;)V

    .line 632
    return v1

    .line 635
    :cond_b
    return v2
.end method
