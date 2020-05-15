.class public Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/compat/stub/ImsConfigImplBase;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    .line 63
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public getIImsConfig()Lcom/android/ims/internal/IImsConfig;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvisionedValue(I)I
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, -0x1

    return v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public getVolteProvisioned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyProvisionedValueChanged(II)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 176
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V

    .line 177
    return-void
.end method

.method public final notifyProvisionedValueChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V

    .line 189
    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public setProvisionedValue(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method
