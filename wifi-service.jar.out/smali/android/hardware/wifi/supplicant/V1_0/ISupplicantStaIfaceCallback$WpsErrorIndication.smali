.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$WpsErrorIndication;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsErrorIndication"
.end annotation


# static fields
.field public static final AUTH_FAILURE:S = 0x3s

.field public static final NO_ERROR:S = 0x0s

.field public static final SECURITY_TKIP_ONLY_PROHIBITED:S = 0x1s

.field public static final SECURITY_WEP_PROHIBITED:S = 0x2s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # S

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 952
    .local v1, "flipped":S
    const-string v2, "NO_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 954
    const-string v2, "SECURITY_TKIP_ONLY_PROHIBITED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 957
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 958
    const-string v2, "SECURITY_WEP_PROHIBITED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 961
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 962
    const-string v2, "AUTH_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    or-int/lit8 v2, v1, 0x3

    int-to-short v1, v2

    .line 965
    :cond_2
    if-eq p0, v1, :cond_3

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_3
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # S

    .line 934
    if-nez p0, :cond_0

    .line 935
    const-string v0, "NO_ERROR"

    return-object v0

    .line 937
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 938
    const-string v0, "SECURITY_TKIP_ONLY_PROHIBITED"

    return-object v0

    .line 940
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 941
    const-string v0, "SECURITY_WEP_PROHIBITED"

    return-object v0

    .line 943
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 944
    const-string v0, "AUTH_FAILURE"

    return-object v0

    .line 946
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
