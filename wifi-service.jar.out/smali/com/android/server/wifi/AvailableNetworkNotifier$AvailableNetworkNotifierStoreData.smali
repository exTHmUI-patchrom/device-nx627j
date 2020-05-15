.class Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;
.super Ljava/lang/Object;
.source "AvailableNetworkNotifier.java"

# interfaces
.implements Lcom/android/server/wifi/SsidSetStoreData$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/AvailableNetworkNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableNetworkNotifierStoreData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/AvailableNetworkNotifier;Lcom/android/server/wifi/AvailableNetworkNotifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;
    .param p2, "x1"    # Lcom/android/server/wifi/AvailableNetworkNotifier$1;

    .line 505
    invoke-direct {p0, p1}, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    return-void
.end method


# virtual methods
.method public getSsids()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$600(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setSsids(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 513
    .local p1, "ssidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$600(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 514
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$700(Lcom/android/server/wifi/AvailableNetworkNotifier;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$100(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v2}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$600(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->setNetworkRecommenderBlacklistSize(Ljava/lang/String;I)V

    .line 515
    return-void
.end method
