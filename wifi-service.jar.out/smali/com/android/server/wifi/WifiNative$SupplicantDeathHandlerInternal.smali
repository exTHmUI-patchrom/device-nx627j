.class Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;
.super Ljava/lang/Object;
.source "WifiNative.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantDeathHandlerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiNative$1;

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;)V

    return-void
.end method


# virtual methods
.method public onDeath()V
    .locals 2

    .line 550
    const-string v0, "WifiNative"

    const-string v1, "wpa_supplicant died. Cleaning up internal state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$1000(Lcom/android/server/wifi/WifiNative;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$1100(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSupplicantCrashes()V

    .line 553
    return-void
.end method
