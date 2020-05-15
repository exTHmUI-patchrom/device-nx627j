.class public interface abstract Lcom/android/server/wifi/WifiNative$SoftApListener;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoftApListener"
.end annotation


# virtual methods
.method public abstract onNumAssociatedStationsChanged(I)V
.end method

.method public abstract onSoftApChannelSwitched(II)V
.end method

.method public abstract onStaConnected(Ljava/lang/String;)V
.end method

.method public abstract onStaDisconnected(Ljava/lang/String;)V
.end method
