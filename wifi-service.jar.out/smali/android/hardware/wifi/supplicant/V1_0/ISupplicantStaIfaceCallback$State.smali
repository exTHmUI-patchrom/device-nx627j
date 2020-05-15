.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$State;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final ASSOCIATED:I = 0x6

.field public static final ASSOCIATING:I = 0x5

.field public static final AUTHENTICATING:I = 0x4

.field public static final COMPLETED:I = 0x9

.field public static final DISCONNECTED:I = 0x0

.field public static final FOURWAY_HANDSHAKE:I = 0x7

.field public static final GROUP_HANDSHAKE:I = 0x8

.field public static final IFACE_DISABLED:I = 0x1

.field public static final INACTIVE:I = 0x2

.field public static final SCANNING:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 178
    .local v1, "flipped":I
    const-string v2, "DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 180
    const-string v2, "IFACE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v1, v1, 0x1

    .line 183
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 184
    const-string v2, "INACTIVE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v1, v1, 0x2

    .line 187
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 188
    const-string v2, "SCANNING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0x3

    .line 191
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 192
    const-string v2, "AUTHENTICATING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0x4

    .line 195
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 196
    const-string v2, "ASSOCIATING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0x5

    .line 199
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 200
    const-string v2, "ASSOCIATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/lit8 v1, v1, 0x6

    .line 203
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 204
    const-string v2, "FOURWAY_HANDSHAKE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/lit8 v1, v1, 0x7

    .line 207
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 208
    const-string v2, "GROUP_HANDSHAKE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v1, v1, 0x8

    .line 211
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 212
    const-string v2, "COMPLETED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    or-int/lit8 v1, v1, 0x9

    .line 215
    :cond_8
    if-eq p0, v1, :cond_9

    .line 216
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

    .line 218
    :cond_9
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 142
    if-nez p0, :cond_0

    .line 143
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 146
    const-string v0, "IFACE_DISABLED"

    return-object v0

    .line 148
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 149
    const-string v0, "INACTIVE"

    return-object v0

    .line 151
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 152
    const-string v0, "SCANNING"

    return-object v0

    .line 154
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 155
    const-string v0, "AUTHENTICATING"

    return-object v0

    .line 157
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 158
    const-string v0, "ASSOCIATING"

    return-object v0

    .line 160
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 161
    const-string v0, "ASSOCIATED"

    return-object v0

    .line 163
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 164
    const-string v0, "FOURWAY_HANDSHAKE"

    return-object v0

    .line 166
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 167
    const-string v0, "GROUP_HANDSHAKE"

    return-object v0

    .line 169
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 170
    const-string v0, "COMPLETED"

    return-object v0

    .line 172
    :cond_9
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
