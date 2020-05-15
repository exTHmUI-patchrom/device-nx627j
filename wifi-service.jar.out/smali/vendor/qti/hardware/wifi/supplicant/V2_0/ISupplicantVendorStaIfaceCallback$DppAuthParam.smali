.class public final Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$DppAuthParam;
.super Ljava/lang/Object;
.source "ISupplicantVendorStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DppAuthParam"
.end annotation


# static fields
.field public static final CONNECTOR:B = 0x1t

.field public static final C_SIGN_KEY:B = 0x2t

.field public static final NET_ACCESS_KEY:B = 0x4t

.field public static final NET_ACCESS_KEY_EXPIRY:B = 0x8t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # B

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "flipped":B
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 85
    const-string v2, "CONNECTOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 88
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 89
    const-string v2, "C_SIGN_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 92
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 93
    const-string v2, "NET_ACCESS_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 96
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 97
    const-string v2, "NET_ACCESS_KEY_EXPIRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    .line 100
    :cond_3
    if-eq p0, v1, :cond_4

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(B)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # B

    .line 66
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 67
    const-string v0, "CONNECTOR"

    return-object v0

    .line 69
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 70
    const-string v0, "C_SIGN_KEY"

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 73
    const-string v0, "NET_ACCESS_KEY"

    return-object v0

    .line 75
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 76
    const-string v0, "NET_ACCESS_KEY_EXPIRY"

    return-object v0

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
