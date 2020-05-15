.class public Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
.super Ljava/lang/Object;
.source "ImsServiceFeatureQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;,
        Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
    }
.end annotation


# instance fields
.field private final mActiveQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public isQueryInProgress()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startQuery(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "intentFilter"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 146
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;-><init>(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 147
    .local v1, "query":Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->mActiveQueries:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->start()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 149
    .end local v1    # "query":Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
