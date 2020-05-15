.class public Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesStatusChanged(I)V
    .locals 1
    .param p1, "config"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 185
    return-void
.end method

.method public onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 0
    .param p1, "config"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 220
    return-void
.end method

.method public onChangeCapabilityConfigurationError(III)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 210
    return-void
.end method

.method public onQueryCapabilityConfiguration(IIZ)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z

    .line 198
    return-void
.end method
