.class Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartSingleScanListener"
.end annotation


# instance fields
.field private final mIsFullBandScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p2, "isFullBandScan"    # Z

    .line 224
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    .line 226
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$100(Lcom/android/server/wifi/WifiConnectivityManager;ZLandroid/os/WorkSource;)V

    .line 231
    return-void
.end method
