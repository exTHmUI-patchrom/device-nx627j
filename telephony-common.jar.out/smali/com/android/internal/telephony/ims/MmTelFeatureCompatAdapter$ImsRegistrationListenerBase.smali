.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationListenerBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
    .param p2, "x1"    # Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;

    .line 210
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    return-void
.end method


# virtual methods
.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    return-void
.end method

.method public registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "targetAccessTech"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method public registrationConnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    return-void
.end method

.method public registrationConnectedWithRadioTech(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    return-void
.end method

.method public registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    return-void
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    return-void
.end method

.method public registrationProgressing()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    return-void
.end method

.method public registrationProgressingWithRadioTech(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    return-void
.end method

.method public registrationResumed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    return-void
.end method

.method public registrationServiceCapabilityChanged(II)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    return-void
.end method

.method public registrationSuspended()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    return-void
.end method

.method public voiceMessageCountUpdate(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    return-void
.end method
