.class Lcom/android/server/wifi/WifiMetrics$1;
.super Landroid/os/Handler;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiMetrics;-><init>(Lcom/android/server/wifi/Clock;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/rtt/RttMetrics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 459
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$1;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 461
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$1;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics;->access$000(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$1;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiMetrics;->access$500(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Message;)V

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
