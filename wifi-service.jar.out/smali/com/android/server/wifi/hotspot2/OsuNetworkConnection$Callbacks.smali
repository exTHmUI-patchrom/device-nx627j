.class public interface abstract Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;
.super Ljava/lang/Object;
.source "OsuNetworkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onConnected(Landroid/net/Network;)V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onTimeOut()V
.end method

.method public abstract onWifiDisabled()V
.end method

.method public abstract onWifiEnabled()V
.end method
