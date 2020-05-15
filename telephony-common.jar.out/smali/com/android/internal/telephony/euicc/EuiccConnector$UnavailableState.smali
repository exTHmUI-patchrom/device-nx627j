.class Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p2, "x1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    .line 508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 511
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$602(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)Landroid/content/pm/ServiceInfo;

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, v2, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, v2, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    if-eq v0, v2, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, v2, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 518
    :cond_1
    :goto_0
    return v1

    .line 519
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$800(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$900(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object v0

    .line 521
    .local v0, "callback":Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    invoke-interface {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 522
    return v1

    .line 525
    .end local v0    # "callback":Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
