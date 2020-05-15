.class public final Landroid/telephony/ims/ImsExternalCallState;
.super Ljava/lang/Object;
.source "ImsExternalCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CALL_STATE_CONFIRMED:I = 0x1

.field public static final CALL_STATE_TERMINATED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ImsExternalCallState"


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mCallId:I

.field private mCallState:I

.field private mCallType:I

.field private mIsHeld:Z

.field private mIsPullable:Z

.field private mLocalAddress:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/telephony/ims/ImsExternalCallState$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsExternalCallState$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsExternalCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Landroid/net/Uri;ZIIZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "localAddress"    # Landroid/net/Uri;
    .param p4, "isPullable"    # Z
    .param p5, "callState"    # I
    .param p6, "callType"    # I
    .param p7, "isCallheld"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    .line 76
    iput-object p2, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 77
    iput-object p3, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    .line 78
    iput-boolean p4, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    .line 79
    iput p5, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    .line 80
    iput p6, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    .line 81
    iput-boolean p7, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    .line 82
    const-string v0, "ImsExternalCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsExternalCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;ZIIZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "isPullable"    # Z
    .param p4, "callState"    # I
    .param p5, "callType"    # I
    .param p6, "isCallheld"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    .line 64
    iput-object p2, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 65
    iput-boolean p3, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    .line 66
    iput p4, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    .line 67
    iput p5, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    .line 68
    iput-boolean p6, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    .line 69
    const-string v0, "ImsExternalCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsExternalCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    .line 88
    const-class v0, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 89
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    iput-boolean v2, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    .line 95
    const-string v1, "ImsExternalCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsExternalCallState const = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .line 146
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .line 150
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    return v0
.end method

.method public getLocalAddress()Landroid/net/Uri;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public isCallHeld()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    return v0
.end method

.method public isCallPullable()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsExternalCallState { mCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 160
    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    .line 161
    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPullable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsHeld = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const-string v0, "ImsExternalCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsExternalCallState writeToParcel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
