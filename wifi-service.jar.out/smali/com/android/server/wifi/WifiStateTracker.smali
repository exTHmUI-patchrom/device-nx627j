.class public Lcom/android/server/wifi/WifiStateTracker;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# static fields
.field public static final CONNECTED:I = 0x3

.field public static final DISCONNECTED:I = 0x2

.field public static final INVALID:I = 0x0

.field public static final SCAN_MODE:I = 0x1

.field public static final SOFT_AP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mWifiState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;)V
    .locals 1
    .param p1, "stats"    # Lcom/android/internal/app/IBatteryStats;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    .line 43
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 44
    return-void
.end method

.method private informWifiStateBatteryStats(I)V
    .locals 4
    .param p1, "state"    # I

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiState(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery stats executor is being shutdown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery stats unreachable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 54
    :goto_1
    return-void
.end method


# virtual methods
.method public updateState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "reportState":I
    iget v1, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    if-eq p1, v1, :cond_0

    .line 64
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 75
    :pswitch_0
    const/4 v0, 0x7

    .line 76
    goto :goto_0

    .line 72
    :pswitch_1
    const/4 v0, 0x4

    .line 73
    goto :goto_0

    .line 69
    :pswitch_2
    const/4 v0, 0x3

    .line 70
    goto :goto_0

    .line 66
    :pswitch_3
    const/4 v0, 0x1

    .line 67
    nop

    .line 83
    :goto_0
    iput p1, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    .line 84
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateTracker;->informWifiStateBatteryStats(I)V

    goto :goto_2

    .line 78
    :pswitch_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    .line 81
    :goto_1
    return-void

    .line 86
    :cond_0
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
