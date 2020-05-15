.class final Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;
.super Ljava/lang/Object;
.source "WifiStateMachinePrime.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiNativeStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiStateMachinePrime$1;

    .line 621
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    return-void
.end method

.method public static synthetic lambda$onStatusChanged$0(Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;)V
    .locals 2

    .line 627
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "One of the native daemons died. Triggering recovery"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$2100(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/BaseWifiDiagnostics;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->captureBugReportData(I)V

    .line 633
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1100(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getSelfRecovery()Lcom/android/server/wifi/SelfRecovery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SelfRecovery;->trigger(I)V

    .line 634
    return-void
.end method


# virtual methods
.method public onStatusChanged(Z)V
    .locals 2
    .param p1, "isReady"    # Z

    .line 625
    if-nez p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$2000(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$WifiNativeStatusListener$8x2k_C5b_t_MduBbPqLMm2skLMA;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$WifiNativeStatusListener$8x2k_C5b_t_MduBbPqLMm2skLMA;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 636
    :cond_0
    return-void
.end method
