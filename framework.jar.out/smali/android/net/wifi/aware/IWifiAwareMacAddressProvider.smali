.class public interface abstract Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
.super Ljava/lang/Object;
.source "IWifiAwareMacAddressProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract macAddress(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
