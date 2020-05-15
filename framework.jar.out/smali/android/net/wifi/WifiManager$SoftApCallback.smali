.class public interface abstract Landroid/net/wifi/WifiManager$SoftApCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoftApCallback"
.end annotation


# virtual methods
.method public abstract onNumClientsChanged(I)V
.end method

.method public abstract onStaConnected(Ljava/lang/String;I)V
.end method

.method public abstract onStaDisconnected(Ljava/lang/String;I)V
.end method

.method public abstract onStateChanged(II)V
.end method
