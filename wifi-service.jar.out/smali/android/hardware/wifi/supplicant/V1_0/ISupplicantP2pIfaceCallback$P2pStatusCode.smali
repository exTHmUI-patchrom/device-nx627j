.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$P2pStatusCode;
.super Ljava/lang/Object;
.source "ISupplicantP2pIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P2pStatusCode"
.end annotation


# static fields
.field public static final FAIL_BOTH_GO_INTENT_15:I = 0x9

.field public static final FAIL_INCOMPATIBLE_PARAMS:I = 0x2

.field public static final FAIL_INCOMPATIBLE_PROV_METHOD:I = 0xa

.field public static final FAIL_INFO_CURRENTLY_UNAVAILABLE:I = 0x1

.field public static final FAIL_INVALID_PARAMS:I = 0x4

.field public static final FAIL_LIMIT_REACHED:I = 0x3

.field public static final FAIL_NO_COMMON_CHANNELS:I = 0x7

.field public static final FAIL_PREV_PROTOCOL_ERROR:I = 0x6

.field public static final FAIL_REJECTED_BY_USER:I = 0xb

.field public static final FAIL_UNABLE_TO_ACCOMMODATE:I = 0x5

.field public static final FAIL_UNKNOWN_GROUP:I = 0x8

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_DEFERRED:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, "flipped":I
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 208
    const-string v2, "FAIL_INFO_CURRENTLY_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v1, v1, 0x1

    .line 211
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 212
    const-string v2, "FAIL_INCOMPATIBLE_PARAMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    or-int/lit8 v1, v1, 0x2

    .line 215
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 216
    const-string v2, "FAIL_LIMIT_REACHED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    or-int/lit8 v1, v1, 0x3

    .line 219
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 220
    const-string v2, "FAIL_INVALID_PARAMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    or-int/lit8 v1, v1, 0x4

    .line 223
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 224
    const-string v2, "FAIL_UNABLE_TO_ACCOMMODATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    or-int/lit8 v1, v1, 0x5

    .line 227
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 228
    const-string v2, "FAIL_PREV_PROTOCOL_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    or-int/lit8 v1, v1, 0x6

    .line 231
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 232
    const-string v2, "FAIL_NO_COMMON_CHANNELS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    or-int/lit8 v1, v1, 0x7

    .line 235
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 236
    const-string v2, "FAIL_UNKNOWN_GROUP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    or-int/lit8 v1, v1, 0x8

    .line 239
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 240
    const-string v2, "FAIL_BOTH_GO_INTENT_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    or-int/lit8 v1, v1, 0x9

    .line 243
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 244
    const-string v2, "FAIL_INCOMPATIBLE_PROV_METHOD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    or-int/lit8 v1, v1, 0xa

    .line 247
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 248
    const-string v2, "FAIL_REJECTED_BY_USER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    or-int/lit8 v1, v1, 0xb

    .line 251
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 252
    const-string v2, "SUCCESS_DEFERRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    or-int/lit8 v1, v1, 0xc

    .line 255
    :cond_b
    if-eq p0, v1, :cond_c

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 161
    if-nez p0, :cond_0

    .line 162
    const-string v0, "SUCCESS"

    return-object v0

    .line 164
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 165
    const-string v0, "FAIL_INFO_CURRENTLY_UNAVAILABLE"

    return-object v0

    .line 167
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 168
    const-string v0, "FAIL_INCOMPATIBLE_PARAMS"

    return-object v0

    .line 170
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 171
    const-string v0, "FAIL_LIMIT_REACHED"

    return-object v0

    .line 173
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 174
    const-string v0, "FAIL_INVALID_PARAMS"

    return-object v0

    .line 176
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 177
    const-string v0, "FAIL_UNABLE_TO_ACCOMMODATE"

    return-object v0

    .line 179
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 180
    const-string v0, "FAIL_PREV_PROTOCOL_ERROR"

    return-object v0

    .line 182
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 183
    const-string v0, "FAIL_NO_COMMON_CHANNELS"

    return-object v0

    .line 185
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 186
    const-string v0, "FAIL_UNKNOWN_GROUP"

    return-object v0

    .line 188
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 189
    const-string v0, "FAIL_BOTH_GO_INTENT_15"

    return-object v0

    .line 191
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 192
    const-string v0, "FAIL_INCOMPATIBLE_PROV_METHOD"

    return-object v0

    .line 194
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 195
    const-string v0, "FAIL_REJECTED_BY_USER"

    return-object v0

    .line 197
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 198
    const-string v0, "SUCCESS_DEFERRED"

    return-object v0

    .line 200
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
