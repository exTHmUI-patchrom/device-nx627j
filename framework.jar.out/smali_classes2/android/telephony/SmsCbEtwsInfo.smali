.class public Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE:I = 0x0

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I = 0x2

.field public static final ETWS_WARNING_TYPE_OTHER_EMERGENCY:I = 0x4

.field public static final ETWS_WARNING_TYPE_TEST_MESSAGE:I = 0x3

.field public static final ETWS_WARNING_TYPE_TSUNAMI:I = 0x1

.field public static final ETWS_WARNING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mActivatePopup:Z

.field private final mEmergencyUserAlert:Z

.field private final mPrimary:Z

.field private final mWarningSecurityInformation:[B

.field private final mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZ[B)V
    .locals 0
    .param p1, "warningType"    # I
    .param p2, "emergencyUserAlert"    # Z
    .param p3, "activatePopup"    # Z
    .param p4, "primary"    # Z
    .param p5, "warningSecurityInformation"    # [B

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 78
    iput-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 79
    iput-boolean p3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 80
    iput-boolean p4, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 81
    iput-object p5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryNotificationSignature()[B
    .locals 3

    .line 189
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryNotificationTimestamp()J
    .locals 14

    .line 146
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 151
    .local v0, "year":I
    iget-object v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 152
    .local v1, "month":I
    iget-object v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 153
    .local v3, "day":I
    iget-object v4, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 154
    .local v4, "hour":I
    iget-object v5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v6, 0x4

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v5

    .line 155
    .local v5, "minute":I
    iget-object v6, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 162
    .local v6, "second":I
    iget-object v7, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v8, 0x6

    aget-byte v7, v7, v8

    .line 165
    .local v7, "tzByte":B
    and-int/lit8 v8, v7, -0x9

    int-to-byte v8, v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 167
    .local v8, "timezoneOffset":I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    neg-int v9, v8

    :goto_0
    move v8, v9

    .line 169
    new-instance v9, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 172
    .local v9, "time":Landroid/text/format/Time;
    add-int/lit16 v10, v0, 0x7d0

    iput v10, v9, Landroid/text/format/Time;->year:I

    .line 173
    add-int/lit8 v10, v1, -0x1

    iput v10, v9, Landroid/text/format/Time;->month:I

    .line 174
    iput v3, v9, Landroid/text/format/Time;->monthDay:I

    .line 175
    iput v4, v9, Landroid/text/format/Time;->hour:I

    .line 176
    iput v5, v9, Landroid/text/format/Time;->minute:I

    .line 177
    iput v6, v9, Landroid/text/format/Time;->second:I

    .line 180
    invoke-virtual {v9, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    mul-int/lit8 v2, v8, 0xf

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v12, v2

    sub-long/2addr v10, v12

    return-wide v10

    .line 147
    .end local v0    # "year":I
    .end local v1    # "month":I
    .end local v3    # "day":I
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "second":I
    .end local v7    # "tzByte":B
    .end local v8    # "timezoneOffset":I
    .end local v9    # "time":Landroid/text/format/Time;
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWarningType()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    return v0
.end method

.method public isEmergencyUserAlert()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    return v0
.end method

.method public isPopupAlert()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbEtwsInfo{warningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergencyUserAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activatePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    return-void
.end method
