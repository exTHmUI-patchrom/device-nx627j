.class public Lcom/android/internal/telephony/IntentBroadcaster;
.super Ljava/lang/Object;
.source "IntentBroadcaster.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentBroadcaster"

.field private static sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;


# instance fields
.field private mRebroadcastIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/IntentBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IntentBroadcaster$1;-><init>(Lcom/android/internal/telephony/IntentBroadcaster;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IntentBroadcaster;

    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IntentBroadcaster;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IntentBroadcaster;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IntentBroadcaster;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/IntentBroadcaster;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/IntentBroadcaster;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IntentBroadcaster;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 100
    const-string v0, "IntentBroadcaster"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method


# virtual methods
.method public broadcastStickyIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "slotId"    # I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting and adding intent for rebroadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ss"

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IntentBroadcaster;->logd(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    monitor-enter v0

    .line 94
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
