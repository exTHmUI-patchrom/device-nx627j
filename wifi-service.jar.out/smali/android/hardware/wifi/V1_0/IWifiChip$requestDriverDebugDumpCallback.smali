.class public interface abstract Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;
.super Ljava/lang/Object;
.source "IWifiChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "requestDriverDebugDumpCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/WifiStatus;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation
.end method
