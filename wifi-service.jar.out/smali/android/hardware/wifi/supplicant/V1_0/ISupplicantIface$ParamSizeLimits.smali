.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$ParamSizeLimits;
.super Ljava/lang/Object;
.source "ISupplicantIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamSizeLimits"
.end annotation


# static fields
.field public static final WPS_DEVICE_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MANUFACTURER_MAX_LEN:I = 0x40

.field public static final WPS_MODEL_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MODEL_NUMBER_MAX_LEN:I = 0x20

.field public static final WPS_SERIAL_NUMBER_MAX_LEN:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5
    .param p0, "o"    # I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 90
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 91
    const-string v2, "WPS_DEVICE_NAME_MAX_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    or-int/lit8 v1, v1, 0x20

    .line 94
    :cond_0
    and-int/lit8 v2, p0, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_1

    .line 95
    const-string v2, "WPS_MANUFACTURER_MAX_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    or-int/lit8 v1, v1, 0x40

    .line 98
    :cond_1
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v3, :cond_2

    .line 99
    const-string v2, "WPS_MODEL_NAME_MAX_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    or-int/lit8 v1, v1, 0x20

    .line 102
    :cond_2
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v3, :cond_3

    .line 103
    const-string v2, "WPS_MODEL_NUMBER_MAX_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    or-int/lit8 v1, v1, 0x20

    .line 106
    :cond_3
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v3, :cond_4

    .line 107
    const-string v2, "WPS_SERIAL_NUMBER_MAX_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit8 v1, v1, 0x20

    .line 110
    :cond_4
    if-eq p0, v1, :cond_5

    .line 111
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

    .line 113
    :cond_5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 69
    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    .line 70
    const-string v0, "WPS_DEVICE_NAME_MAX_LEN"

    return-object v0

    .line 72
    :cond_0
    const/16 v1, 0x40

    if-ne p0, v1, :cond_1

    .line 73
    const-string v0, "WPS_MANUFACTURER_MAX_LEN"

    return-object v0

    .line 75
    :cond_1
    if-ne p0, v0, :cond_2

    .line 76
    const-string v0, "WPS_MODEL_NAME_MAX_LEN"

    return-object v0

    .line 78
    :cond_2
    if-ne p0, v0, :cond_3

    .line 79
    const-string v0, "WPS_MODEL_NUMBER_MAX_LEN"

    return-object v0

    .line 81
    :cond_3
    if-ne p0, v0, :cond_4

    .line 82
    const-string v0, "WPS_SERIAL_NUMBER_MAX_LEN"

    return-object v0

    .line 84
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
