.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ApnSetting"

.field static final TAG:Ljava/lang/String; = "ApnSetting"

.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"

.field static final V4_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV4\\]\\s*"

.field static final V5_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV5\\]\\s*"

.field private static final VDBG:Z = false


# instance fields
.field public final apn:Ljava/lang/String;

.field public final apnSetId:I

.field public final authType:I

.field private final bearer:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final bearerBitmask:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final modemCognitive:Z

.field public final mtu:I

.field public final mvnoMatchData:Ljava/lang/String;

.field public final mvnoType:Ljava/lang/String;

.field public final networkTypeBitmask:I

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public permanentFailed:Z

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public final types:[Ljava/lang/String;

.field public final typesBitmap:I

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearerBitmask"    # I
    .param p19, "profileId"    # I
    .param p20, "modemCognitive"    # Z
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConnsTime"    # I
    .param p24, "mtu"    # I
    .param p25, "mvnoType"    # Ljava/lang/String;
    .param p26, "mvnoMatchData"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 162
    move/from16 v3, p1

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 163
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 164
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 165
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 166
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 167
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 168
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 169
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 170
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 171
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 172
    move-object/from16 v13, p11

    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 173
    move/from16 v14, p12

    iput v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 174
    array-length v15, v1

    new-array v15, v15, [Ljava/lang/String;

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 175
    const/4 v15, 0x0

    .line 176
    .local v15, "apnBitmap":I
    move/from16 v17, v15

    move v15, v2

    move/from16 v2, v17

    .local v2, "apnBitmap":I
    .local v15, "i":I
    :goto_0
    array-length v3, v1

    if-ge v15, v3, :cond_0

    .line 177
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v1, v15

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    .line 178
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getApnBitmask(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    .line 176
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_0

    .line 180
    .end local v15    # "i":I
    :cond_0
    iput v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    .line 181
    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 182
    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 183
    move/from16 v15, p16

    iput-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 184
    move/from16 v1, p17

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 185
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v16

    or-int v1, p18, v16

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    .line 186
    move/from16 v1, p19

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 187
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 188
    move/from16 v1, p21

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 189
    move/from16 v1, p22

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 190
    move/from16 v1, p23

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 191
    move/from16 v1, p24

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 192
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 193
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 194
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    .line 195
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    .line 197
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "networkTypeBitmask"    # I
    .param p18, "profileId"    # I
    .param p19, "modemCognitive"    # Z
    .param p20, "maxConns"    # I
    .param p21, "waitTime"    # I
    .param p22, "maxConnsTime"    # I
    .param p23, "mtu"    # I
    .param p24, "mvnoType"    # Ljava/lang/String;
    .param p25, "mvnoMatchData"    # Ljava/lang/String;

    .line 208
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    invoke-direct/range {v0 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "networkTypeBitmask"    # I
    .param p18, "profileId"    # I
    .param p19, "modemCognitive"    # Z
    .param p20, "maxConns"    # I
    .param p21, "waitTime"    # I
    .param p22, "maxConnsTime"    # I
    .param p23, "mtu"    # I
    .param p24, "mvnoType"    # Ljava/lang/String;
    .param p25, "mvnoMatchData"    # Ljava/lang/String;
    .param p26, "apnSetId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 222
    move/from16 v3, p1

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 223
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 224
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 225
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 226
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 227
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 228
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 229
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 230
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 231
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 232
    move-object/from16 v13, p11

    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 233
    move/from16 v14, p12

    iput v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 234
    array-length v15, v1

    new-array v15, v15, [Ljava/lang/String;

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 235
    const/4 v15, 0x0

    .line 236
    .local v15, "apnBitmap":I
    move/from16 v16, v15

    move v15, v2

    move/from16 v2, v16

    .local v2, "apnBitmap":I
    .local v15, "i":I
    :goto_0
    array-length v3, v1

    if-ge v15, v3, :cond_0

    .line 237
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v1, v15

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    .line 238
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getApnBitmask(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    .line 236
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_0

    .line 240
    .end local v15    # "i":I
    :cond_0
    iput v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    .line 241
    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 242
    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 243
    move/from16 v15, p16

    iput-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 244
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 245
    nop

    .line 246
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    .line 247
    move/from16 v1, p17

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    .line 248
    move/from16 v1, p18

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 249
    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 250
    move/from16 v1, p20

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 251
    move/from16 v1, p21

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 252
    move/from16 v1, p22

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 253
    move/from16 v1, p23

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 254
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 255
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 256
    move/from16 v1, p26

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    .line 257
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 39
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 260
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v28, v15

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v29, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    move/from16 v30, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    move/from16 v31, v15

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v32, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    move/from16 v33, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    move/from16 v34, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    move/from16 v35, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    move/from16 v36, v15

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    move-object/from16 v38, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 v27, v15

    move/from16 v17, v29

    move/from16 v18, v30

    move/from16 v19, v31

    move/from16 v20, v32

    move/from16 v21, v33

    move/from16 v22, v34

    move/from16 v23, v35

    move/from16 v24, v36

    move-object/from16 v25, v37

    move-object/from16 v26, v38

    move-object/from16 v15, v28

    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public static arrayFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    return-object v0

    .line 426
    :cond_0
    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "apnStrings":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 428
    .local v4, "apnString":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    .line 429
    .local v5, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v5, :cond_1

    .line 430
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v4    # "apnString":Ljava/lang/String;
    .end local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    :cond_2
    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 46
    .param p0, "data"    # Ljava/lang/String;

    .line 310
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 314
    :cond_0
    const-string v2, "^\\[ApnSettingV5\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 315
    const/4 v2, 0x5

    .line 316
    .local v2, "version":I
    const-string v4, "^\\[ApnSettingV5\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .end local p0    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    .local v4, "data":Ljava/lang/String;
    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 317
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "version":I
    .end local v4    # "data":Ljava/lang/String;
    .restart local p0    # "data":Ljava/lang/String;
    :cond_1
    const-string v2, "^\\[ApnSettingV4\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    const/4 v2, 0x4

    .line 319
    .restart local v2    # "version":I
    const-string v4, "^\\[ApnSettingV4\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    .end local v2    # "version":I
    :cond_2
    const-string v2, "^\\[ApnSettingV3\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    const/4 v2, 0x3

    .line 322
    .restart local v2    # "version":I
    const-string v4, "^\\[ApnSettingV3\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    .end local v2    # "version":I
    :cond_3
    const-string v2, "^\\[ApnSettingV2\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    const/4 v2, 0x2

    .line 325
    .restart local v2    # "version":I
    const-string v4, "^\\[ApnSettingV2\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    .end local v2    # "version":I
    :cond_4
    move-object v4, v0

    move v2, v3

    .line 330
    .end local p0    # "data":Ljava/lang/String;
    .restart local v2    # "version":I
    .restart local v4    # "data":Ljava/lang/String;
    :goto_1
    const-string v0, "\\s*,\\s*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "a":[Ljava/lang/String;
    array-length v0, v5

    const/16 v6, 0xe

    if-ge v0, v6, :cond_5

    .line 332
    return-object v1

    .line 337
    :cond_5
    const/16 v0, 0xc

    const/4 v7, 0x0

    :try_start_0
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .local v0, "authType":I
    nop

    .line 339
    move/from16 v20, v0

    goto :goto_2

    .line 338
    .end local v0    # "authType":I
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    move/from16 v20, v7

    .line 345
    .local v20, "authType":I
    :goto_2
    const/4 v0, 0x0

    .line 346
    .local v0, "bearerBitmask":I
    const/4 v8, 0x0

    .line 347
    .local v8, "networkTypeBitmask":I
    const/4 v9, 0x0

    .line 348
    .local v9, "profileId":I
    const/4 v10, 0x0

    .line 349
    .local v10, "modemCognitive":Z
    const/4 v11, 0x0

    .line 350
    .local v11, "maxConns":I
    const/4 v12, 0x0

    .line 351
    .local v12, "waitTime":I
    const/4 v13, 0x0

    .line 352
    .local v13, "maxConnsTime":I
    const/4 v14, 0x0

    .line 353
    .local v14, "mtu":I
    const-string v15, ""

    .line 354
    .local v15, "mvnoType":Ljava/lang/String;
    const-string v16, ""

    .line 355
    .local v16, "mvnoMatchData":Ljava/lang/String;
    const/16 v17, 0x0

    .line 356
    .local v17, "apnSetId":I
    const/16 v6, 0xd

    if-ne v2, v3, :cond_6

    .line 357
    array-length v1, v5

    sub-int/2addr v1, v6

    new-array v1, v1, [Ljava/lang/String;

    .line 358
    .local v1, "typeArray":[Ljava/lang/String;
    array-length v3, v5

    sub-int/2addr v3, v6

    invoke-static {v5, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    const-string v3, "IP"

    .line 360
    .local v3, "protocol":Ljava/lang/String;
    const-string v6, "IP"

    .line 361
    .local v6, "roamingProtocol":Ljava/lang/String;
    const/16 v18, 0x1

    .line 403
    .local v18, "carrierEnabled":Z
    move-object/from16 v38, v1

    move v1, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v39, v13

    move/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v42, v16

    move/from16 v43, v17

    move/from16 v7, v18

    goto/16 :goto_6

    .line 363
    .end local v1    # "typeArray":[Ljava/lang/String;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v6    # "roamingProtocol":Ljava/lang/String;
    .end local v18    # "carrierEnabled":Z
    :cond_6
    array-length v3, v5

    const/16 v7, 0x12

    if-ge v3, v7, :cond_7

    .line 364
    return-object v1

    .line 366
    :cond_7
    aget-object v1, v5, v6

    const-string v3, "\\s*\\|\\s*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 367
    .restart local v1    # "typeArray":[Ljava/lang/String;
    const/16 v3, 0xe

    aget-object v3, v5, v3

    .line 368
    .restart local v3    # "protocol":Ljava/lang/String;
    const/16 v6, 0xf

    aget-object v6, v5, v6

    .line 369
    .restart local v6    # "roamingProtocol":Ljava/lang/String;
    const/16 v18, 0x10

    aget-object v7, v5, v18

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 371
    .local v7, "carrierEnabled":Z
    const/16 v18, 0x11

    move/from16 v37, v0

    aget-object v0, v5, v18

    .end local v0    # "bearerBitmask":I
    .local v37, "bearerBitmask":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v18

    .line 373
    .end local v37    # "bearerBitmask":I
    .local v18, "bearerBitmask":I
    array-length v0, v5

    move-object/from16 v38, v1

    const/16 v1, 0x16

    .end local v1    # "typeArray":[Ljava/lang/String;
    .local v38, "typeArray":[Ljava/lang/String;
    if-le v0, v1, :cond_8

    .line 374
    const/16 v0, 0x13

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 376
    const/16 v0, 0x12

    :try_start_1
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    .line 377
    const/16 v0, 0x14

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 378
    const/16 v0, 0x15

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 379
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v13, v0

    .line 381
    goto :goto_3

    .line 380
    :catch_1
    move-exception v0

    .line 383
    :cond_8
    :goto_3
    array-length v0, v5

    const/16 v1, 0x17

    if-le v0, v1, :cond_9

    .line 385
    :try_start_2
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v14, v0

    .line 387
    goto :goto_4

    .line 386
    :catch_2
    move-exception v0

    .line 389
    :cond_9
    :goto_4
    array-length v0, v5

    const/16 v1, 0x19

    if-le v0, v1, :cond_a

    .line 390
    const/16 v0, 0x18

    aget-object v15, v5, v0

    .line 391
    aget-object v16, v5, v1

    .line 393
    :cond_a
    array-length v0, v5

    const/16 v1, 0x1a

    if-le v0, v1, :cond_b

    .line 394
    aget-object v0, v5, v1

    invoke-static {v0}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v0

    .line 396
    .end local v8    # "networkTypeBitmask":I
    .local v0, "networkTypeBitmask":I
    move v8, v0

    .end local v0    # "networkTypeBitmask":I
    .restart local v8    # "networkTypeBitmask":I
    :cond_b
    array-length v0, v5

    const/16 v1, 0x1b

    if-le v0, v1, :cond_c

    .line 397
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    .end local v17    # "apnSetId":I
    .local v0, "apnSetId":I
    move/from16 v43, v0

    move v1, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v39, v13

    move/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v42, v16

    goto :goto_5

    .end local v0    # "apnSetId":I
    .restart local v17    # "apnSetId":I
    :cond_c
    move v1, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v39, v13

    move/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v42, v16

    move/from16 v43, v17

    .end local v9    # "profileId":I
    .end local v10    # "modemCognitive":Z
    .end local v11    # "maxConns":I
    .end local v12    # "waitTime":I
    .end local v13    # "maxConnsTime":I
    .end local v14    # "mtu":I
    .end local v15    # "mvnoType":Ljava/lang/String;
    .end local v16    # "mvnoMatchData":Ljava/lang/String;
    .end local v17    # "apnSetId":I
    .end local v18    # "bearerBitmask":I
    .local v0, "bearerBitmask":I
    .local v1, "profileId":I
    .local v35, "modemCognitive":Z
    .local v36, "maxConns":I
    .local v37, "waitTime":I
    .local v39, "maxConnsTime":I
    .local v40, "mtu":I
    .local v41, "mvnoType":Ljava/lang/String;
    .local v42, "mvnoMatchData":Ljava/lang/String;
    .local v43, "apnSetId":I
    :goto_5
    move/from16 v0, v18

    :goto_6
    if-nez v8, :cond_d

    .line 404
    nop

    .line 405
    invoke-static {v0}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v8

    .line 407
    .end local v8    # "networkTypeBitmask":I
    .local v44, "networkTypeBitmask":I
    :cond_d
    move/from16 v44, v8

    new-instance v45, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v9, -0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0xa

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xb

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    aget-object v11, v5, v8

    const/4 v8, 0x1

    aget-object v12, v5, v8

    const/4 v8, 0x2

    aget-object v13, v5, v8

    const/4 v8, 0x3

    aget-object v14, v5, v8

    const/4 v8, 0x7

    aget-object v15, v5, v8

    const/16 v8, 0x8

    aget-object v16, v5, v8

    const/16 v8, 0x9

    aget-object v17, v5, v8

    const/4 v8, 0x4

    aget-object v18, v5, v8

    const/4 v8, 0x5

    aget-object v19, v5, v8

    move-object/from16 v8, v45

    move-object/from16 v21, v38

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v44

    move/from16 v26, v1

    move/from16 v27, v35

    move/from16 v28, v36

    move/from16 v29, v37

    move/from16 v30, v39

    move/from16 v31, v40

    move-object/from16 v32, v41

    move-object/from16 v33, v42

    move/from16 v34, v43

    invoke-direct/range {v8 .. v34}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V

    return-object v45
.end method

.method private static getApnBitmask(Ljava/lang/String;)I
    .locals 6
    .param p0, "apn"    # Ljava/lang/String;

    .line 817
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "emergency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "hipri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "supl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "fota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_6
    const-string v0, "ims"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "dun"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "cbs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "ia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_a
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 829
    return v5

    .line 828
    :pswitch_0
    const/16 v0, 0x3ff

    return v0

    .line 827
    :pswitch_1
    const/16 v0, 0x200

    return v0

    .line 826
    :pswitch_2
    const/16 v0, 0x100

    return v0

    .line 825
    :pswitch_3
    const/16 v0, 0x80

    return v0

    .line 824
    :pswitch_4
    const/16 v0, 0x40

    return v0

    .line 823
    :pswitch_5
    const/16 v0, 0x20

    return v0

    .line 822
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 821
    :pswitch_7
    return v1

    .line 820
    :pswitch_8
    return v4

    .line 819
    :pswitch_9
    return v3

    .line 818
    :pswitch_a
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_a
        0xd18 -> :sswitch_9
        0x17ff4 -> :sswitch_8
        0x185fd -> :sswitch_7
        0x197cf -> :sswitch_6
        0x1a6d3 -> :sswitch_5
        0x300cf6 -> :sswitch_4
        0x360bde -> :sswitch_3
        0x5eafa06 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

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

.method private static iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mvnoData"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;

    .line 499
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "mvnoIccidList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 501
    .local v4, "mvnoIccid":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 502
    const-string v1, "ApnSetting"

    const-string v2, "mvno icc id match found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v1, 0x1

    return v1

    .line 500
    .end local v4    # "mvnoIccid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    :cond_1
    return v2
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 517
    .local v0, "len":I
    const/4 v1, 0x0

    .line 519
    .local v1, "idxCompare":I
    const/4 v2, 0x0

    if-gtz v0, :cond_0

    return v2

    .line 520
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_1

    return v2

    .line 522
    :cond_1
    move v3, v2

    .local v3, "idx":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 523
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 524
    .local v4, "c":C
    const/16 v5, 0x78

    if-eq v4, v5, :cond_3

    const/16 v5, 0x58

    if-eq v4, v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    .line 525
    goto :goto_1

    .line 527
    :cond_2
    return v2

    .line 522
    .end local v4    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 530
    .end local v3    # "idx":I
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public static isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 11
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 569
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 570
    return v0

    .line 573
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 574
    .local v1, "isRoaming":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 576
    .local v2, "isIwlan":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 582
    .local v3, "subId":I
    if-eqz v2, :cond_2

    .line 583
    const-string v5, "carrier_metered_iwlan_apn_types_strings"

    .local v5, "carrierConfig":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 584
    .end local v5    # "carrierConfig":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 585
    const-string v5, "carrier_metered_roaming_apn_types_strings"

    goto :goto_1

    .line 587
    :cond_3
    const-string v5, "carrier_metered_apn_types_strings"

    .line 594
    .restart local v5    # "carrierConfig":Ljava/lang/String;
    :goto_2
    nop

    .line 595
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "carrier_config"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 596
    .local v6, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v6, :cond_4

    .line 597
    const-string v4, "ApnSetting"

    const-string v7, "Carrier config service is not available"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return v0

    .line 601
    :cond_4
    invoke-virtual {v6, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 602
    .local v7, "b":Landroid/os/PersistableBundle;
    if-nez v7, :cond_5

    .line 603
    const-string v4, "ApnSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t get the config. subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return v0

    .line 607
    :cond_5
    invoke-virtual {v7, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, "meteredApnTypes":[Ljava/lang/String;
    if-nez v8, :cond_6

    .line 609
    const-string v4, "ApnSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not available. subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return v0

    .line 613
    :cond_6
    new-instance v9, Ljava/util/HashSet;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 620
    .local v9, "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 622
    return v0

    .line 625
    :cond_7
    invoke-virtual {v9, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 627
    return v0

    .line 628
    :cond_8
    const-string v10, "*"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 631
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 633
    return v0

    .line 638
    :cond_9
    return v4
.end method

.method public static mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "mvnoType"    # Ljava/lang/String;
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .line 534
    const-string v0, "spn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 536
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 537
    return v2

    .line 539
    :cond_0
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "imsiSIM":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    return v2

    .line 544
    .end local v0    # "imsiSIM":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :cond_2
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 547
    .local v3, "mvno_match_data_length":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v3, :cond_3

    .line 548
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 549
    return v2

    .line 551
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v3    # "mvno_match_data_length":I
    :cond_3
    goto :goto_0

    :cond_4
    const-string v0, "iccid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 554
    return v2

    .line 558
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_5
    :goto_0
    return v1
.end method

.method private typeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 5
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 793
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index1":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 794
    move v2, v0

    .local v2, "index2":I
    :goto_1
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 795
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "*"

    .line 796
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 797
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 794
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 799
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 793
    .end local v2    # "index2":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    .end local v1    # "index1":I
    :cond_3
    return v0
.end method

.method private xorEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .line 810
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 810
    :goto_1
    return v0
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .line 483
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 484
    :cond_0
    const/4 v0, 0x1

    .line 485
    .local v0, "wildcardable":Z
    const-string v2, "ia"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 488
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v0, :cond_2

    const-string v6, "*"

    .line 489
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    const-string v6, "default"

    .line 490
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "hipri"

    .line 491
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 486
    .end local v5    # "t":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 492
    .restart local v5    # "t":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 495
    .end local v5    # "t":Ljava/lang/String;
    :cond_5
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 665
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 666
    return v1

    .line 669
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 671
    .local v0, "other":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 675
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 676
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 677
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 678
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 679
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 680
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 681
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 683
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 686
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 696
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 697
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    .line 671
    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "isDataRoaming"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 715
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 716
    return v1

    .line 719
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 721
    .local v0, "other":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 722
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 723
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 725
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 726
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 727
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 728
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 729
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 730
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 732
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 734
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 735
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    nop

    .line 721
    :cond_3
    return v1
.end method

.method public hasMvnoParams()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMetered(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 648
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 649
    return v0

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 654
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 655
    return v0

    .line 652
    .end local v5    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 658
    :cond_2
    return v3
.end method

.method public similar(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 755
    const-string v0, "dun"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    .line 756
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 757
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-direct {p0, p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 759
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 760
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 761
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 762
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 766
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 767
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 768
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 769
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 770
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ApnSettingV5] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 453
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "i":I
    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
