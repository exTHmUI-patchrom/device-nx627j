.class public final Landroid/telecom/ConnectionRequest$Builder;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

.field private mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

.field private mShouldShowIncomingCallUi:Z

.field private mTelecomCallId:Ljava/lang/String;

.field private mVideoState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    .line 41
    iput-boolean v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    .line 45
    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/ConnectionRequest;
    .locals 11

    .line 126
    new-instance v10, Landroid/telecom/ConnectionRequest;

    iget-object v1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    iget v4, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    iget-object v5, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    iget-boolean v6, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    iget-object v7, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    iget-object v8, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/ConnectionRequest$1;)V

    return-object v10
.end method

.method public setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 52
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 53
    return-object p0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "address"    # Landroid/net/Uri;

    .line 62
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    .line 63
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 71
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 72
    return-object p0
.end method

.method public setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "rttPipeFromInCall"    # Landroid/os/ParcelFileDescriptor;

    .line 111
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 112
    return-object p0
.end method

.method public setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "rttPipeToInCall"    # Landroid/os/ParcelFileDescriptor;

    .line 121
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 122
    return-object p0
.end method

.method public setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "shouldShowIncomingCallUi"    # Z

    .line 101
    iput-boolean p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    .line 102
    return-object p0
.end method

.method public setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "videoState"    # I

    .line 80
    iput p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    .line 81
    return-object p0
.end method
