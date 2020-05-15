.class Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimSlotStatusChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/EuiccCardController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;
    .param p2, "x1"    # Lcom/android/internal/telephony/euicc/EuiccCardController$1;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 71
    const-string v0, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isEmbeddedSlotActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$000(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/euicc/EuiccController;->startOtaUpdatingIfNecessary()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$200(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$100(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    :cond_1
    return-void
.end method
