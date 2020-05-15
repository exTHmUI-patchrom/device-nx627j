.class public final Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    }
.end annotation


# static fields
.field public static final RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC:I = 0x1

.field public static final RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC:I = 0x2

.field public static final RIL_CDMA_CONNECTED_NUMBER_INFO_REC:I = 0x3

.field public static final RIL_CDMA_DISPLAY_INFO_REC:I = 0x0

.field public static final RIL_CDMA_EXTENDED_DISPLAY_INFO_REC:I = 0x7

.field public static final RIL_CDMA_LINE_CONTROL_INFO_REC:I = 0x6

.field public static final RIL_CDMA_REDIRECTING_NUMBER_INFO_REC:I = 0x5

.field public static final RIL_CDMA_SIGNAL_INFO_REC:I = 0x4

.field public static final RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC:I = 0xa

.field public static final RIL_CDMA_T53_CLIR_INFO_REC:I = 0x8

.field public static final RIL_CDMA_T53_RELEASE_INFO_REC:I = 0x9


# instance fields
.field public record:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 16
    .param p1, "p"    # Landroid/os/Parcel;

    move-object/from16 v0, p0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 69
    .local v8, "id":I
    packed-switch v8, :pswitch_data_0

    .line 107
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :pswitch_1
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 102
    goto/16 :goto_0

    .line 97
    :pswitch_2
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 98
    goto/16 :goto_0

    .line 92
    :pswitch_3
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 94
    goto :goto_0

    .line 87
    :pswitch_4
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 89
    goto :goto_0

    .line 83
    :pswitch_5
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 84
    goto :goto_0

    .line 78
    :pswitch_6
    new-instance v9, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, v9

    move v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 80
    goto :goto_0

    .line 72
    :pswitch_7
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 73
    nop

    .line 111
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .line 114
    packed-switch p0, :pswitch_data_0

    .line 126
    const-string v0, "<unknown record>"

    return-object v0

    .line 125
    :pswitch_0
    const-string v0, "RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC"

    return-object v0

    .line 124
    :pswitch_1
    const-string v0, "RIL_CDMA_T53_RELEASE_INFO_REC"

    return-object v0

    .line 123
    :pswitch_2
    const-string v0, "RIL_CDMA_T53_CLIR_INFO_REC"

    return-object v0

    .line 122
    :pswitch_3
    const-string v0, "RIL_CDMA_EXTENDED_DISPLAY_INFO_REC"

    return-object v0

    .line 121
    :pswitch_4
    const-string v0, "RIL_CDMA_LINE_CONTROL_INFO_REC"

    return-object v0

    .line 120
    :pswitch_5
    const-string v0, "RIL_CDMA_REDIRECTING_NUMBER_INFO_REC"

    return-object v0

    .line 119
    :pswitch_6
    const-string v0, "RIL_CDMA_SIGNAL_INFO_REC"

    return-object v0

    .line 118
    :pswitch_7
    const-string v0, "RIL_CDMA_CONNECTED_NUMBER_INFO_REC"

    return-object v0

    .line 117
    :pswitch_8
    const-string v0, "RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC"

    return-object v0

    .line 116
    :pswitch_9
    const-string v0, "RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC"

    return-object v0

    .line 115
    :pswitch_a
    const-string v0, "RIL_CDMA_DISPLAY_INFO_REC"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
