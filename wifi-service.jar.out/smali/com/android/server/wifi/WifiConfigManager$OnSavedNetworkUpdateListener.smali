.class public interface abstract Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSavedNetworkUpdateListener"
.end annotation


# virtual methods
.method public abstract onSavedNetworkAdded(I)V
.end method

.method public abstract onSavedNetworkEnabled(I)V
.end method

.method public abstract onSavedNetworkPermanentlyDisabled(II)V
.end method

.method public abstract onSavedNetworkRemoved(I)V
.end method

.method public abstract onSavedNetworkTemporarilyDisabled(II)V
.end method

.method public abstract onSavedNetworkUpdated(I)V
.end method
