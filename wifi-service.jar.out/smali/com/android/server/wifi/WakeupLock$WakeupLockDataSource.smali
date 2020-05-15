.class Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;
.super Ljava/lang/Object;
.source "WakeupLock.java"

# interfaces
.implements Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WakeupLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeupLockDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
        "Ljava/util/Set<",
        "Lcom/android/server/wifi/ScanResultMatchInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WakeupLock;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WakeupLock;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;->this$0:Lcom/android/server/wifi/WakeupLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WakeupLock;Lcom/android/server/wifi/WakeupLock$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WakeupLock;
    .param p2, "x1"    # Lcom/android/server/wifi/WakeupLock$1;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;-><init>(Lcom/android/server/wifi/WakeupLock;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;->getData()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;->this$0:Lcom/android/server/wifi/WakeupLock;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupLock;->access$100(Lcom/android/server/wifi/WakeupLock;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 276
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;->setData(Ljava/util/Set;)V

    return-void
.end method

.method public setData(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p1, "data":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;->this$0:Lcom/android/server/wifi/WakeupLock;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupLock;->access$100(Lcom/android/server/wifi/WakeupLock;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 287
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ScanResultMatchInfo;

    .line 288
    .local v1, "network":Lcom/android/server/wifi/ScanResultMatchInfo;
    iget-object v2, p0, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;->this$0:Lcom/android/server/wifi/WakeupLock;

    invoke-static {v2}, Lcom/android/server/wifi/WakeupLock;->access$100(Lcom/android/server/wifi/WakeupLock;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v1    # "network":Lcom/android/server/wifi/ScanResultMatchInfo;
    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;->this$0:Lcom/android/server/wifi/WakeupLock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WakeupLock;->access$202(Lcom/android/server/wifi/WakeupLock;Z)Z

    .line 292
    return-void
.end method
