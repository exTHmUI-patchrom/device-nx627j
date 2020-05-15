.class public interface abstract Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;
.super Ljava/lang/Object;
.source "PasspointConfigStoreData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataSource"
.end annotation


# virtual methods
.method public abstract getProviderIndex()J
.end method

.method public abstract getProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setProviderIndex(J)V
.end method

.method public abstract setProviders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;)V"
        }
    .end annotation
.end method
