.class public Landroid/telephony/ims/feature/RcsFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "RcsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mImsRcsBinder:Landroid/telephony/ims/aidl/IImsRcsFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 31
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/RcsFeature$1;-><init>(Landroid/telephony/ims/feature/RcsFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/aidl/IImsRcsFeature;

    .line 38
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 0
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 47
    return-void
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1

    .line 66
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/aidl/IImsRcsFeature;

    return-object v0
.end method

.method public onFeatureReady()V
    .locals 0

    .line 59
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 0

    .line 53
    return-void
.end method
