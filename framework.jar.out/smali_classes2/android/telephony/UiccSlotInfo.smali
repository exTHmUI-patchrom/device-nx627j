.class public Landroid/telephony/UiccSlotInfo;
.super Ljava/lang/Object;
.source "UiccSlotInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UiccSlotInfo$CardStateInfo;
    }
.end annotation


# static fields
.field public static final CARD_STATE_INFO_ABSENT:I = 0x1

.field public static final CARD_STATE_INFO_ERROR:I = 0x3

.field public static final CARD_STATE_INFO_PRESENT:I = 0x2

.field public static final CARD_STATE_INFO_RESTRICTED:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccSlotInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCardId:Ljava/lang/String;

.field private final mCardStateInfo:I

.field private final mIsActive:Z

.field private final mIsEuicc:Z

.field private final mIsExtendedApduSupported:Z

.field private final mLogicalSlotIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/telephony/UiccSlotInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccSlotInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccSlotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/UiccSlotInfo$1;

    .line 32
    invoke-direct {p0, p1}, Landroid/telephony/UiccSlotInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;IIZ)V
    .locals 0
    .param p1, "isActive"    # Z
    .param p2, "isEuicc"    # Z
    .param p3, "cardId"    # Ljava/lang/String;
    .param p4, "cardStateInfo"    # I
    .param p5, "logicalSlotIdx"    # I
    .param p6, "isExtendedApduSupported"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 104
    iput-boolean p2, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 105
    iput-object p3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 106
    iput p4, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 107
    iput p5, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 108
    iput-boolean p6, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccSlotInfo;

    .line 149
    .local v2, "that":Landroid/telephony/UiccSlotInfo;
    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 151
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    iget v4, v2, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    iget v4, v2, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 145
    .end local v2    # "that":Landroid/telephony/UiccSlotInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardStateInfo()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    return v0
.end method

.method public getIsActive()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    return v0
.end method

.method public getIsEuicc()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    return v0
.end method

.method public getIsExtendedApduSupported()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    return v0
.end method

.method public getLogicalSlotIdx()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    add-int/2addr v2, v3

    .line 161
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    add-int/2addr v0, v3

    .line 162
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 163
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    add-int/2addr v0, v3

    .line 164
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    add-int/2addr v2, v3

    .line 165
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    add-int/2addr v1, v0

    .line 166
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccSlotInfo (mIsActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsExtendedApduSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    return-void
.end method
