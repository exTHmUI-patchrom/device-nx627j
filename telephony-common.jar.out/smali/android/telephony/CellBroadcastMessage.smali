.class public Landroid/telephony/CellBroadcastMessage;
.super Ljava/lang/Object;
.source "CellBroadcastMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellBroadcastMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_CB_MESSAGE_EXTRA:Ljava/lang/String; = "com.android.cellbroadcastreceiver.SMS_CB_MESSAGE"


# instance fields
.field private final mDeliveryTime:J

.field private mIsRead:Z

.field private final mSmsCbMessage:Landroid/telephony/SmsCbMessage;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Landroid/telephony/CellBroadcastMessage$1;

    invoke-direct {v0}, Landroid/telephony/CellBroadcastMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/CellBroadcastMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 90
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbMessage;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellBroadcastMessage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellBroadcastMessage$1;

    .line 40
    invoke-direct {p0, p1}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 78
    iput-object p1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 80
    iput-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/telephony/SmsCbMessage;JZ)V
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;
    .param p2, "deliveryTime"    # J
    .param p4, "isRead"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 84
    iput-object p1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 85
    iput-wide p2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 86
    iput-boolean p4, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 87
    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Landroid/telephony/CellBroadcastMessage;
    .locals 39
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 130
    move-object/from16 v0, p0

    const-string v1, "geo_scope"

    .line 131
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 130
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 132
    .local v1, "geoScope":I
    const-string v2, "serial_number"

    .line 133
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 132
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 134
    .local v13, "serialNum":I
    const-string v2, "service_category"

    .line 135
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 134
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 136
    .local v14, "category":I
    const-string v2, "language"

    .line 137
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "language":Ljava/lang/String;
    const-string v2, "body"

    .line 139
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 138
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 140
    .local v16, "body":Ljava/lang/String;
    const-string v2, "format"

    .line 141
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 140
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 142
    .local v17, "format":I
    const-string v2, "priority"

    .line 143
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 142
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 146
    .local v18, "priority":I
    const-string v2, "plmn"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 147
    .local v10, "plmnColumn":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "plmn":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v4    # "plmn":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "plmn":Ljava/lang/String;
    :goto_0
    move-object v9, v4

    .line 154
    .end local v4    # "plmn":Ljava/lang/String;
    .local v9, "plmn":Ljava/lang/String;
    const-string v4, "lac"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, "lacColumn":I
    if-eq v8, v3, :cond_1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .local v4, "lac":I
    goto :goto_1

    .line 158
    .end local v4    # "lac":I
    :cond_1
    move v4, v3

    .restart local v4    # "lac":I
    :goto_1
    move v7, v4

    .line 162
    .end local v4    # "lac":I
    .local v7, "lac":I
    const-string v4, "cid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 163
    .local v5, "cidColumn":I
    if-eq v5, v3, :cond_2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 164
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .local v4, "cid":I
    goto :goto_2

    .line 166
    .end local v4    # "cid":I
    :cond_2
    move v4, v3

    .line 169
    .restart local v4    # "cid":I
    :goto_2
    new-instance v6, Landroid/telephony/SmsCbLocation;

    invoke-direct {v6, v9, v7, v4}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 172
    .local v6, "location":Landroid/telephony/SmsCbLocation;
    const-string v11, "etws_warning_type"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 174
    .local v12, "etwsWarningTypeColumn":I
    if-eq v12, v3, :cond_3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 175
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 176
    .local v11, "warningType":I
    new-instance v25, Landroid/telephony/SmsCbEtwsInfo;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v25

    move/from16 v20, v11

    invoke-direct/range {v19 .. v24}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    .end local v11    # "warningType":I
    move-object/from16 v11, v25

    .line 177
    .local v11, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    goto :goto_3

    .line 178
    .end local v11    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    :cond_3
    const/4 v11, 0x0

    .line 182
    .restart local v11    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    :goto_3
    const-string v2, "cmas_message_class"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "cmasMessageClassColumn":I
    if-eq v2, v3, :cond_9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_9

    .line 185
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 188
    .local v19, "messageClass":I
    const-string v3, "cmas_category"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, "cmasCategoryColumn":I
    move/from16 v34, v2

    const/4 v2, -0x1

    if-eq v3, v2, :cond_4

    .end local v2    # "cmasMessageClassColumn":I
    .local v34, "cmasMessageClassColumn":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 191
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 193
    .local v2, "cmasCategory":I
    move/from16 v29, v2

    goto :goto_4

    .end local v2    # "cmasCategory":I
    :cond_4
    const/16 v29, -0x1

    .line 197
    .local v29, "cmasCategory":I
    :goto_4
    const-string v2, "cmas_response_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, "cmasResponseTypeColumn":I
    move/from16 v35, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .end local v3    # "cmasCategoryColumn":I
    .local v35, "cmasCategoryColumn":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 200
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 202
    .local v3, "responseType":I
    move/from16 v30, v3

    goto :goto_5

    .end local v3    # "responseType":I
    :cond_5
    const/16 v30, -0x1

    .line 206
    .local v30, "responseType":I
    :goto_5
    const-string v3, "cmas_severity"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "cmasSeverityColumn":I
    move/from16 v36, v2

    const/4 v2, -0x1

    if-eq v3, v2, :cond_6

    .end local v2    # "cmasResponseTypeColumn":I
    .local v36, "cmasResponseTypeColumn":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 209
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 211
    .local v2, "severity":I
    move/from16 v31, v2

    goto :goto_6

    .end local v2    # "severity":I
    :cond_6
    const/16 v31, -0x1

    .line 215
    .local v31, "severity":I
    :goto_6
    const-string v2, "cmas_urgency"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 217
    .local v2, "cmasUrgencyColumn":I
    move/from16 v37, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .end local v3    # "cmasSeverityColumn":I
    .local v37, "cmasSeverityColumn":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 218
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 220
    .local v3, "urgency":I
    move/from16 v32, v3

    goto :goto_7

    .end local v3    # "urgency":I
    :cond_7
    const/16 v32, -0x1

    .line 224
    .local v32, "urgency":I
    :goto_7
    const-string v3, "cmas_certainty"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 226
    .local v3, "cmasCertaintyColumn":I
    move/from16 v38, v2

    const/4 v2, -0x1

    if-eq v3, v2, :cond_8

    .end local v2    # "cmasUrgencyColumn":I
    .local v38, "cmasUrgencyColumn":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_8

    .line 227
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .local v2, "certainty":I
    goto :goto_8

    .line 229
    .end local v2    # "certainty":I
    :cond_8
    nop

    .local v33, "certainty":I
    :goto_8
    move/from16 v33, v2

    .line 232
    new-instance v2, Landroid/telephony/SmsCbCmasInfo;

    move-object/from16 v27, v2

    move/from16 v28, v19

    invoke-direct/range {v27 .. v33}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    .line 234
    .end local v3    # "cmasCertaintyColumn":I
    .end local v19    # "messageClass":I
    .end local v29    # "cmasCategory":I
    .end local v30    # "responseType":I
    .end local v31    # "severity":I
    .end local v32    # "urgency":I
    .end local v33    # "certainty":I
    .end local v35    # "cmasCategoryColumn":I
    .end local v36    # "cmasResponseTypeColumn":I
    .end local v37    # "cmasSeverityColumn":I
    .end local v38    # "cmasUrgencyColumn":I
    .local v2, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    goto :goto_9

    .line 235
    .end local v34    # "cmasMessageClassColumn":I
    .local v2, "cmasMessageClassColumn":I
    :cond_9
    move/from16 v34, v2

    .end local v2    # "cmasMessageClassColumn":I
    .restart local v34    # "cmasMessageClassColumn":I
    const/4 v2, 0x0

    .local v2, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    :goto_9
    move/from16 v19, v12

    move-object v12, v2

    .line 238
    .end local v2    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .local v12, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .local v19, "etwsWarningTypeColumn":I
    new-instance v20, Landroid/telephony/SmsCbMessage;

    move/from16 v21, v34

    move-object/from16 v2, v20

    .end local v34    # "cmasMessageClassColumn":I
    .local v21, "cmasMessageClassColumn":I
    move/from16 v3, v17

    move/from16 v22, v4

    move v4, v1

    .end local v4    # "cid":I
    .local v22, "cid":I
    move/from16 v23, v5

    move v5, v13

    .end local v5    # "cidColumn":I
    .local v23, "cidColumn":I
    move/from16 v24, v7

    move v7, v14

    .end local v7    # "lac":I
    .local v24, "lac":I
    move/from16 v25, v8

    move-object v8, v15

    .end local v8    # "lacColumn":I
    .local v25, "lacColumn":I
    move-object/from16 v26, v9

    move-object/from16 v9, v16

    .end local v9    # "plmn":Ljava/lang/String;
    .local v26, "plmn":Ljava/lang/String;
    move/from16 v27, v10

    move/from16 v10, v18

    .end local v10    # "plmnColumn":I
    .local v27, "plmnColumn":I
    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    .line 241
    .local v2, "msg":Landroid/telephony/SmsCbMessage;
    const-string v3, "date"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 243
    .local v3, "deliveryTime":J
    const-string v5, "read"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_a

    :cond_a
    const/4 v5, 0x0

    .line 246
    .local v5, "isRead":Z
    :goto_a
    new-instance v7, Landroid/telephony/CellBroadcastMessage;

    invoke-direct {v7, v2, v3, v4, v5}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/telephony/SmsCbMessage;JZ)V

    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getCmasMessageClass()I
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v0

    return v0

    .line 382
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .line 327
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 7

    .line 254
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 255
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 256
    .local v1, "msg":Landroid/telephony/SmsCbMessage;
    const-string v2, "geo_scope"

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getGeographicalScope()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v2

    .line 258
    .local v2, "location":Landroid/telephony/SmsCbLocation;
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 259
    const-string v3, "plmn"

    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 262
    const-string v3, "lac"

    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 265
    const-string v3, "cid"

    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    :cond_2
    const-string v3, "serial_number"

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v3, "service_category"

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v3, "language"

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, "body"

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v3, "date"

    iget-wide v4, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    const-string v3, "read"

    iget-boolean v4, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    const-string v3, "format"

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v3, "priority"

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    iget-object v3, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v3

    .line 277
    .local v3, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v3, :cond_3

    .line 278
    const-string v4, "etws_warning_type"

    invoke-virtual {v3}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    :cond_3
    iget-object v4, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v4

    .line 282
    .local v4, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    if-eqz v4, :cond_4

    .line 283
    const-string v5, "cmas_message_class"

    invoke-virtual {v4}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v5, "cmas_category"

    invoke-virtual {v4}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v5, "cmas_response_type"

    invoke-virtual {v4}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v5, "cmas_severity"

    invoke-virtual {v4}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v5, "cmas_urgency"

    invoke-virtual {v4}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v5, "cmas_certainty"

    invoke-virtual {v4}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    :cond_4
    return-object v0
.end method

.method public getDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 422
    const v0, 0x80b11

    .line 425
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-static {p1, v1, v2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeliveryTime()J
    .locals 2

    .line 311
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    return-wide v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .line 331
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getSpokenDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 434
    const/16 v0, 0x11

    .line 435
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-static {p1, v1, v2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSubId()I
    .locals 1

    .line 74
    iget v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    return v0
.end method

.method public isCmasMessage()Z
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v0

    return v0
.end method

.method public isEmergencyAlertMessage()Z
    .locals 1

    .line 354
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    return v0
.end method

.method public isEtwsEmergencyUserAlert()Z
    .locals 2

    .line 402
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    .line 403
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isEmergencyUserAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEtwsMessage()Z
    .locals 1

    .line 362
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v0

    return v0
.end method

.method public isEtwsPopupAlert()Z
    .locals 2

    .line 392
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    .line 393
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isPopupAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEtwsTestMessage()Z
    .locals 3

    .line 411
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    .line 412
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 412
    :goto_0
    return v1
.end method

.method public isPublicAlertMessage()Z
    .locals 1

    .line 344
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    return v0
.end method

.method public setIsRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    .line 299
    iput-boolean p1, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 300
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 65
    iput p1, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
