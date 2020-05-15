.class public final Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$EapErrorCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapErrorCode"
.end annotation


# static fields
.field public static final SIM_GENERAL_FAILURE_AFTER_AUTH:I = 0x0

.field public static final SIM_GENERAL_FAILURE_BEFORE_AUTH:I = 0x4000

.field public static final SIM_NOT_SUBSCRIBED:I = 0x407

.field public static final SIM_TEMPORARILY_DENIED:I = 0x402

.field public static final SIM_VENDOR_SPECIFIC_EXPIRED_CERT:I = 0x4001


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 91
    .local v1, "flipped":I
    const-string v2, "SIM_GENERAL_FAILURE_AFTER_AUTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    and-int/lit16 v2, p0, 0x402

    const/16 v3, 0x402

    if-ne v2, v3, :cond_0

    .line 93
    const-string v2, "SIM_TEMPORARILY_DENIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit16 v1, v1, 0x402

    .line 96
    :cond_0
    and-int/lit16 v2, p0, 0x407

    const/16 v3, 0x407

    if-ne v2, v3, :cond_1

    .line 97
    const-string v2, "SIM_NOT_SUBSCRIBED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit16 v1, v1, 0x407

    .line 100
    :cond_1
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_2

    .line 101
    const-string v2, "SIM_GENERAL_FAILURE_BEFORE_AUTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit16 v1, v1, 0x4000

    .line 104
    :cond_2
    and-int/lit16 v2, p0, 0x4001

    const/16 v3, 0x4001

    if-ne v2, v3, :cond_3

    .line 105
    const-string v2, "SIM_VENDOR_SPECIFIC_EXPIRED_CERT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit16 v1, v1, 0x4001

    .line 108
    :cond_3
    if-eq p0, v1, :cond_4

    .line 109
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

    .line 111
    :cond_4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v0, "SIM_GENERAL_FAILURE_AFTER_AUTH"

    return-object v0

    .line 73
    :cond_0
    const/16 v0, 0x402

    if-ne p0, v0, :cond_1

    .line 74
    const-string v0, "SIM_TEMPORARILY_DENIED"

    return-object v0

    .line 76
    :cond_1
    const/16 v0, 0x407

    if-ne p0, v0, :cond_2

    .line 77
    const-string v0, "SIM_NOT_SUBSCRIBED"

    return-object v0

    .line 79
    :cond_2
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_3

    .line 80
    const-string v0, "SIM_GENERAL_FAILURE_BEFORE_AUTH"

    return-object v0

    .line 82
    :cond_3
    const/16 v0, 0x4001

    if-ne p0, v0, :cond_4

    .line 83
    const-string v0, "SIM_VENDOR_SPECIFIC_EXPIRED_CERT"

    return-object v0

    .line 85
    :cond_4
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
