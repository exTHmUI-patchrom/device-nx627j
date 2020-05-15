.class public Lcom/android/server/wifi/SelfRecovery;
.super Ljava/lang/Object;
.source "SelfRecovery.java"


# static fields
.field public static final MAX_RESTARTS_IN_TIME_WINDOW:J = 0x2L

.field public static final MAX_RESTARTS_TIME_WINDOW_MILLIS:J = 0x36ee80L

.field public static final REASON_LAST_RESORT_WATCHDOG:I = 0x0

.field public static final REASON_STA_IFACE_DOWN:I = 0x2

.field protected static final REASON_STRINGS:[Ljava/lang/String;

.field public static final REASON_WIFINATIVE_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiSelfRecovery"


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mPastRestartTimes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiController:Lcom/android/server/wifi/WifiController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const-string v0, "Last Resort Watchdog"

    const-string v1, "WifiNative Failure"

    const-string v2, "Sta Interface Down"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SelfRecovery;->REASON_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiController;Lcom/android/server/wifi/Clock;)V
    .locals 1
    .param p1, "wifiController"    # Lcom/android/server/wifi/WifiController;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/wifi/SelfRecovery;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 56
    iput-object p2, p0, Lcom/android/server/wifi/SelfRecovery;->mClock:Lcom/android/server/wifi/Clock;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mPastRestartTimes:Ljava/util/LinkedList;

    .line 58
    return-void
.end method

.method private trimPastRestartTimes()V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mPastRestartTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/server/wifi/SelfRecovery;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 105
    .local v1, "now":J
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 107
    .local v3, "restartTimeMillis":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 112
    .end local v3    # "restartTimeMillis":Ljava/lang/Long;
    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public trigger(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 73
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 75
    const-string v0, "WifiSelfRecovery"

    const-string v1, "Invalid trigger reason. Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_0
    const v2, 0x26013

    if-ne p1, v0, :cond_1

    .line 79
    const-string v0, "WifiSelfRecovery"

    const-string v1, "STA interface down, disable wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 81
    return-void

    .line 84
    :cond_1
    const-string v0, "WifiSelfRecovery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Triggering recovery for reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/wifi/SelfRecovery;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/android/server/wifi/SelfRecovery;->trimPastRestartTimes()V

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mPastRestartTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v3, 0x2

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    .line 89
    const-string v0, "WifiSelfRecovery"

    const-string v1, "Already restarted wifi (2) times in last (3600000ms ). Disabling wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 92
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mPastRestartTimes:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/server/wifi/SelfRecovery;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v1, 0x26011

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 97
    return-void
.end method
