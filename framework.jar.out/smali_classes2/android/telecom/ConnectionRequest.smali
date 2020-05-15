.class public final Landroid/telecom/ConnectionRequest;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ConnectionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mExtras:Landroid/os/Bundle;

.field private final mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

.field private final mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

.field private mRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field private final mShouldShowIncomingCallUi:Z

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 343
    new-instance v0, Landroid/telecom/ConnectionRequest$1;

    invoke-direct {v0}, Landroid/telecom/ConnectionRequest$1;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/ConnectionRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telecom/ConnectionRequest$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 158
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 9
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I

    .line 172
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 9
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I
    .param p5, "telecomCallId"    # Ljava/lang/String;
    .param p6, "shouldShowIncomingCallUi"    # Z

    .line 194
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 196
    return-void
.end method

.method private constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I
    .param p5, "telecomCallId"    # Ljava/lang/String;
    .param p6, "shouldShowIncomingCallUi"    # Z
    .param p7, "rttPipeFromInCall"    # Landroid/os/ParcelFileDescriptor;
    .param p8, "rttPipeToInCall"    # Landroid/os/ParcelFileDescriptor;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 208
    iput-object p2, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    .line 209
    iput-object p3, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    .line 210
    iput p4, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    .line 211
    iput-object p5, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    .line 212
    iput-boolean p6, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    .line 213
    iput-object p7, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 214
    iput-object p8, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/ConnectionRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Landroid/os/Bundle;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Landroid/os/ParcelFileDescriptor;
    .param p8, "x7"    # Landroid/os/ParcelFileDescriptor;
    .param p9, "x8"    # Landroid/telecom/ConnectionRequest$1;

    .line 29
    invoke-direct/range {p0 .. p8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRttTextStream()Landroid/telecom/Connection$RttTextStream;
    .locals 3

    .line 316
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->isRequestingRtt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Landroid/telecom/Connection$RttTextStream;

    iget-object v1, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v2}, Landroid/telecom/Connection$RttTextStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-object v0

    .line 322
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .line 255
    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    return v0
.end method

.method public isRequestingRtt()Z
    .locals 1

    .line 331
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowIncomingCallUi()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 336
    const-string v0, "ConnectionRequest %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 337
    iget-object v2, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 338
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0

    .line 339
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 340
    iget-object v3, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    :goto_1
    aput-object v3, v1, v2

    .line 336
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 365
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 366
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 367
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 368
    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 372
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 373
    return-void
.end method
