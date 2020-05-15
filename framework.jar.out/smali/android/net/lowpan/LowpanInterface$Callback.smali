.class public abstract Landroid/net/lowpan/LowpanInterface$Callback;
.super Ljava/lang/Object;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 162
    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 164
    return-void
.end method

.method public onLinkAddressAdded(Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "address"    # Landroid/net/LinkAddress;

    .line 178
    return-void
.end method

.method public onLinkAddressRemoved(Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "address"    # Landroid/net/LinkAddress;

    .line 180
    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 174
    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 176
    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .line 172
    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 168
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .line 170
    return-void
.end method

.method public onUpChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 166
    return-void
.end method
