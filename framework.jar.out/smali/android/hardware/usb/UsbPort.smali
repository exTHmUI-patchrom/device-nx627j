.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;
.source "UsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbPort;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_ROLE_DEVICE:I = 0x2

.field public static final DATA_ROLE_HOST:I = 0x1

.field public static final DATA_ROLE_NONE:I = 0x0

.field public static final MODE_AUDIO_ACCESSORY:I = 0x4

.field public static final MODE_DEBUG_ACCESSORY:I = 0x8

.field public static final MODE_DFP:I = 0x2

.field public static final MODE_DUAL:I = 0x3

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_UFP:I = 0x1

.field private static final NUM_DATA_ROLES:I = 0x3

.field public static final POWER_ROLE_NONE:I = 0x0

.field private static final POWER_ROLE_OFFSET:I = 0x0

.field public static final POWER_ROLE_SINK:I = 0x2

.field public static final POWER_ROLE_SOURCE:I = 0x1


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSupportedModes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 291
    new-instance v0, Landroid/hardware/usb/UsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    .line 118
    iput p2, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    .line 119
    return-void
.end method

.method public static checkDataRole(I)V
    .locals 3
    .param p0, "mode"    # I

    .line 257
    const-string/jumbo v0, "powerRole"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 259
    return-void
.end method

.method public static checkMode(I)V
    .locals 3
    .param p0, "powerRole"    # I

    .line 245
    const-string/jumbo v0, "portMode"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 247
    return-void
.end method

.method public static checkPowerRole(I)V
    .locals 3
    .param p0, "dataRole"    # I

    .line 251
    const-string/jumbo v0, "powerRole"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 253
    return-void
.end method

.method public static checkRoles(II)V
    .locals 3
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .line 263
    const-string/jumbo v0, "powerRole"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 265
    const-string v0, "dataRole"

    invoke-static {p1, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 266
    return-void
.end method

.method public static combineRolesAsBit(II)I
    .locals 2
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .line 156
    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 157
    add-int/lit8 v0, p0, 0x0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    .line 158
    .local v0, "index":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    return v1
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .line 206
    packed-switch p0, :pswitch_data_0

    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :pswitch_0
    const-string v0, "device"

    return-object v0

    .line 210
    :pswitch_1
    const-string v0, "host"

    return-object v0

    .line 208
    :pswitch_2
    const-string/jumbo v0, "no-data"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "mode"    # I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "modeString":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 165
    const-string/jumbo v1, "none"

    return-object v1

    .line 168
    :cond_0
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 169
    const-string v1, "dual, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_2

    .line 172
    const-string v1, "dfp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :cond_2
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 174
    const-string/jumbo v1, "ufp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_3
    :goto_0
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 178
    const-string v1, "audio_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_4
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 181
    const-string v1, "debug_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static powerRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_0
    const-string/jumbo v0, "sink"

    return-object v0

    .line 196
    :pswitch_1
    const-string/jumbo v0, "source"

    return-object v0

    .line 194
    :pswitch_2
    const-string/jumbo v0, "no-power"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static roleCombinationsToString(I)Ljava/lang/String;
    .locals 7
    .param p0, "combo"    # I

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/4 v1, 0x1

    move v2, p0

    move p0, v1

    .line 224
    .local v2, "combo":I
    .local p0, "first":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .line 226
    .local v3, "index":I
    shl-int v4, v1, v3

    not-int v4, v4

    and-int/2addr v2, v4

    .line 227
    div-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    .line 228
    .local v4, "powerRole":I
    rem-int/lit8 v5, v3, 0x3

    .line 229
    .local v5, "dataRole":I
    if-eqz p0, :cond_0

    .line 230
    const/4 p0, 0x0

    goto :goto_1

    .line 232
    :cond_0
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_1
    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .end local v3    # "index":I
    .end local v4    # "powerRole":I
    .end local v5    # "dataRole":I
    goto :goto_0

    .line 239
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedModes()I
    .locals 1

    .line 140
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return v0
.end method

.method public isModeSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 270
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPort{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    return-void
.end method
