.class public interface abstract Lcom/android/server/wifi/WifiNative$InterfaceCallback;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterfaceCallback"
.end annotation


# virtual methods
.method public abstract onDestroyed(Ljava/lang/String;)V
.end method

.method public abstract onDown(Ljava/lang/String;)V
.end method

.method public abstract onUp(Ljava/lang/String;)V
.end method
