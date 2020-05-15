.class Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p2, "x1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    .line 558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1000(Lcom/android/internal/telephony/euicc/EuiccConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, v1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, v1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 570
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deferMessage(Landroid/os/Message;)V

    .line 575
    const/4 v0, 0x1

    return v0
.end method
