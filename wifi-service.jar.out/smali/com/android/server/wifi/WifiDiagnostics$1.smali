.class Lcom/android/server/wifi/WifiDiagnostics$1;
.super Ljava/lang/Object;
.source "WifiDiagnostics.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiDiagnostics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDiagnostics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiDiagnostics;

    .line 404
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics$1;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 1
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    .line 407
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$1;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiDiagnostics;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    .line 408
    return-void
.end method

.method public onWifiAlert(I[B)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    .line 412
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$1;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiDiagnostics;->onWifiAlert(I[B)V

    .line 413
    return-void
.end method
