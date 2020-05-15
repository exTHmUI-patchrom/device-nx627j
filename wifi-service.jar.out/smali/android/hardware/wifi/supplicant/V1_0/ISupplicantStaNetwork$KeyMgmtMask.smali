.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$KeyMgmtMask;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyMgmtMask"
.end annotation


# static fields
.field public static final FT_EAP:I = 0x20

.field public static final FT_PSK:I = 0x40

.field public static final IEEE8021X:I = 0x8

.field public static final NONE:I = 0x4

.field public static final OSEN:I = 0x8000

.field public static final WPA_EAP:I = 0x1

.field public static final WPA_PSK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 176
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 177
    const-string v2, "WPA_EAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x1

    .line 180
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 181
    const-string v2, "WPA_PSK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0x2

    .line 184
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 185
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v1, v1, 0x4

    .line 188
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 189
    const-string v2, "IEEE8021X"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v1, v1, 0x8

    .line 192
    :cond_3
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 193
    const-string v2, "FT_EAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v1, v1, 0x20

    .line 196
    :cond_4
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 197
    const-string v2, "FT_PSK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v1, v1, 0x40

    .line 200
    :cond_5
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    .line 201
    const-string v3, "OSEN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/2addr v1, v2

    .line 204
    :cond_6
    if-eq p0, v1, :cond_7

    .line 205
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

    .line 207
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 149
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 150
    const-string v0, "WPA_EAP"

    return-object v0

    .line 152
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 153
    const-string v0, "WPA_PSK"

    return-object v0

    .line 155
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 156
    const-string v0, "NONE"

    return-object v0

    .line 158
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 159
    const-string v0, "IEEE8021X"

    return-object v0

    .line 161
    :cond_3
    const/16 v0, 0x20

    if-ne p0, v0, :cond_4

    .line 162
    const-string v0, "FT_EAP"

    return-object v0

    .line 164
    :cond_4
    const/16 v0, 0x40

    if-ne p0, v0, :cond_5

    .line 165
    const-string v0, "FT_PSK"

    return-object v0

    .line 167
    :cond_5
    const v0, 0x8000

    if-ne p0, v0, :cond_6

    .line 168
    const-string v0, "OSEN"

    return-object v0

    .line 170
    :cond_6
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
