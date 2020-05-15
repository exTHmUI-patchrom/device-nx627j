.class public interface abstract Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
.super Ljava/lang/Object;
.source "WifiNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkEvaluator"
.end annotation


# virtual methods
.method public abstract evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract update(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation
.end method
