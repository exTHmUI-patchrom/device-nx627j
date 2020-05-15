.class public final Landroid/bluetooth/BluetoothHeadsetClientCall;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x0

.field public static final CALL_STATE_ALERTING:I = 0x3

.field public static final CALL_STATE_DIALING:I = 0x2

.field public static final CALL_STATE_HELD:I = 0x1

.field public static final CALL_STATE_HELD_BY_RESPONSE_AND_HOLD:I = 0x6

.field public static final CALL_STATE_INCOMING:I = 0x4

.field public static final CALL_STATE_TERMINATED:I = 0x7

.field public static final CALL_STATE_WAITING:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCreationElapsedMilli:J

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mId:I

.field private final mInBandRing:Z

.field private mMultiParty:Z

.field private mNumber:Ljava/lang/String;

.field private final mOutgoing:Z

.field private mState:I

.field private final mUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZZ)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z
    .param p7, "inBandRing"    # Z

    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "state"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "multiParty"    # Z
    .param p7, "outgoing"    # Z
    .param p8, "inBandRing"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 89
    iput p2, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    .line 90
    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    .line 91
    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    .line 92
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    .line 93
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    .line 94
    iput-boolean p7, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    .line 95
    iput-boolean p8, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    .line 97
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public getCreationElapsedMilli()J
    .locals 2

    .line 184
    iget-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    return-wide v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 166
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    return v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public isInBandRing()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    return v0
.end method

.method public isMultiParty()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    return v0
.end method

.method public setMultiParty(Z)V
    .locals 0
    .param p1, "multiParty"    # Z

    .line 129
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    .line 130
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 107
    iput p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "loggable"    # Z

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothHeadsetClientCall{mDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, ", mId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, ", mUUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 259
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 256
    :pswitch_0
    const-string v1, "TERMINATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    goto :goto_1

    .line 253
    :pswitch_1
    const-string v1, "HELD_BY_RESPONSE_AND_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    goto :goto_1

    .line 250
    :pswitch_2
    const-string v1, "WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    goto :goto_1

    .line 247
    :pswitch_3
    const-string v1, "INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    goto :goto_1

    .line 244
    :pswitch_4
    const-string v1, "ALERTING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    goto :goto_1

    .line 241
    :pswitch_5
    const-string v1, "DIALING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    goto :goto_1

    .line 238
    :pswitch_6
    const-string v1, "HELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    goto :goto_1

    .line 235
    :pswitch_7
    const-string v1, "ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    nop

    .line 262
    :goto_1
    const-string v1, ", mNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", mMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, ", mOutgoing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ", mInBandRing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 295
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 296
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return-void
.end method
